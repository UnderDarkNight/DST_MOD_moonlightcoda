---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    标点
    再生
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---
    local function GetStringsTable(prefab_name)
        return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name)
    end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_building_coord.zip"),
    Asset("ANIM", "anim/moonlightcoda_building_once_again.zip"),
}
----------------------------------------------------------------------------------------------

    local function fn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddAnimState()
        inst.entity:AddSoundEmitter()
        inst.entity:AddMiniMapEntity()
        inst.entity:AddNetwork()
        inst.entity:AddLight()

        inst.Light:SetIntensity(0.5)		-- 强度
        inst.Light:SetRadius(3)			-- 半径 ，矩形的？？ --- SetIntensity 为1 的时候 成矩形
        inst.Light:SetFalloff(0.8)		-- 下降梯度
        inst.Light:SetColour(0 / 255, 255 / 255, 255 / 255)
        inst.Light:Enable(false)

        MakeObstaclePhysics(inst, .5)

        inst.MiniMapEntity:SetIcon("moonlightcoda_building_coord.tex")

        inst.AnimState:SetBank("moonlightcoda_building_coord")
        inst.AnimState:SetBuild("moonlightcoda_building_coord")
        inst.AnimState:PlayAnimation("idle", false)

        inst:AddTag("structure")
        inst:AddTag("moonlightcoda_building_coord")
        inst:AddTag("moonlightcoda_building_once_again")

        inst.AnimState:SetClientsideBuildOverride("moonlightcoda_ghost", "moonlightcoda_building_coord", "moonlightcoda_building_once_again")

        inst.entity:SetPristine()

        inst.displaynamefn = function()
            if ThePlayer and ThePlayer:HasTag("playerghost") then
                return GetStringsTable("moonlightcoda_building_once_again")["name"]
            end
            return GetStringsTable("moonlightcoda_building_coord")["name"]
        end

        if not TheWorld.ismastersim then
            return inst
        end

        -----------------------------


        -----------------------------
            inst:AddComponent("lootdropper")
            inst:AddComponent("workable")
            inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
            inst.components.workable:SetWorkLeft(4)
            inst.components.workable:SetOnFinishCallback(function()
                inst.components.lootdropper:DropLoot()
                SpawnPrefab("moonlightcoda_fx_collapse"):PushEvent("Set",{
                    target = inst,
                    type = "small",
                })
                inst:Remove()
            end)
            -- inst.components.workable:SetOnWorkCallback(onhit)
        -----------------------------
        -----------------------------


        -----------------------------
        ---- 检查文本切换
            inst:AddComponent("inspectable")
            inst.components.inspectable.getspecialdescription = function(inst, viewer)
                if viewer and viewer:HasTag("moonlightcoda") and viewer:HasTag("playerghost") then
                    return GetStringsTable("moonlightcoda_building_once_again")["inspect_str"]
                end
                return GetStringsTable("moonlightcoda_building_coord")["inspect_str"]
            end
        -----------------------------
        ---- 灯光处理
            local light_update_fn = function(inst)
                inst:DoTaskInTime(5,function()
                    if TheWorld.state.isnight or TheWorld:HasTag("cave") then
                        inst.Light:Enable(true)
                    else
                        inst.Light:Enable(false)
                    end
                end)
            end
            inst:DoTaskInTime(0,light_update_fn)
            inst:WatchWorldState("isday",light_update_fn)
            inst:WatchWorldState("isdusk",light_update_fn)
            inst:WatchWorldState("isnight",light_update_fn)
            inst:WatchWorldState("cycles",light_update_fn)
        -----------------------------
        --- 作祟
            MakeHauntableWork(inst)
            inst.components.hauntable.onhaunt = function(inst,doer)
                if doer and doer:HasTag("moonlightcoda") and doer:HasTag("playerghost") then
                    local tempInst = SpawnPrefab("moonlightcoda_building_once_again")
                    doer:PushEvent("respawnfromghost", { source = tempInst })
                    SpawnPrefab("moonlightcoda_fx_collapse"):PushEvent("Set",{
                        target = inst,
                        type = "small",
                        color = Vector3(0,0,255),
                        MultColour_Flag = true,
                    })
                    inst:Remove()
                    doer.components.mcoda_com_tag_sys:AddTag("respawn_from_ghost_by_coord")
                end
            end
        -----------------------------

        return inst
    end
----------------------------------------------------------------------------------------------
---- 死亡通告需要个 inst 决定名字
    local function tempfn()
        local inst = CreateEntity()

        inst.entity:AddTransform()
        inst.entity:AddNetwork()

        inst.entity:SetPristine()

        inst:DoTaskInTime(10,inst.Remove)
        return inst
    end
----------------------------------------------------------------------------------------------
    local placer_fn = function(inst)
        
    end
----------------------------------------------------------------------------------------------
return Prefab("moonlightcoda_building_coord", fn, assets),
    MakePlacer("moonlightcoda_building_coord_placer","moonlightcoda_building_coord","moonlightcoda_building_coord","idle",nil, nil, nil, nil, nil, nil,placer_fn),
        Prefab("moonlightcoda_building_once_again", tempfn, assets)