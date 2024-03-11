--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    利用胡子容器 的 lootdropper
    local beard_item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BEARD)

    月能值（health)特殊：
		月能值低于70，每一分钟生产一个玻璃(最好掉在地上，也可以在制作栏里)
		月能值低于45，每半分钟生产一个玻璃(最好掉在地上，也可以在制作栏里)

    转置：
        计时器 60点数
        低于70    每秒 + 1 点       每3秒 + 3 点
        低于45    每秒 + 2 点       每3秒 + 6 点

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    local function DropItemByPrefab(item_prefab,num)
        item_prefab = item_prefab or "moonglass"
        num = num or 1

        local beard_item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BEARD)
        if beard_item == nil or not beard_item:IsValid() then
            beard_item = SpawnPrefab("moonlightcoda_other_beard_container")
            inst.components.inventory:Equip(beard_item)
        end

        if beard_item and beard_item.components.lootdropper then
            for i = 1, num, 1 do
                beard_item.components.lootdropper:SpawnLootPrefab(item_prefab)                
            end
        end

    end



    inst:DoPeriodicTask(3,function()
        -------- 死了就不管了
            if inst:HasTag("playerghost") then
                return 
            end

        local current_health = inst.components.health.currenthealth
        -------- 超出了就不做后面的事
            if current_health > 70 then
                inst.components.mcoda_com_data:Set("item_lootdropper_timer",0)
                return
            end

        -------- 累计的时间
            local timer_num = 0
            if current_health < 45 then
                timer_num = 6
            elseif current_health < 70 then
                timer_num = 3
            end
        ------- 测试模式 加速5倍
            if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
                timer_num = timer_num * 5
            end

        local ret_num = inst.components.mcoda_com_data:Add("item_lootdropper_timer",timer_num)

        -------- 测试模式 输出计时器数值
            -- if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
            --     print(" item_lootdropper_timer: "..ret_num)
            -- end

        -------- 计算和丢东西
            if ret_num >= 60 then
                DropItemByPrefab("moonglass")
                inst.components.mcoda_com_data:Add("item_lootdropper_timer",-60)
            end
    end)

end