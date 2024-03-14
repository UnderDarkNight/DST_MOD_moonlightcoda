
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------ 界面调试
    local Widget = require "widgets/widget"
    local Image = require "widgets/image" -- 引入image控件
    local UIAnim = require "widgets/uianim"


    local Screen = require "widgets/screen"
    local AnimButton = require "widgets/animbutton"
    local ImageButton = require "widgets/imagebutton"
    local Menu = require "widgets/menu"
    local Text = require "widgets/text"
    local TEMPLATES = require "widgets/redux/templates"
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local flg,error_code = pcall(function()
    print("WARNING:PCALL START +++++++++++++++++++++++++++++++++++++++++++++++++")
    local x,y,z =    ThePlayer.Transform:GetWorldPosition()  
    ----------------------------------------------------------------------------------------------------------------
    ---- HUD 血条 修改
        -- for k, v in pairs(ThePlayer.HUD.controls.status) do
        --     print(k,v,type(v))
        -- end
        -- ThePlayer.HUD.controls.status:Show()
        -- ThePlayer.HUD.controls.status.heart:Show()

        -- local HealthBadge = ThePlayer.HUD.controls.status.heart

        -- local temp = {}
        -- for k, v in pairs(HealthBadge) do
        --     -- print(k,v,type(v))
        --     if tostring(v) == "UIAnim" then
        --         temp[k] = v
        --     end
        -- end

        -- for k, v in pairs(temp) do
        --     v:Show()
        --     -- print(k,v)
        -- end 

                                                            -- ---- status_mater:  topperanim  circleframe2  backing  anim circleframe

                                                            -- local over_index = { "topperanim","circleframe2","backing","anim","circleframe"}
                                                            
                                                            -- for k, index in pairs(over_index) do
                                                            --     HealthBadge[index]:GetAnimState():OverrideSymbol("bg","moonlightcoda_hud_status_meter","bg")
                                                            --     HealthBadge[index]:GetAnimState():OverrideSymbol("frame_circle","moonlightcoda_hud_status_meter","frame_circle")
                                                            --     HealthBadge[index]:GetAnimState():OverrideSymbol("level","moonlightcoda_hud_status_meter","level")
                                                            -- end
                                                            -- -- HealthBadge.topperanim:GetAnimState():OverrideSymbol("bg","moonlightcoda_hud_status_meter","bg")
                                                            -- -- HealthBadge.topperanim:GetAnimState():OverrideSymbol("frame_circle","moonlightcoda_hud_status_meter","frame_circle")
                                                            -- -- HealthBadge.topperanim:GetAnimState():OverrideSymbol("level","moonlightcoda_hud_status_meter","level")


                                                            -- --- status_health:   effigyanim  circleframe
                                                            -- HealthBadge.effigyanim:GetAnimState():OverrideSymbol("icon","moonlightcoda_hud_status_health","icon")
                                                            -- HealthBadge.circleframe:GetAnimState():OverrideSymbol("icon","moonlightcoda_hud_status_health","icon")

                                                            -- HealthBadge.anim:GetAnimState():SetMultColour(1,1,1,1)
    ----------------------------------------------------------------------------------------------------------------
    -----
        -- if HealthBadge.special_icon then
        --     HealthBadge.special_icon:Kill()
        -- end
                                                                
        --     HealthBadge.circleframe:Hide()
        --     HealthBadge.special_icon = HealthBadge:AddChild(UIAnim())
        --     HealthBadge.special_icon:GetAnimState():SetBank("moonlightcoda_hud_health")
        --     HealthBadge.special_icon:GetAnimState():SetBuild("moonlightcoda_hud_health")
        --     HealthBadge.special_icon:GetAnimState():PlayAnimation("icon",true)
        --     HealthBadge.special_icon:SetScale(0.5,0.5,0.5)

        --     HealthBadge.special_icon:MoveToFront()
        --     HealthBadge.sanityarrow:MoveToFront()

        -- HealthBadge.special_back_fx:SetScale(0.5,0.5,0.5)
        -- HealthBadge.special_back_fx:GetAnimState():SetDeltaTimeMultiplier(0.7)
    ----------------------------------------------------------------------------------------------------------------
    ---
        -- if ThePlayer._health_task then
        --     ThePlayer._health_task:Cancel()
        --     ThePlayer._health_task = nil
        --     return
        -- end
        -- ThePlayer._health_task = ThePlayer:DoPeriodicTask(1,function()
        --     if ThePlayer:HasTag("playerghost") then
        --         ThePlayer._health_task:Cancel()
        --         ThePlayer._health_task = nil
        --     else
        --         ThePlayer.components.health:DoDelta(-4)
        --     end
        -- end)
    ----------------------------------------------------------------------------------------------------------------
    --- 吃东西组件
            -- ThePlayer.replica.mcoda_com_player_anything_eater:AddItemTestFn("moonglass",function(item)
            --     -- print("item  test",item)
            --     return true
            -- end,true)
            -- ThePlayer.components.mcoda_com_player_anything_eater:AddItemOnEatFn("moonglass",function(item)
            --     item:Remove()
            --     return true
            -- end)
    ----------------------------------------------------------------------------------------------------------------
    ---- 箭头测试
            -- ThePlayer.components.mcoda_com_data:Set("moonlightcoda_debuff_moon_island_arrow.timer",10000)
            -- if ThePlayer:GetDebuff("moonlightcoda_debuff_moon_island_arrow") == nil then
            --     ThePlayer:AddDebuff("moonlightcoda_debuff_moon_island_arrow","moonlightcoda_debuff_moon_island_arrow")
            -- end

    ----------------------------------------------------------------------------------------------------------------
    ------ 测试告密的心
            -- local npc = SpawnPrefab(ThePlayer.prefab)
            -- npc.Transform:SetPosition(x, y, z)
            -- npc.components.health:Kill()
    ----------------------------------------------------------------------------------------------------------------
    ----- sg
                -- ThePlayer:ListenForEvent("newstate",function(_,_table)
                --     local statename = _table and _table.statename
                --     if statename then
                --         print("sg",ThePlayer,statename)
                --     end
                -- end)
        
    ----------------------------------------------------------------------------------------------------------------
    ----- 位面伤害
                    -- ThePlayer.components.damagetypebonus:AddBonus("shadow_aligned", ThePlayer, 20)
                    -- print(ThePlayer.components.damagetypebonus:GetDebugString())
    ----------------------------------------------------------------------------------------------------------------
    ----- 独立tag系统
                    -- ThePlayer.components.mcoda_com_tag_sys:AddTag("test_tag")
                    -- print(ThePlayer.replica.mcoda_com_tag_sys:HasTag("test_tag"))
    ----------------------------------------------------------------------------------------------------------------
    ----- 启蒙状态
                    -- print(ThePlayer.components.sanity:IsLunacyMode())
    ----------------------------------------------------------------------------------------------------------------
    ----- 影怪交互测试
            -- ThePlayer.components.sanity:SetInducedInsanity(ThePlayer,false)
            -- ThePlayer.components.sanity.inducedinsanity = true
            -- ThePlayer:PushEvent("inducedinsanity", true)
            -- print(ThePlayer.components.sanity:IsInsanityMode())
            -- print(TheWorld.components.shadowcreaturespawner:GetDebugString())
            -- ThePlayer.temp_table = ThePlayer.temp_table or {
            --     ents = {}
            -- }
            -- TheWorld.components.shadowcreaturespawner:SpawnShadowCreature(ThePlayer,ThePlayer.temp_table)
            -- TheWorld.components.shadowcreaturespawner:SpawnShadowCreature(ThePlayer,ThePlayer.temp_table)
            -- TheWorld.components.shadowcreaturespawner:SpawnShadowCreature(ThePlayer,ThePlayer.temp_table)
            -- for k, v in pairs(ThePlayer.temp_table.ents) do
            --     print(k,v)
            -- end
    ----------------------------------------------------------------------------------------------------------------
                -- ThePlayer.components.sanity:DoDelta(-10)
                -- ThePlayer:PushEvent("mcoda_level_up")
                -- for i = 1, 10, 1 do
                --     print("level",i,ThePlayer.components.mcoda_com_tag_sys:HasTag("level_"..tostring(i)))
                -- end
    ----------------------------------------------------------------------------------------------------------------
                -- ThePlayer.AnimState:PlayAnimation("idle_wendy")
                -- ThePlayer.AnimState:PlayAnimation("idle_warly")

                -- ThePlayer.components.sanity.current = 20
    ----------------------------------------------------------------------------------------------------------------
    -- 
        -- local LUNACY_TINT = { 191 / 255, 232 / 255, 240 / 255, 1 }
        -- local SanityBadge = ThePlayer.HUD.controls.status.brain
        -- SanityBadge.backing:GetAnimState():OverrideSymbol("bg", "status_sanity", "lunacy_bg")
        -- SanityBadge.anim:GetAnimState():SetMultColour(unpack(LUNACY_TINT))
        -- SanityBadge.circleframe:GetAnimState():OverrideSymbol("icon", "status_sanity", "lunacy_icon")
    ----------------------------------------------------------------------------------------------------------------
        -- ThePlayer.AnimState:PlayAnimation("form_log_pre")
        -- ThePlayer.AnimState:PushAnimation("form_log", false)
        -- local inst = ThePlayer
        -- inst.SoundEmitter:PlaySound("turnoftides/common/together/moon_glass/break")
        -- inst.SoundEmitter:PlaySound("dontstarve/creatures/together/antlion/sfx/glass_break")    --
        -- inst.SoundEmitter:PlaySound("turnoftides/common/together/water/hotspring/glassify")
        -- inst.SoundEmitter:PlaySound("moonstorm/common/moonstorm/glass_break")
        -- inst.SoundEmitter:PlaySound("turnoftides/common/together/moon_glass/mine")
    ----------------------------------------------------------------------------------------------------------------
    ----- 激光测试
        local SECOND_BLAST_TIME = 22*FRAMES
        local NUM_STEPS = 10
        local STEP = 1.0
        local OFFSET = 2 - STEP
        local function SpawnBeam(inst, target_pos)
            if target_pos == nil then
                return
            end
        
            local ix, iy, iz = inst.Transform:GetWorldPosition()
        
            -- This is the "step" of fx spawning that should align with the position the beam is targeting.
            local target_step_num = RoundBiasedUp(NUM_STEPS * 2/5)
        
            local angle = nil
        
            -- gx, gy, gz is the point of the actual first beam fx
            local gx, gy, gz = nil, 0, nil
            local x_step = STEP
            if inst:GetDistanceSqToPoint(target_pos:Get()) < 4 then
                angle = math.atan2(iz - target_pos.z, ix - target_pos.x)
        
                -- If the target is too close, use the minimum distance
                gx, gy, gz = inst.Transform:GetWorldPosition()
                gx = gx + (2 * math.cos(angle))
                gz = gz + (2 * math.sin(angle))
            else
                angle = math.atan2(iz - target_pos.z, ix - target_pos.x)
        
                gx, gy, gz = target_pos:Get()
                gx = gx + (target_step_num * STEP * math.cos(angle))
                gz = gz + (target_step_num * STEP * math.sin(angle))
            end
        
            local targets, skiptoss = {}, {}
            local sbtargets, sbskiptoss = {}, {}
            local x, z = nil, nil
            local trigger_time = nil
        
            local i = -1
            while i < NUM_STEPS do
                i = i + 1
                x = gx - i * x_step * math.cos(angle)
                z = gz - i * STEP * math.sin(angle)
        
                local first = (i == 0)
                local prefab = (i > 0 and "moonlightcoda_spell_laser") or "moonlightcoda_spell_laserempty"
                local x1, z1 = x, z
        
                trigger_time = math.max(0, i - 1) * FRAMES
        
                inst:DoTaskInTime(trigger_time, function(inst2)
                    local fx = SpawnPrefab(prefab)
                    fx.caster = inst2
                    fx.Transform:SetPosition(x1, 0, z1)
                    fx:Trigger(0, targets, skiptoss)
                    if first then
                        ShakeAllCameras(CAMERASHAKE.FULL, .7, .02, .2, target_pos or fx, 30)
                    end
                end)
        
                inst:DoTaskInTime(trigger_time + SECOND_BLAST_TIME, function(inst2)
                    local fx = SpawnPrefab(prefab)
                    fx.caster = inst2
                    fx.Transform:SetPosition(x1, 0, z1)
                    fx:Trigger(0, sbtargets, sbskiptoss, true)
                    if first then
                        ShakeAllCameras(CAMERASHAKE.FULL, .7, .02, .2, target_pos or fx, 30)
                    end
                end)
            end
        
            inst:DoTaskInTime(i*FRAMES, function(inst2)
                local fx = SpawnPrefab("moonlightcoda_spell_laser")
                fx.Transform:SetPosition(x, 0, z)
                fx:Trigger(0, targets, skiptoss)
            end)
        
            inst:DoTaskInTime((i+1)*FRAMES, function(inst2)
                local fx = SpawnPrefab("moonlightcoda_spell_laser")
                fx.Transform:SetPosition(x, 0, z)
                fx:Trigger(0, targets, skiptoss)
            end)
        end

        local function GetPositionAdjacentTo(base_pt,angle,distance)
            ----- 基于基点，进行坐标旋转偏移。返回 旋转过的 目标点。

            local theMid = base_pt
            local range = distance
            local tempDeg = math.rad(angle)
            local tempPoint = theMid + Vector3( range*math.cos(tempDeg) ,  0  ,  range*math.sin(tempDeg)    )
            -- local tempPoint = Vector3(0,0,0)
            -- tempPoint.x = theMid.x + range*math.cos(tempDeg)
            -- tempPoint.z = theMid.z + range*math.sin(tempDeg)

            return tempPoint
        end
        local function angle_fix(angle)
            if angle > 360 then
                return angle - 360
            end
            if angle < 0 then
                return angle + 360
            end
            return angle
        end
        -- local base_pt = Vector3(x,0,z)
        -- local pt = GetPositionAdjacentTo(base_pt,0,2)
        -- -- SpawnPrefab("log").Transform:SetPosition(pt.x,0,pt.z)
        -- SpawnBeam(ThePlayer,pt)

        -- local pt2 = GetPositionAdjacentTo(base_pt,30,2)
        -- SpawnBeam(ThePlayer,pt2)

        -- local pt3 = GetPositionAdjacentTo(base_pt,-30,2)
        -- SpawnBeam(ThePlayer,pt3)

    ----------------------------------------------------------------------------------------------------------------
    --------
            local inst = ThePlayer
            ThePlayer.__test_fn = function(pt)
                local TRIBEAM_ANGLEOFF = PI/5
                local TRIBEAM_COS = math.cos(TRIBEAM_ANGLEOFF)
                local TRIBEAM_SIN = math.sin(TRIBEAM_ANGLEOFF)
                local TRIBEAM_COSNEG = math.cos(-TRIBEAM_ANGLEOFF)
                local TRIBEAM_SINNEG = math.sin(-TRIBEAM_ANGLEOFF)

                local ipos = inst:GetPosition()
                -- local target_pos = inst.sg.statemem.target_pos
                local target_pos = pt
                
                if target_pos == nil then
                    local angle = inst.Transform:GetRotation() * DEGREES
                    target_pos = ipos + Vector3(OFFSET * math.cos(angle), 0, -OFFSET * math.sin(angle))
                end
                SpawnBeam(inst, target_pos)

                -- Take the vector from the boss to the target position, and rotate it a bit
                -- both clockwise and counterclockwise, to get target positions that produce
                -- an aligned tri-beam, sourced at the boss.
                local i_to_target = target_pos - ipos

                local offpos1 = Vector3(
                    (i_to_target.x * TRIBEAM_COS - i_to_target.z * TRIBEAM_SIN) + ipos.x,
                    0,
                    (i_to_target.x * TRIBEAM_SIN + i_to_target.z * TRIBEAM_COS) + ipos.z
                )
                SpawnBeam(inst, offpos1)

                local offpos2 = Vector3(
                    (i_to_target.x * TRIBEAM_COSNEG - i_to_target.z * TRIBEAM_SINNEG) + ipos.x,
                    0,
                    (i_to_target.x * TRIBEAM_SINNEG + i_to_target.z * TRIBEAM_COSNEG) + ipos.z
                )
                SpawnBeam(inst, offpos2)

            end
    ----------------------------------------------------------------------------------------------------------------

    print("WARNING:PCALL END   +++++++++++++++++++++++++++++++++++++++++++++++++")
end)

if flg == false then
    print("Error : ",error_code)
end

-- dofile(resolvefilepath("test_fn/test.lua"))