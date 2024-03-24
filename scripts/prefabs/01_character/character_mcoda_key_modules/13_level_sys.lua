--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    1-4级，每级加5启蒙上限
    5级，激光不会消耗月能值
    6-9级，每级增加1.5%速度
    10级，增加55%防御
    11-14级，每级增加3月能值上限
    15级，增加10%防御
    16-24级，每级增加1月能值上限，1启蒙上限
    25级，免疫所有寒冷和冰冻，增加5%防御
    26-29级，每级增加1.5%速度
    30级，免疫所有炎热和火烧，增加5%防御
    31-34，每级增加1.5%速度
    35级，夜晚不再扣理智，落水不再扣血上限
    36-39级，每级增加1%防御
    40级，增加1%防御，建造东西消耗材料为一半
    41-50级，每级增加1月能值上限，1理智上限，1%移速

    死亡的时候 等级 -3

    TUNING[string.upper("moonlightcoda").."_HEALTH"] = 185
    TUNING[string.upper("moonlightcoda").."_HUNGER"] = 120
    TUNING[string.upper("moonlightcoda").."_SANITY"] = 160


]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    inst:ListenForEvent("moonlightcoda_master_postinit",function()

    

        ----------------------------------------------------------------------------------------------------------------------
        ---
            local damage_mult_inst = CreateEntity()
            damage_mult_inst:ListenForEvent("onremove",function()
                damage_mult_inst:Remove()
            end,inst)

            local level_modifier_inst = CreateEntity()
            level_modifier_inst:ListenForEvent("onremove",function()
                level_modifier_inst:Remove()
            end,inst)

            local level_modifer_inst_cold = CreateEntity()
            level_modifer_inst_cold:ListenForEvent("onremove",function()
                level_modifer_inst_cold:Remove()
            end,inst)

            local level_modifer_inst_hot = CreateEntity()
            level_modifer_inst_hot:ListenForEvent("onremove",function()
                level_modifer_inst_hot:Remove()
            end,inst)
        ----------------------------------------------------------------------------------------------------------------------
        ---
            inst:AddComponent("mcoda_com_level_sys")
            inst.components.mcoda_com_level_sys:SetLevelUpdateFn(function(inst,level)
                --------------------------------------------------------------------------------------------------------------
                ---- 公用参数表
                    local delta_speed = 0
                    local delta_damage_taken_mult = 0
                    -- local max_sanity = TUNING[string.upper("moonlightcoda").."_SANITY"]
                    local max_sanity_delta = 0
                    -- local max_health = TUNING[string.upper("moonlightcoda").."_HEALTH"]
                    local max_health_delta = 0
                --------------------------------------------------------------------------------------------------------------
                ---- 1-4级，每级加5启蒙上限  inst.components.sanity.max
                    if level >= 1 then
                        local sanity_level = math.clamp(level,1,4)
                        max_sanity_delta = max_sanity_delta + sanity_level * 5
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 5级，激光不会消耗月能值
                    if level >= 5 then
                        inst.components.mcoda_com_tag_sys:AddTag("laser_staff_cost_buff")
                    else
                        inst.components.mcoda_com_tag_sys:RemoveTag("laser_staff_cost_buff")
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 6-9级，每级增加1.5%速度
                    if level >= 6 then
                        local temp_speed_level = math.clamp(level,6,9) - 5
                        delta_speed = delta_speed + temp_speed_level * 0.015
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 10级，增加55%防御
                    if level >= 10 then
                        delta_damage_taken_mult = delta_damage_taken_mult + 0.55
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 11-14级，每级增加3月能值上限
                    if level >= 11 then
                        local temp_max_health_level = math.clamp(level,11,14) - 10
                        max_health_delta = max_health_delta + temp_max_health_level * 3
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 15级，增加10%防御
                    if level >= 15 then
                        delta_damage_taken_mult = delta_damage_taken_mult + 0.1
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 16-24级，每级增加1月能值上限，1启蒙上限
                    if level >= 16 then
                        local temp_max__level = math.clamp(level,16,24) - 15
                        max_health_delta = max_health_delta + temp_max__level
                        max_sanity_delta = max_sanity_delta + temp_max__level
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 25级，免疫所有寒冷和冰冻，增加5%防御
                    if level >= 25 then
                        delta_damage_taken_mult = delta_damage_taken_mult + 0.05
                        ---- 增加耐寒
                        inst.components.health:mcoda_Add_DoDelta_Modifer_fn(level_modifer_inst_cold,function(health,num,overtime,cause,...)
                            if num < 0 and cause == "cold" then
                                num = 0
                            end
                            return num
                        end)
                        
                        if inst.components.freezable then
                            inst.components.freezable.redirectfn = function()
                                return true
                            end
                        end

                    else
                        inst.components.health:mcoda_Remove_DoDelta_Modifer_fn(level_modifer_inst_cold)

                        if inst.components.freezable then
                            inst.components.freezable.redirectfn = nil
                        end

                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 26-29级，每级增加1.5%速度
                    if level >= 26 then
                        local temp__speed__level = math.clamp(level,26,29) - 25
                        delta_damage_taken_mult = delta_damage_taken_mult + 0.015 * temp__speed__level
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 30级，免疫所有炎热和火烧，增加5%防御
                    if level >= 30 then
                        delta_damage_taken_mult = delta_damage_taken_mult + 0.05
                        ---- 增加耐热
                            inst.components.health.externalfiredamagemultipliers:SetModifier(level_modifer_inst_hot,0) -- 被火焰直接烧掉血
                            inst.components.health:mcoda_Add_DoDelta_Modifer_fn(level_modifer_inst_hot,function(health,num,overtime,cause,...)
                                if num < 0 and cause == "hot" then
                                    num = 0
                                end
                                return num
                            end)
                    else
                        ---- 移除耐热
                            inst.components.health.externalfiredamagemultipliers:RemoveModifier(level_modifer_inst_hot)
                            inst.components.health:mcoda_Remove_DoDelta_Modifer_fn(level_modifer_inst_hot)
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 31-34，每级增加1.5%速度
                    if level >= 31 then
                        local temp___speed_level = math.clamp(level,31,34) - 30
                        delta_damage_taken_mult = delta_damage_taken_mult + temp___speed_level * 0.015
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 35级，夜晚不再扣理智，落水不再扣血上限
                    if level >= 35 then
                        inst.components.sanity:mcoda_Add_DoDelta_Modifer_fn(level_modifier_inst,function(com,num,overtime)
                            if TheWorld.state.isnight and num < 0 then
                                return 0
                            end
                            return num
                        end)
                        if inst.components.drownable then
                            inst.components.drownable.customtuningsfn = function(inst)
                                return {}
                            end
                        end                        
                    else
                        inst.components.sanity:mcoda_Remove_DoDelta_Modifer_fn(level_modifier_inst)
                        if inst.components.drownable then
                            inst.components.drownable.customtuningsfn = nil
                        end
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 36-39级，每级增加1%防御
                    if level >= 36 then
                        local temp___defense_level = math.clamp(level,36,39) - 35
                        delta_damage_taken_mult = delta_damage_taken_mult + temp___defense_level * 0.01
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 40级，增加1%防御，建造东西消耗材料为一半
                    if level >= 40 then
                        delta_damage_taken_mult = delta_damage_taken_mult + 0.01
                        inst.components.builder.ingredientmod = 0.5
                    else
                        inst.components.builder.ingredientmod = 1
                    end
                --------------------------------------------------------------------------------------------------------------
                ---- 41-50级，每级增加1月能值上限，1理智上限，1%移速
                    if level >= 41 then
                        local temp___delta_level = math.clamp(level,41,50) - 40
                        delta_speed = delta_speed + temp___delta_level * 0.01
                        max_sanity_delta = max_sanity_delta + temp___delta_level
                        max_health_delta = max_health_delta + temp___delta_level
                    end
                --------------------------------------------------------------------------------------------------------------
                --------------------------------------------------------------------------------------------------------------
                ---- 把参数应用到角色
                    inst.components.locomotor:SetExternalSpeedMultiplier(level_modifier_inst, "moonlightcoda_speed_by_level", 1+delta_speed)
                    -- inst.components.combat.externaldamagemultipliers:SetModifier(level_modifier_inst,1+delta_damage_taken_mult)  -- 造成伤害倍增
                    
                    delta_damage_taken_mult = math.clamp(delta_damage_taken_mult,0,1)
                    inst.components.combat.externaldamagetakenmultipliers:SetModifier(level_modifier_inst,1-delta_damage_taken_mult)

                    inst.components.sanity.max = max_sanity_delta + TUNING[string.upper("moonlightcoda").."_SANITY"]
                    inst.components.health.maxhealth = max_health_delta + TUNING[string.upper("moonlightcoda").."_HEALTH"]
                --------------------------------------------------------------------------------------------------------------
            end)
        ----------------------------------------------------------------------------------------------------------------------
        ---- 建造倍数 初始化检测
            local builder_ingredientmod_fn = function(inst)
                if inst.components.mcoda_com_level_sys:GetLevel() >= 40 then
                    inst.components.builder.ingredientmod = 0.5
                else
                    inst.components.builder.ingredientmod = 1
                end
            end
            inst:ListenForEvent("unequip",builder_ingredientmod_fn)
            inst:ListenForEvent("equip",builder_ingredientmod_fn)
        ----------------------------------------------------------------------------------------------------------------------
        ---- 死亡等级 -3
            inst:ListenForEvent("death",function(inst)
                inst.components.mcoda_com_level_sys:DoDelta(-3)
            end)
        ----------------------------------------------------------------------------------------------------------------------
        ---- 法杖触发的event
            inst:ListenForEvent("mcoda_level_up",function()
                inst.components.mcoda_com_level_sys:DoDelta(1)
            end)
        ----------------------------------------------------------------------------------------------------------------------
        ---- 穿越洞穴血量和San 保存
            inst.components.mcoda_com_level_sys:AddOnSaveFn(function(com)
                local current_health = inst.components.health.currenthealth
                local current_sanity = inst.components.sanity.current
                com:Set("current_health",current_health)
                com:Set("current_sanity",current_sanity)
            end)
            inst.components.mcoda_com_level_sys:AddOnLoadFn(function(com)
                local current_health = com:Get("current_health")
                if current_health then
                    inst.components.health.currenthealth = current_health
                end
                local current_sanity = com:Get("current_sanity")
                if current_sanity then
                    inst.components.sanity.current = current_sanity
                end
            end)
        ----------------------------------------------------------------------------------------------------------------------
        ---- 换角色保留等级
            if TUNING["moonlightcoda.Config"].LEVEL_RETENTION then

                inst:ListenForEvent("ms_playerreroll",function()
                    local current_level = inst.components.mcoda_com_level_sys:GetLevel()
                    TheWorld.components.mcoda_com_data:Set("mcoda_level_of_userid_"..tostring(inst.userid),current_level)
                end)
                inst:DoTaskInTime(0,function()
                    local level_form_world = TheWorld.components.mcoda_com_data:Get("mcoda_level_of_userid_"..tostring(inst.userid))
                    if level_form_world == nil or level_form_world <= 0 then
                        return
                    end
                    inst.components.mcoda_com_level_sys:DoDelta(level_form_world)
                    TheWorld.components.mcoda_com_data:Set("mcoda_level_of_userid_"..tostring(inst.userid),nil)
                end)
                
            end
        ----------------------------------------------------------------------------------------------------------------------
        ---- 补偿旧等级系统 的等级 物品
            inst:DoTaskInTime(0,function()
                local old_level_data = inst.components.mcoda_com_data:Get("mcoda_level")
                if old_level_data ~= nil then
                    for i = 1, old_level_data, 1 do
                        SpawnPrefab("moonlightcoda_equipment_moonlightdedication").Transform:SetPosition(inst.Transform:GetWorldPosition())
                    end
                    inst.components.mcoda_com_data:Set("mcoda_level",nil)
                end
            end)
        ----------------------------------------------------------------------------------------------------------------------


    end)
end