--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    吃指定的东西

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 吃物品的逻辑列表组件
    local test_oneat_fns = {
        -------------------------------------------------------
        --- 玻璃
            ["moonglass"] = {
                ["test"] = function(item,doer)
                    return true
                end,
                ["oneat"] = function(item,doer)
                    item.components.stackable:Get():Remove()
                    doer.components.health:DoDelta(15)
                    doer.components.sanity:DoDelta(35)
                    return true
                end,
                fasteat = true,
            },
        -------------------------------------------------------
        --- 纯粹辉煌
            ["purebrilliance"] = {
                ["test"] = function(item,doer)
                    return true
                end,
                ["oneat"] = function(item,doer)
                    item.components.stackable:Get():Remove()
                    doer.components.health:DoDelta(15)
                    doer.components.sanity:DoDelta(35)
                    return true
                end,
                fasteat = true,
            },
        -------------------------------------------------------

    }


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)

    inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_player_anything_eater", function(_,replica_com)
        for item_prefab, fns in pairs(test_oneat_fns) do
            replica_com:AddItemTestFn(item_prefab, fns.test, fns.fasteat or false)
        end
    end)

    if TheWorld.ismastersim then
        inst:AddComponent("mcoda_com_player_anything_eater")
        for item_prefab, fns in pairs(test_oneat_fns) do
            inst.components.mcoda_com_player_anything_eater:AddItemOnEatFn(item_prefab, fns.oneat)
        end
    end

end