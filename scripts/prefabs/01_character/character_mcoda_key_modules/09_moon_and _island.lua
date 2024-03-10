--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    除了月黑的夜晚，会缓慢回复月能值(速度为睡觉的1/3)，月圆会快速恢复月能值(和睡觉一样)

    在月岛，除了月黑当天，其他时间会回复月能值(睡觉速度的1/2)，
    
    月岛和夜晚恢复不叠加，月圆时按月圆的速度

    time : TUNING.SLEEP_TICK_PERIOD                                     --- 时间间隔   DoPeriodicTask
    health_dodelta(tent) : TUNING.SLEEP_HEALTH_PER_TICK * 2             -- 单次治疗量（帐篷）


    ThePlayer.components.sanity:IsLunacyMode()   --- 启蒙状态

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    ----------------------------------------------------------------------------------------------------------------------------------------------------------
    ----- 
            local health_task = nil
            local need_2_turn_off_by_world_state = true
            local need_2_turn_off_by_outside_island = true

            local function cancel_task()
                if health_task then
                    health_task:Cancel()
                    health_task = nil
                end
            end

            local function task_start_check()
                if need_2_turn_off_by_world_state and need_2_turn_off_by_outside_island then
                    cancel_task()
                    -- if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
                    --     TheNet:Announce("月能值 恢复 关闭")
                    -- end
                    return
                end

                if health_task ~= nil then
                    return
                end
                -- if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
                --     TheNet:Announce("开始 月能值 恢复")
                -- end


                health_task = inst:DoPeriodicTask(TUNING.SLEEP_TICK_PERIOD,function()
                    local delta_num = TUNING.SLEEP_HEALTH_PER_TICK * 2
                    if inst.components.sanity:IsLunacyMode() then   --- 启蒙状态
                        if TheWorld.state.isnewmoon then
                            delta_num = delta_num/2
                        end
                    else                                            --- 非启蒙状态
                        if TheWorld.state.isnight then
                            if TheWorld.state.isnewmoon then
                                delta_num = 0
                            else
                                delta_num = delta_num/3
                            end
                        end
                    end
                    -- if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
                    --     print("moon heal num",delta_num)
                    -- end
                    inst.components.health:DoDelta(delta_num,true)

                end)

            end


        ------------------------------------------------------------------------------
        --- 夜晚检查
                local function event_check_fn()
                    inst:DoTaskInTime(2,function()
                            ---- 洞里
                                if TheWorld:HasTag("cave") then
                                    need_2_turn_off_by_world_state = true
                                    task_start_check()
                                    return
                                end
                            ---- 非夜晚
                                if not TheWorld.state.isnight then  
                                    need_2_turn_off_by_world_state = true
                                    task_start_check()
                                    return
                                end
                            ---- 新月
                                if TheWorld.state.isnewmoon then
                                    need_2_turn_off_by_world_state = true
                                    task_start_check()
                                    return
                                end


                            ---- 最终确定
                                if TheWorld.state.isnight then
                                    need_2_turn_off_by_world_state = false
                                    task_start_check()
                                end

                    end)
                end

                inst:WatchWorldState("cycles",event_check_fn)
                inst:WatchWorldState("isnight",event_check_fn)
                inst:WatchWorldState("isday",event_check_fn)
                inst:WatchWorldState("isdusk",event_check_fn)
                inst:WatchWorldState("isfullmoon",event_check_fn)
                inst:WatchWorldState("isnewmoon",event_check_fn)
                inst:WatchWorldState("moonphase",event_check_fn)
                inst:DoTaskInTime(1,event_check_fn)
        ------------------------------------------------------------------------------
        --- 启蒙状态监听
                inst:ListenForEvent("sanitymodechanged",function()
                    if inst.components.sanity:IsLunacyMode() then
                        need_2_turn_off_by_outside_island = false
                    else
                        need_2_turn_off_by_outside_island = true
                    end
                    task_start_check()
                end)
        ------------------------------------------------------------------------------

    ----------------------------------------------------------------------------------------------------------------------------------------------------------
end