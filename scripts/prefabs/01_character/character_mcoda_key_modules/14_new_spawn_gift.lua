--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    local flag_index = "new_spawn_gift_flag"
    
    inst:DoTaskInTime(0,function()
        if inst.components.mcoda_com_data:Get(flag_index) then
            return
        end
        inst.components.mcoda_com_data:Set(flag_index,true)

        ------------------------------------------------------
        ---- moonglass  3 个
            local item_1 = SpawnPrefab("moonglass")
            item_1.components.stackable.stacksize = 3
            inst.components.inventory:GiveItem(item_1)
        ------------------------------------------------------
        ---- purebrilliance  3 个
            local item_2 = SpawnPrefab("purebrilliance")
            item_2.components.stackable.stacksize = 3
            inst.components.inventory:GiveItem(item_2)
        ------------------------------------------------------
    end)


    

end