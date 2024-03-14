
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
    ---     震荡
        -- local inst = ThePlayer
        -- ShakeAllCameras(CAMERASHAKE.FULL, .7, .02, 1, inst, 40)
        -- for i = 1, 1000, 1 do
        --     print(math.random(0,15))
        -- end
    ----------------------------------------------------------------------------------------------------------------
    ----
            ThePlayer.__test_fn = function(inst,player)
                -- inst._light_fx = player:SpawnChild("minerhatlight")
                inst._light_fx = CreateEntity()
                inst._light_fx.entity:AddTransform()
                inst._light_fx.entity:AddLight()
                inst._light_fx.entity:SetParent(player.entity)

                inst._light_fx.Light:SetIntensity(0.9)		-- 强度
                inst._light_fx.Light:SetRadius(5)			-- 半径 ，矩形的？？ --- SetIntensity 为1 的时候 成矩形
                inst._light_fx.Light:SetFalloff(0.1)		-- 下降梯度
                inst._light_fx.Light:SetColour(255 / 255, 255 / 255, 255 / 255)

                inst._light_fx.Light:Enable(true)

                print("66+++++++++++++",inst._light_fx)
            end
    ----------------------------------------------------------------------------------------------------------------


    print("WARNING:PCALL END   +++++++++++++++++++++++++++++++++++++++++++++++++")
end)

if flg == false then
    print("Error : ",error_code)
end

-- dofile(resolvefilepath("test_fn/test.lua"))