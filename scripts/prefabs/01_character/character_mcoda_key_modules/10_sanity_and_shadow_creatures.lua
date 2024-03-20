--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    【笔记】

        ["crawlingnightmare"] = true,       -- 洞里打架的影怪
        ["nightmarebeak"] = true,           -- 洞里打架的影怪

        ["crawlinghorror"] = true,       -- 低San的影怪
        ["terrorbeak"] = true,           -- 低San的影怪

        ["shadow_leech"] = true,              -- 影怪
        ["ruins_shadeling"] = true,           -- 影怪
        ["fused_shadeling"] = true,           -- 影怪


    影怪刷新器 ： shadowcreaturespawner.lua   UpdatePopulation 是判定玩家是否需要刷影怪的


    【用不上】：
                    影怪 可被攻击 ： shadowcreature.lua 里
                        local function CLIENT_ShadowSubmissive_HostileToPlayerTest(inst, player)

                    玩家可以和影怪交互的逻辑在 player_common.lua ：
                            --V2C: Things to explicitly hide mouseover Attack command when not Force Attacking.
                            --     e.g. other players' shadow creatures
                            --NOTE: Normally, non-hostile creatures still show "Attack" when you mouseover.
                            function fns.TargetForceAttackOnly(inst, target)
                                return target.HostileToPlayerTest ~= nil and target:HasTag("shadowcreature") and not target:HostileToPlayerTest(inst)
                            end



    影怪可见 ： transparentonsanity 靠这个组件检查 ThePlayer

    夜晚损失理智值的速度为正常冒险者的一半，月圆不会损失理智值

	理智＞50，速度+15%
	理智＞80，速度+25%
    理智＞110，攻击自带小虚影，速度+25%
    理智＞150，自发光(偏蓝色的光，范围和提灯一样)，攻击自带小虚影，速度+25%

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---
    local function GetStringsTable(prefab_name)
        return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name) or {}
    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    -------------------------------------------------------------------------------
    ---
        local shadowcreature_active_sanity_num = 100
    -------------------------------------------------------------------------------
    ---- hook IsCrazy 。  返回 true  就能攻击影怪
            inst:DoTaskInTime(1,function()
                if inst.components.sanity then

                    ---------- 允许交互/攻击 影怪
                        local old_is_crazy = inst.components.sanity.IsCrazy
                        inst.components.sanity.IsCrazy = function(self,...)
                            local origin_flag = old_is_crazy(self,...)
                            if origin_flag then
                                return true
                            end
                            if self.current <= shadowcreature_active_sanity_num then
                                return true
                            end
                            return false
                        end

                    ----------- 给 影怪刷新器用
                        local old_IsInsanityMode_fn = inst.components.sanity.IsInsanityMode
                        inst.components.sanity.IsInsanityMode = function(self,...)
                            local origin_flag = old_IsInsanityMode_fn(self,...)
                            if origin_flag then
                                return true
                            end
                            if self.current <= shadowcreature_active_sanity_num then
                                return true
                            end
                            return false
                        end
                    -- ----------- 给 影怪刷新器用: 大于 50% 就不刷影怪了
                    --     local old_GetPercent = inst.components.sanity.GetPercent
                    --     inst.components.sanity.GetPercent = function(self,...)
                    --         local origin_ret = old_GetPercent(self,...)
                    --         if origin_ret > 0.5 and self.current <= shadowcreature_active_sanity_num then
                    --             origin_ret = 0.4
                    --         end
                    --         return origin_ret
                    --     end


                end

                if inst.replica.sanity then

                    ---------- 允许交互/攻击 影怪
                        local old_is_crazy2 = inst.replica.sanity.IsCrazy
                        inst.replica.sanity.IsCrazy = function(self,...)
                            local origin_flag = old_is_crazy2(self,...)
                            if origin_flag then
                                return true
                            end 
                            if self:GetCurrent() <= shadowcreature_active_sanity_num then
                                return true
                            end
                            return false
                        end

                end
            end)
    -------------------------------------------------------------------------------
    ----- sanity 夜晚损失理智值的速度为正常冒险者的一半，月圆不会损失理智值。洞里失效
        if TheWorld.ismastersim then
            inst:DoTaskInTime(0,function()
                    inst.components.sanity:mcoda_Add_DoDelta_Modifer_fn(inst,function(sanity,num,overtime)
                        if TheWorld:HasTag("cave") then
                            return num,overtime
                        end
                        if overtime and TheWorld.state.isnight and num < 0 then
                            if TheWorld.state.isfullmoon then
                                num = 0
                            else
                                num = num / 2
                            end
                        end
                        return num
                    end)
            end)
        end
    -------------------------------------------------------------------------------
    ----- 免疫BOSS的掉San 光环
        inst:ListenForEvent("moonlightcoda_master_postinit", function()
            inst.components.sanity:AddSanityAuraImmunity("epic")
        end)
    -------------------------------------------------------------------------------
    ----- 理智和速度  	理智＞50，速度+15%	理智＞80，速度+25%
        if TheWorld.ismastersim then
            inst:DoTaskInTime(0,function()
                    local temp_speed_by_sanity_inst = CreateEntity()
                    inst:ListenForEvent("onremove",function()
                        temp_speed_by_sanity_inst:Remove()
                    end)
                    inst:ListenForEvent("sanitydelta",function()
                        local current_sanity = inst.components.sanity.current
                        local speed_mult = 1
                        if current_sanity > 80 then
                            speed_mult = 1.25
                        elseif current_sanity > 50 then
                            speed_mult = 1.15
                        end
                        inst.components.locomotor:SetExternalSpeedMultiplier(temp_speed_by_sanity_inst, "moonlightcoda_speed_by_sanity", speed_mult)
                    end)

            end)
        end
    -------------------------------------------------------------------------------
    ----- 理智＞110，攻击自带小虚影 。 代码来自  启迪之冠
        if TheWorld.ismastersim then
                inst:ListenForEvent("onattackother",function(owner,data)
                    if owner.components.sanity.current < 110 then
                        return
                    end
                    local target = data.target
                    if target and target ~= owner and target:IsValid() and (target.components.health == nil or not target.components.health:IsDead() and not target:HasTag("structure") and not target:HasTag("wall")) then

                        -- In combat, this is when we're just launching a projectile, so don't spawn a gestalt yet
                        if data.weapon ~= nil and data.projectile == nil
                                and (data.weapon.components.projectile ~= nil
                                    or data.weapon.components.complexprojectile ~= nil
                                    or data.weapon.components.weapon:CanRangedAttack()) then
                            return
                        end

                        local x, y, z = target.Transform:GetWorldPosition()

                        local gestalt = SpawnPrefab("alterguardianhat_projectile")
                        local r = GetRandomMinMax(3, 5)
                        local delta_angle = GetRandomMinMax(-90, 90)
                        local angle = (owner:GetAngleToPoint(x, y, z) + delta_angle) * DEGREES
                        gestalt.Transform:SetPosition(x + r * math.cos(angle), y, z + r * -math.sin(angle))
                        gestalt:ForceFacePoint(x, y, z)
                        gestalt:SetTargetPosition(Vector3(x, y, z))
                        gestalt.components.follower:SetLeader(owner)

                        -- if owner.components.sanity ~= nil then
                        --     owner.components.sanity:DoDelta(-1, true) -- using overtime so it doesnt make the sanity sfx every time you attack
                        -- end
                    end
                end)
        end
    -------------------------------------------------------------------------------
    ----- 理智＞150，自发光(偏蓝色的光，范围和提灯一样)  -- minerhatlight
        if TheWorld.ismastersim then
                local light_inst = nil  
                local light_switch_task = nil
                local function turn_on_light()
                    if light_inst ~= nil then
                        return
                    end
                    if light_switch_task then
                        light_switch_task:Cancel()
                    end
                    light_switch_task = inst:DoTaskInTime(3,function()
                        -----------------------------------------------------------------------------
                        ------- 灯光
                                light_inst = inst:SpawnChild("minerhatlight")
                                -- light_inst.Light:SetFalloff(0.4)
                                -- light_inst.Light:SetIntensity(.7)
                                -- light_inst.Light:SetRadius(2.5)
                                light_inst.Light:SetColour(150 / 255, 255 / 255, 255 / 255)
                        -----------------------------------------------------------------------------
                        light_switch_task = nil
                    end)
                end
                local function turn_off_light()
                    if light_inst == nil then
                        return
                    end
                    if light_switch_task then
                        light_switch_task:Cancel()
                    end
                    light_switch_task = inst:DoTaskInTime(3,function()
                        light_inst:Remove()
                        light_inst = nil
                        light_switch_task = nil
                    end)
                end
                inst:DoPeriodicTask(5,function()
                    if inst.components.sanity.current < 150 then
                        turn_off_light()
                        return
                    end
                    if TheWorld.state.isnight or TheWorld:HasTag("cave") then
                        turn_on_light()
                    else
                        turn_off_light()
                    end
                end)
        end
    -------------------------------------------------------------------------------
    ----- 理智下降变化一个等级 就说一句话。 等级：  50  80  110  150
        if TheWorld.ismastersim then
                local old_sanity_num = 0
                local info_task = nil -- 做CD阻塞
                local function message_for_sanity_down(new_sanity_num)
                        local say_flag = false
                        local sanity_levels = {50,80,110,150}
                        for i, line_num in ipairs(sanity_levels) do
                            if new_sanity_num < line_num and old_sanity_num >= line_num then
                                say_flag = true
                                break
                            end
                        end
                        if not say_flag then
                            return
                        end
                        info_task = inst:DoTaskInTime(30,function()
                            info_task = nil
                        end)
                        inst.components.talker:Say(GetStringsTable("MOONLIGHTCODA_SANITY_DOWN")["msg"] or "我感觉不太好")
                end
                inst:ListenForEvent("sanitydelta",function(inst)
                        if info_task ~= nil then
                            return
                        end
                        local new_sanity_num = inst.components.sanity.current
                        if new_sanity_num < old_sanity_num then
                            message_for_sanity_down(new_sanity_num)
                        end
                        old_sanity_num = new_sanity_num
                end)
        end
    -------------------------------------------------------------------------------


end