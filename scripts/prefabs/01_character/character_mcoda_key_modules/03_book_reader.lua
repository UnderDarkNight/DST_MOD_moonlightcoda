--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_special_book_reader", function(_,replica_com)
        replica_com:AddBookTestFn("book_moon",function(book,doer)            
            return true
        end)
        -- replica_com:AddCommonBookTestFn(function(book,doer)
        --     return true            
        -- end)
    end)

    if TheWorld.ismastersim then
        inst:AddComponent("mcoda_com_special_book_reader")
    end

end