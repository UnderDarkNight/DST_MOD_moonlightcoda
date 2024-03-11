--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    理智小于100大于70 每4分钟 刷一个影怪(只会刷300血的那个爬行恐惧) 上限一只
    理智小于70大于30 每2分钟 刷一个影怪(也是只会刷300血那个) 上限一只
    理智小于30 每1分钟 刷一个影怪(两种影怪随机) 上限两只

    逻辑转置：
        计时器 60分 执行刷怪逻辑
        理智小于30     每秒 + 1 分数。
        理智30-70.     每秒 + 0.5 分数
        理智70-100      每秒 + 0.25  分数
        理智大于100     每秒 + 0 分数

    逻辑转置2：
        计时器 60分 执行刷怪逻辑
        理智小于30     每3秒 + 3 分数。
        理智30-70.     每3秒 + 1.5 分数
        理智70-100      每2秒 + 0.75  分数
        理智大于100     每秒 + 0 分数

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    local shadow_monster_creatures = {
        ents = {

        },
    }

    local function spawn_shadow_creature(current_sanity)
        local new_ents = {}
        for k, temp_monster in pairs(shadow_monster_creatures.ents) do
            if not IsEntityDead(temp_monster) and temp_monster:IsValid() then
                table.insert(new_ents, temp_monster)
            end
        end
        shadow_monster_creatures.ents = new_ents

        if #shadow_monster_creatures.ents >= 2 then
            return
        end

        if current_sanity < 30 then
            local need_2_spawn_num = 2 - #shadow_monster_creatures.ents
            if need_2_spawn_num <= 0 then
                return
            end
            for i = 1, need_2_spawn_num,1 do
                TheWorld.components.shadowcreaturespawner:SpawnShadowCreature(inst,shadow_monster_creatures)
            end
            return
        end

        if current_sanity < 100 and #shadow_monster_creatures.ents < 1 then
            TheWorld.components.shadowcreaturespawner:SpawnShadowCreature(inst,shadow_monster_creatures)
            return
        end
    end

    inst:DoPeriodicTask(3,function()
        local current_sanity = inst.components.sanity.current

        ------ 理智高了，清空计时器
            if current_sanity >= 100 then
                inst.components.mcoda_com_data:Set("shadow_creature_spawner_timer",0)
                return
            end
        ------ 启蒙状态，清空计时器
            if inst.components.sanity:IsLunacyMode() then
                inst.components.mcoda_com_data:Set("shadow_creature_spawner_timer",0)
                return
            end
        ------ 根据san 添加计时
            local timer_delta_num = 0
            if current_sanity < 30 then     ---  < 30
                timer_delta_num = 3
            elseif current_sanity < 70 then     ---- 30 - 70
                timer_delta_num = 1.5
            elseif current_sanity < 100 then    ---- 70 - 100
                timer_delta_num = 0.75
            end
        --- 测试模式 5 倍计数
            if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
                timer_delta_num = timer_delta_num * 5
            end
        ----
            local ret_num = inst.components.mcoda_com_data:Add("shadow_creature_spawner_timer",timer_delta_num)

        -- --- 测试模式打印log
        --     if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
        --         print("shadow_creature_spawner_timer",ret_num)
        --     end

        ---- 时间到了，执行刷怪
            if ret_num >= 60 then
                spawn_shadow_creature(current_sanity)
                inst.components.mcoda_com_data:Add("shadow_creature_spawner_timer",-60)
            end

    end)

end