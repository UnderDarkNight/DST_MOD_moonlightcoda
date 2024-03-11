--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    不会被月亮联盟生物主动攻击
    如果主动攻击了月亮联盟生物，则一段时间内 处于仇恨状态

    需要配合hook 所有的combat 组件

    不会被虚影攻击(类似启迪之冠的效果)  target_inventory:EquipHasTag("gestaltprotection")

    可以抵挡查理的一次攻击，抵挡之后说“下次再说吧。”


]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end
    ---------------------------------------------------------------------------------------------
    ----- 月亮联盟生物  战斗相关
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


    ---------------------------------------------------------------------------------------------
    ----- 免疫查理第一次攻击
        inst:ListenForEvent("moonlightcoda_master_postinit", function()
            inst.components.grue:SetResistance(1)
        end)
    ---------------------------------------------------------------------------------------------
    ----- 添加胡子装备栏的部件，和对应的事件
        local function beard_slot_item_check(inst)
            local beard_item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BEARD)
            if beard_item == nil or not beard_item:IsValid() then
                beard_item = SpawnPrefab("moonlightcoda_other_beard_container")
                beard_item:AddTag("gestaltprotection")  -- 防止被月岛虚影打。和启迪王冠一样
                inst.components.inventory:Equip(beard_item)
            end
        end
        inst:ListenForEvent("unequip", beard_slot_item_check)
        inst:ListenForEvent("equip", beard_slot_item_check)
        inst:ListenForEvent("ms_respawnedfromghost", beard_slot_item_check)
        inst:DoTaskInTime(0,beard_slot_item_check)
    ---------------------------------------------------------------------------------------------
end