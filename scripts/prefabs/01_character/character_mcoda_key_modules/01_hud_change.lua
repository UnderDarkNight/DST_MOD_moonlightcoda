--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    ThePlayer.HUD.controls.status.heart:Show()

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- HUD 修改相关组件
    local Widget = require "widgets/widget"
    local Image = require "widgets/image" -- 引入image控件
    local UIAnim = require "widgets/uianim"


    local Screen = require "widgets/screen"
    local AnimButton = require "widgets/animbutton"
    local ImageButton = require "widgets/imagebutton"
    local Menu = require "widgets/menu"
    local Text = require "widgets/text"
    local TEMPLATES = require "widgets/redux/templates"
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----- 血量修改
    local function hook_health_bage(HealthBadge)
        local over_index = { "topperanim","circleframe2","backing","anim","circleframe"}
        
        for k, index in pairs(over_index) do
            HealthBadge[index]:GetAnimState():OverrideSymbol("bg","moonlightcoda_hud_status_meter","bg")
            HealthBadge[index]:GetAnimState():OverrideSymbol("frame_circle","moonlightcoda_hud_status_meter","frame_circle")
            HealthBadge[index]:GetAnimState():OverrideSymbol("level","moonlightcoda_hud_status_meter","level")
        end

        HealthBadge.effigyanim:GetAnimState():OverrideSymbol("icon","moonlightcoda_hud_status_health","icon")
        HealthBadge.circleframe:GetAnimState():OverrideSymbol("icon","moonlightcoda_hud_status_health","icon")

        HealthBadge.anim:GetAnimState():SetMultColour(1,1,1,1)

        --------- 修改成可动动画
            HealthBadge.circleframe:Hide()
            HealthBadge.special_icon = HealthBadge:AddChild(UIAnim())
            HealthBadge.special_icon:GetAnimState():SetBank("moonlightcoda_hud_health")
            HealthBadge.special_icon:GetAnimState():SetBuild("moonlightcoda_hud_health")
            HealthBadge.special_icon:GetAnimState():PlayAnimation("icon_fx",true)
            local icon_scale = 1
            HealthBadge.special_icon:SetScale(icon_scale,icon_scale,icon_scale)

            HealthBadge.special_icon:MoveToFront()
            HealthBadge.sanityarrow:MoveToFront()

        --------- 添加后台特效

            HealthBadge.special_back_fx = HealthBadge:AddChild(UIAnim())
            HealthBadge.special_back_fx:GetAnimState():SetBank("moonlightcoda_hud_health")
            HealthBadge.special_back_fx:GetAnimState():SetBuild("moonlightcoda_hud_health")
            HealthBadge.special_back_fx:GetAnimState():PlayAnimation("fx",true)
            HealthBadge.special_back_fx:SetScale(0.5,0.5,0.5)
            HealthBadge.special_back_fx:GetAnimState():SetDeltaTimeMultiplier(0.7)
            HealthBadge.special_back_fx:MoveToBack()

    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    inst:DoTaskInTime(0,function()
        if ThePlayer and inst == ThePlayer and ThePlayer.HUD then
            pcall(function()
                hook_health_bage(ThePlayer.HUD.controls.status.heart)
            end)
        end
    end)

end