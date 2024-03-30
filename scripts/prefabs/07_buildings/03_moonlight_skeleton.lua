---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    客制化 骷髅
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local assets =
{
    Asset("ANIM", "anim/moonlightcoda_building_skeleton.zip"),
}
---------------------------------------------------------------------------------------------------------------------------------------------
    local function getdesc(inst, viewer)
        if inst.char ~= nil and not viewer:HasTag("playerghost") then
            local mod = GetGenderStrings(inst.char)
            local desc = GetDescription(viewer, inst, mod)
            local name = inst.playername or STRINGS.NAMES[string.upper(inst.char)]

            --no translations for player killer's name
            if inst.pkname ~= nil then
                return string.format(desc, name, inst.pkname)
            end

            --permanent translations for death cause
            if inst.cause == "unknown" then
                inst.cause = "shenanigans"
            elseif inst.cause == "moose" then
                inst.cause = math.random() < .5 and "moose1" or "moose2"
            end

            --viewer based temp translations for death cause
            local cause =
                inst.cause == "nil"
                and (viewer == "waxwell" and
                    "charlie" or
                    "darkness")
                or inst.cause

            return string.format(desc, name, STRINGS.NAMES[string.upper(cause)] or STRINGS.NAMES.SHENANIGANS)
        end
    end

    local function decay(inst)
        local x, y, z = inst.Transform:GetWorldPosition()
        inst:Remove()
        SpawnPrefab("ash").Transform:SetPosition(x, y, z)
        SpawnPrefab("collapse_small").Transform:SetPosition(x, y, z)
    end

    local function SetSkeletonDescription(inst, char, playername, cause, pkname, userid)
        inst.char = char
        inst.playername = playername
        inst.userid = userid
        inst.pkname = pkname
        inst.cause = pkname == nil and cause:lower() or nil
        inst.components.inspectable.getspecialdescription = getdesc
    end

    local function SetSkeletonAvatarData(inst, client_obj)
        inst.components.playeravatardata:SetData(client_obj)
    end

    local function onsaveplayer(inst, data)
        data.char = inst.char
        data.playername = inst.playername
        data.userid = inst.userid
        data.pkname = inst.pkname
        data.cause = inst.cause
        if inst.skeletonspawntime ~= nil then
            local time = GetTime()
            if time > inst.skeletonspawntime then
                data.age = time - inst.skeletonspawntime
            end
        end
    end

    local function onloadplayer(inst, data)

        if data ~= nil and data.char ~= nil and (data.cause ~= nil or data.pkname ~= nil) then
            inst.char = data.char
            inst.playername = data.playername --backward compatibility for nil playername
            inst.userid = data.userid
            inst.pkname = data.pkname --backward compatibility for nil pkname
            inst.cause = data.cause
            if inst.components.inspectable ~= nil then
                inst.components.inspectable.getspecialdescription = getdesc
            end
            if data.age ~= nil and data.age > 0 then
                inst.skeletonspawntime = -data.age
            end

            if data.avatar ~= nil then
                --Load legacy data
                inst.components.playeravatardata:OnLoad(data.avatar)
            end
        end
    end
