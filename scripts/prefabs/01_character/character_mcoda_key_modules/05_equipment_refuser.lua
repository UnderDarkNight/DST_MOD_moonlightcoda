--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    影甲，影刀，骨头盔甲，骨头头盔，虚空长袍，虚空帽，绝望石盔甲，绝望石头盔，梦魇护符
    armor_sanity nightsword skeletonhat armorskeleton armor_voidcloth voidclothhat dreadstonehat armordreadstone purpleamulet
]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---
    local function GetStringsTable(prefab_name)
        return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name or "mcoda_com_equipment_refuser")
    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---
    local refuse_items = {
        -- ["hambat"] = GetStringsTable()["hambat"] or "火腿不是用来打架的",
        ["armor_sanity"] = GetStringsTable()["armor_sanity"] or GetStringsTable()["default_reason"],
        ["nightsword"] = GetStringsTable()["nightsword"] or GetStringsTable()["default_reason"],
        ["skeletonhat"] = GetStringsTable()["skeletonhat"] or GetStringsTable()["default_reason"],
        ["armorskeleton"] = GetStringsTable()["armorskeleton"] or GetStringsTable()["default_reason"],
        ["armor_voidcloth"] = GetStringsTable()["armor_voidcloth"] or GetStringsTable()["default_reason"],
        ["voidclothhat"] = GetStringsTable()["voidclothhat"] or GetStringsTable()["default_reason"],
        ["dreadstonehat"] = GetStringsTable()["dreadstonehat"] or GetStringsTable()["default_reason"],
        ["armordreadstone"] = GetStringsTable()["armordreadstone"] or GetStringsTable()["default_reason"],
        -- ["purpleamulet"] = GetStringsTable()["purpleamulet"] or GetStringsTable()["default_reason"],
    }
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_equipment_refuser", function(_,replica_com)
        for item_prefab, refuse_reason in pairs(refuse_items) do
            replica_com:AddItem(item_prefab)
        end
    end)

    if TheWorld.ismastersim then
        inst:AddComponent("mcoda_com_equipment_refuser")
        for item_prefab, refuse_reason in pairs(refuse_items) do
            inst.components.mcoda_com_equipment_refuser:AddRefuseReason(item_prefab, refuse_reason)
        end

    end
end