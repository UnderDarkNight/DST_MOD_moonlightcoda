if TUNING["moonlightcoda.Strings"] == nil then
    TUNING["moonlightcoda.Strings"] = {}
end

local this_language = "en"
if TUNING["moonlightcoda.Language"] then
    if type(TUNING["moonlightcoda.Language"]) == "function" and TUNING["moonlightcoda.Language"]() ~= this_language then
        return
    elseif type(TUNING["moonlightcoda.Language"]) == "string" and TUNING["moonlightcoda.Language"] ~= this_language then
        return
    end
end

TUNING["moonlightcoda.Strings"][this_language] = TUNING["moonlightcoda.Strings"][this_language] or {
        --------------------------------------------------------------------
        --- 正在debug 测试的
            -- ["moonlightcoda_skin_test_item"] = {
            --     ["name"] = "en皮肤测试物品",
            --     ["inspect_str"] = "en inspect单纯的测试皮肤",
            --     ["recipe_desc"] = " en 测试描述666",
            -- },        
        --------------------------------------------------------------------
        --- 特殊
            ["moonlightcoda_talker_strings_exchange"] = {
                ["only_used_by_waxwell_and_wicker"] = "It's gonna be a great night.",
            },
            ["MOONLIGHTCODA_REFUSE_REVIVER"] = {
                ["msg"] = "She rejected the offer.",
            },
        --------------------------------------------------------------------
        --- 
            ["mcoda_com_equipment_refuser"] = {
                ["default_reason"] = "I don't like this equipment",
                ["armor_sanity"] = "This one is too dark",
                ["nightsword"] = "This one's too dirty",
                ["skeletonhat"] = "This one should be taken to the soup",
                ["armorskeleton"] = "This one should be taken to the soup",
                ["armor_voidcloth"] = "It's too shabby.",
                ["voidclothhat"] = "This is in the way of my pretty face",
                ["dreadstonehat"] = "This one's too heavy in head",
                ["armordreadstone"] = "This one's too hard",
                ["purpleamulet"] = "This one's not delicate enough",
            },
        --------------------------------------------------------------------
            --- 02_items
            ["moonlightcoda_item_moon_island_detector"] = {
                ["name"] = "Moon Island Detector",
                ["inspect_str"] = "Pointing to important places",
                ["recipe_desc"] = "Pointing to important places",
                ["action"] = "launch detection",
            },
        --------------------------------------------------------------------
        --- 05_spells
            ["moonlightcoda_spell_dock_kit_maker"] = {
                ["name"] = STRINGS.NAMES.DOCK_KIT,
                ["inspect_str"] = STRINGS.RECIPE_DESC.DOCK_KIT,
                ["recipe_desc"] = STRINGS.RECIPE_DESC.DOCK_KIT,
            },
            ["moonlightcoda_spell_book_moon_maker"] = {
                ["name"] = STRINGS.NAMES.BOOK_MOON,
                ["inspect_str"] = STRINGS.RECIPE_DESC.BOOK_MOON,
                ["recipe_desc"] = STRINGS.RECIPE_DESC.BOOK_MOON,
            },
        --------------------------------------------------------------------

}