---------------------------------------------------------------------------------------------------------------------------------------------
--- 
    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddNetwork()
        inst.entity:AddSoundEmitter()

        MakeSmallObstaclePhysics(inst, 0.25)

        -- inst.AnimState:SetBank("skeleton")
        -- inst.AnimState:SetBuild("skeletons")
        -- inst.AnimState:PlayAnimation("idle1", true)
        inst.AnimState:SetBank("moonlightcoda_building_skeleton")
        inst.AnimState:SetBuild("moonlightcoda_building_skeleton")
        inst.AnimState:PlayAnimation("idle")

        inst:AddTag("playerskeleton")
        inst:AddComponent("playeravatardata")
        inst.components.playeravatardata:AddPlayerData(true)

        inst:AddTag("moonlightcoda_building_skeleton")
        
        inst.entity:SetPristine()

        if not TheWorld.ismastersim then
            return inst
        end


        ------------------------------------------------------------------------------------------
        ---- 检查文本切换
            inst:AddComponent("inspectable")
        -- inst.components.inspectable:RecordViews()
        ------------------------------------------------------------------------------------------
        ---- 
            inst:AddComponent("lootdropper")
            -- inst.components.lootdropper:SetChanceLootTable('skeleton_player')
        ------------------------------------------------------------------------------------------
        ----
            local function aoe_damage(pt)
                local range = 25
                local musthavetags = { "_combat" }
                local canthavetags = { "INLIMBO", "notarget", "noattack", "flight", "invisible", "wall", "player", "companion" }
                local musthaveoneoftags = {}
                local ents = TheSim:FindEntities(pt.x, 0, pt.z, range, musthavetags, canthavetags, musthaveoneoftags)
                local ret_aoe_target = {}
                for k, temp in pairs(ents) do
                    if temp and temp:IsValid() and temp.components.combat and temp.components.health then
                        table.insert(ret_aoe_target, temp)
                    end
                end
                for i, temp_target in pairs(ret_aoe_target) do
                    temp_target:DoTaskInTime(i*0.5,function()
                        SpawnPrefab("moonlightcoda_fx_collapse"):PushEvent("Set",{
                            target = temp_target,
                            type = "small",
                            color = Vector3(0,0,255),
                            MultColour_Flag = true,
                        })
                        temp_target.components.combat:GetAttacked(temp_target:GetNearestPlayer(),900)
                    end)
                end
            end
        ------------------------------------------------------------------------------------------
        ---- 
            inst:AddComponent("workable")
            inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
            inst.components.workable:SetWorkLeft(3)
            inst.components.workable:SetOnFinishCallback(function(inst)
                inst.components.lootdropper:DropLoot()
                local fx = SpawnPrefab("collapse_small")
                fx.Transform:SetPosition(inst.Transform:GetWorldPosition())
                fx:SetMaterial("rock")
                aoe_damage(Vector3(inst.Transform:GetWorldPosition()))
                inst:Remove()
            end)
        ------------------------------------------------------------------------------------------
        ---- 
            inst:AddComponent("mcoda_com_data")
        ------------------------------------------------------------------------------------------
            -- inst:DoTaskInTime(0,inst.Remove) --- 暂时删除
        ------------------------------------------------------------------------------------------
        ---- 刷月岛虚影
            local function spawn_gestalt_guard(inst)
                local pt = Vector3(inst.Transform:GetWorldPosition())
                local ret_spawn_pt = Vector3(pt.x,0,pt.z)
                local range = math.random(5)
                local angle =  math.random() * TWOPI
                local offset_pt = FindWalkableOffset(pt,angle,range)
                if type(offset_pt) == "table" then
                    ret_spawn_pt.x = ret_spawn_pt.x + offset_pt.x
                    ret_spawn_pt.z = ret_spawn_pt.z + offset_pt.z
                end
                local monster = SpawnPrefab("gestalt_guard")
                monster.Transform:SetPosition(ret_spawn_pt.x,0,ret_spawn_pt.z)
                while true do
                    local debuff = monster:GetDebuff("moonlightcoda_buff_gestalt_guard_distance_limit")
                    if debuff then
                        return
                    end
                    monster:AddDebuff("moonlightcoda_buff_gestalt_guard_distance_limit","moonlightcoda_buff_gestalt_guard_distance_limit")
                end
            end
            -- inst:DoTaskInTime(1,function()
            --     if inst.components.mcoda_com_data:Get("spawn_flag_gestalt_guard") then
            --        return 
            --     end
            --     inst.components.mcoda_com_data:Set("spawn_flag_gestalt_guard",true)
            --     for i = 1, 10, 1 do
            --         inst:DoTaskInTime(i*(math.random(3,5)),function()
            --             spawn_gestalt_guard(inst)
            --         end)
            --     end
            -- end)
            inst:DoPeriodicTask(10,function()
                local x,y,z = inst.Transform:GetWorldPosition()
                local range = 50
                local musthavetags = {"brightmare","brightmare_guard","lunar_aligned"}
                local canthavetags = nil
                local musthaveoneoftags = nil
                local ents = TheSim:FindEntities(x, y, z, range, musthavetags, canthavetags, musthaveoneoftags)
                local monster_num = 0
                for k, temp in pairs(ents) do
                    if temp and temp:IsValid() and temp.prefab == "gestalt_guard" then
                        monster_num = monster_num + 1
                    end
                end
                if monster_num < 10 then
                    spawn_gestalt_guard(inst)
                end
            end,math.random(10,20))
        ------------------------------------------------------------------------------------------
        ---- 每天刷 3 个亮茄虚影，连续3天   lunarthrall_plant_gestalt 植物虚影  corpse_gestalt 尸体虚影
            local function spawn_gestalt(inst)
                local pt = Vector3(inst.Transform:GetWorldPosition())
                local range = math.random(5)
                local angle =  math.random() * TWOPI
                local offset_pt = FindWalkableOffset(pt,angle,range)
                if type(offset_pt) == "table" then
                    pt.x = pt.x + offset_pt.x
                    pt.z = pt.z + offset_pt.z
                end
                SpawnPrefab("lunarthrall_plant_gestalt").Transform:SetPosition(pt.x,0,pt.z)
            end
            inst:DoTaskInTime(1,function()
                local gestalt_spawn_times = inst.components.mcoda_com_data:Add("gestalt_spawn_times",1)
                if gestalt_spawn_times < 3 then
                    spawn_gestalt(inst)
                    spawn_gestalt(inst)
                    spawn_gestalt(inst)
                end
            end)
            inst:WatchWorldState("cycles",function()
                local gestalt_spawn_times = inst.components.mcoda_com_data:Add("gestalt_spawn_times",0)
                if gestalt_spawn_times < 3 then
                    inst.components.mcoda_com_data:Add("gestalt_spawn_times",1)
                    spawn_gestalt(inst)
                    spawn_gestalt(inst)
                    spawn_gestalt(inst)
                end
            end)
        ------------------------------------------------------------------------------------------


        inst.OnLoad = onloadplayer
        inst.OnSave = onsaveplayer
        inst.SetSkeletonDescription = SetSkeletonDescription
        inst.SetSkeletonAvatarData = SetSkeletonAvatarData
        inst.Decay = decay
        inst.skeletonspawntime = GetTime()
        TheWorld:PushEvent("ms_skeletonspawn", inst)

        return inst
    end
---------------------------------------------------------------------------------------------------------------------------------------------
return Prefab("moonlightcoda_building_skeleton", fn, assets)


