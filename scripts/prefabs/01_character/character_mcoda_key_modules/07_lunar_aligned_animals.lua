--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    不会被月亮联盟生物主动攻击
    如果主动攻击了月亮联盟生物，则一段时间内 处于仇恨状态

    需要配合hook 所有的combat 组件

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end
    inst:DoTaskInTime(0,function()

        local frendly_tag_name = "lunar_aligned_animal_frendly"
        local temp_task_timer = nil

        local function refresh_cd_task()
            inst.components.mcoda_com_tag_sys:RemoveTag(frendly_tag_name) --- 移除 tag

            if temp_task_timer then  --- 停掉已有计时器
                temp_task_timer:Cancel()
            end
            temp_task_timer = inst:DoTaskInTime(60,function()
                inst.components.mcoda_com_tag_sys:AddTag(frendly_tag_name) --- 重新上Tag
                temp_task_timer = nil
            end)

        end

        inst.components.mcoda_com_tag_sys:AddTag(frendly_tag_name) --- 上Tag
        
        inst:ListenForEvent("onhitother", function(_,_table)
            if _table and _table.target and _table.target:HasTag("lunar_aligned") then
                refresh_cd_task()
            end

        end)











    end)
end