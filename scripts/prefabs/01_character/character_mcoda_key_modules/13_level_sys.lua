--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[


升级：
    用3彩虹宝石5玻璃5纯粹辉煌可以制作“献身月光”，魔杖，只能使用一次，使用后立即触发月圆书效果并且↓
        第一次使用之后增加永久的，55%防御和35理智值上限。并且使用月光的刺痛释放激光时不再需要月能值。
        后每次使用，叠加永久的10%防御和10理智值上限
        叠加到85%防御后(4次)不再叠加防御和理智值上限，转为增加速度
        每次使用增加5%移速，最多叠加6次
        之后再使用就没有效果了

        3级 增加耐寒(不受寒冷伤害) 不能被冰冻
        5级 增加耐热(不受炎热伤害) 不能被火烧

        level 1  :  +55%防御 和 +35 理智值上限。并且使用月光的刺痛释放激光时不再需要月能值。
        level 2  :  +65%防御 和 +45 理智值上限。
        level 3  :  +75%防御 和 +55 理智值上限。增加耐寒(不受寒冷伤害)
        level 4  :  +85%防御 和 +65 理智值上限。
        level 5  :  +5%移速。增加耐热(不受炎热伤害)
        level 6  :  +10%移速
        level 7  :  +15%移速
        level 8  :  +20%移速
        level 9  :  +25%移速
        level 10  :  +30%移速

                inst.components.mcoda_com_data:Add("mcoda_level",-60)
        
        换角色保留等级
        最大10级
]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end


    

    ----------------------------------------------------------------------------------------------------------------------
    ---- 辅助 modifer inst 和其他东西
        local level_modifer_inst = CreateEntity()
            inst:ListenForEvent("onremove",function()
                level_modifer_inst:Remove()
            end)

        local level_modifer_inst_hot = CreateEntity()
            inst:ListenForEvent("onremove",function()
                level_modifer_inst_hot:Remove()
            end)

        local level_modifer_inst_cold = CreateEntity()
            inst:ListenForEvent("onremove",function()
                level_modifer_inst_cold:Remove()
            end)


        local base_max_sanity = TUNING[string.upper("moonlightcoda").."_SANITY"]
    ----------------------------------------------------------------------------------------------------------------------
    ---- 每个等级对应的函数
        local fns_by_level = {
            -----------------------------------------------------------
            --- 
                [1] = function(inst)
                    inst.components.combat.externaldamagetakenmultipliers:SetModifier(level_modifer_inst, 1.55)
                    inst.components.sanity.max = base_max_sanity + 35
                    inst.components.mcoda_com_tag_sys:AddTag("level_1")
                end,
            -----------------------------------------------------------
            --- 
                [2] = function(inst)
                    inst.components.combat.externaldamagetakenmultipliers:SetModifier(level_modifer_inst, 1.65)
                    inst.components.sanity.max = base_max_sanity + 45
                    inst.components.mcoda_com_tag_sys:AddTag("level_2")
                end,
            -----------------------------------------------------------
            --- 
                [3] = function(inst)
                    inst.components.combat.externaldamagetakenmultipliers:SetModifier(level_modifer_inst, 1.75)
                    inst.components.sanity.max = base_max_sanity + 55
                    inst.components.mcoda_com_tag_sys:AddTag("level_3")
                    ---- 增加耐寒
                        inst.components.health:mcoda_Add_DoDelta_Modifer_fn(level_modifer_inst_cold,function(health,num,overtime,cause,...)
                            if num < 0 and cause == "cold" then
                                num = 0
                            end
                            return num
                        end)
                end,
            -----------------------------------------------------------
            --- 
                [4] = function(inst)
                    inst.components.combat.externaldamagetakenmultipliers:SetModifier(level_modifer_inst, 1.85)
                    inst.components.sanity.max = base_max_sanity + 65
                    inst.components.mcoda_com_tag_sys:AddTag("level_4")

                end,
            -----------------------------------------------------------
            --- 
                [5] = function(inst)
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifer_inst, "moonlightcoda_level_speed_mod", 1.05)
                    inst.components.mcoda_com_tag_sys:AddTag("level_5")
                    ---- 增加耐热
                        inst.components.health.externalfiredamagemultipliers:SetModifier(level_modifer_inst,0) -- 被火焰直接烧掉血
                        inst.components.health:mcoda_Add_DoDelta_Modifer_fn(level_modifer_inst_hot,function(health,num,overtime,cause,...)
                            if num < 0 and cause == "hot" then
                                num = 0
                            end
                            return num
                        end)
                end,
            -----------------------------------------------------------
            --- 
                [6] = function(inst)
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifer_inst, "moonlightcoda_level_speed_mod", 1.1)
                    inst.components.mcoda_com_tag_sys:AddTag("level_6")

                end,
            -----------------------------------------------------------
            --- 
                [7] = function(inst)
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifer_inst, "moonlightcoda_level_speed_mod", 1.15)
                    inst.components.mcoda_com_tag_sys:AddTag("level_7")

                end,
            -----------------------------------------------------------
            --- 
                [8] = function(inst)
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifer_inst, "moonlightcoda_level_speed_mod", 1.2)
                    inst.components.mcoda_com_tag_sys:AddTag("level_8")

                end,
            -----------------------------------------------------------
            --- 
                [9] = function(inst)
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifer_inst, "moonlightcoda_level_speed_mod", 1.25)
                    inst.components.mcoda_com_tag_sys:AddTag("level_9")

                end,
            -----------------------------------------------------------
            --- 
                [10] = function(inst)
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifer_inst, "moonlightcoda_level_speed_mod", 1.3)
                    inst.components.mcoda_com_tag_sys:AddTag("level_10")

                end,
            -----------------------------------------------------------
        }
    ----------------------------------------------------------------------------------------------------------------------
    ---- 升级
        local level_data_index = "mcoda_level"
        inst:ListenForEvent("mcoda_level_up",function()
            local current_level = inst.components.mcoda_com_data:Get(level_data_index) or 0
            if current_level >= 10 then
                return
            end
            current_level = inst.components.mcoda_com_data:Add(level_data_index,1)
            if fns_by_level[current_level] then
                fns_by_level[current_level](inst)
            end
        end)
    ----------------------------------------------------------------------------------------------------------------------
    ----- 重新加载的时候
        inst.components.mcoda_com_data:AddOnLoadFn(function(com)
            local current_level = inst.components.mcoda_com_data:Get(level_data_index) or 0
            if current_level > 0 then
                for i = 1, current_level, 1 do
                    if fns_by_level[i] then
                        fns_by_level[i](inst)
                    end
                end
            end
        end)
    ----------------------------------------------------------------------------------------------------------------------
    ----- 穿越洞穴的 san 保留
        inst.components.mcoda_com_data:AddOnLoadFn(function(com)
            local on_save_sanity = com:Get("on_save_sanity")
            if on_save_sanity then
                inst.components.sanity.current = on_save_sanity
            end
        end)
        inst.components.mcoda_com_data:AddOnSaveFn(function(com)
            local on_save_sanity = inst.components.sanity.current
            com:Set("on_save_sanity",on_save_sanity)
        end)
    ----------------------------------------------------------------------------------------------------------------------
    ----- 换角色保留等级
        if TUNING["moonlightcoda.Config"].LEVEL_RETENTION then

            inst:ListenForEvent("ms_playerreroll",function()
                local current_level = inst.components.mcoda_com_data:Get(level_data_index) or 0
                TheWorld.components.mcoda_com_data:Set("mcoda_level_of_userid_"..tostring(inst.userid),current_level)
            end)
            inst:DoTaskInTime(0,function()
                local level_form_world = TheWorld.components.mcoda_com_data:Get("mcoda_level_of_userid_"..tostring(inst.userid))
                if level_form_world == nil or level_form_world <= 0 then
                    return
                end
                for i = 1, level_form_world, 1 do
                    inst:PushEvent("mcoda_level_up")
                end
                TheWorld.components.mcoda_com_data:Set("mcoda_level_of_userid_"..tostring(inst.userid),nil)
            end)
            
        end
    ----------------------------------------------------------------------------------------------------------------------


end