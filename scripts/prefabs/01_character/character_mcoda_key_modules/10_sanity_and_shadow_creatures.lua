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

]]--
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
    ----- sanity 夜晚损失理智值的速度为正常冒险者的一半，月圆不会损失理智值
        if TheWorld.ismastersim then
            inst:DoTaskInTime(0,function()
                    inst.components.sanity:mcoda_Add_DoDelta_Modifer_fn(inst,function(sanity,num,overtime)
                        if overtime and TheWorld.state.isnight and num < 0 then
                            if TheWorld.state.isfullmoon then
                                num = 0
                            else
                                num = num / 2
                            end
                        end
                        return num,overtime
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


end