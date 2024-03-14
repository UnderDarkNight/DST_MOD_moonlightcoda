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
                ["only_used_by_waxwell_and_wicker"] = "It's gonna be a great night.",       --- 月之魔典使用后的话语
                ["only_used_by_winona"] = "Maybe next time",                                --- 被查理打第一下的话语

            },
            ["MOONLIGHTCODA_REFUSE_REVIVER"] = {
                ["msg"] = "She rejected the offer.",
            },
            ["MOONLIGHTCODA_HEAL_REFUSE"] = {
                ["msg"] = "This stuff doesn't work for me.",
            },
            ["MOONLIGHTCODA_SANITY_DOWN"] = {
                ["msg"] = "I don't feel so well.",
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
                ["name"] = STRINGS.NAMES[string.upper("dock_kit")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("dock_kit")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("dock_kit")],
            },
            ["moonlightcoda_spell_book_moon_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("book_moon")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("book_moon")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("book_moon")],
            },
            ["moonlightcoda_spell_moonrocknugget_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("moonrocknugget")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("moonrocknugget")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("moonrocknugget")],
            },
            ["moonlightcoda_spell_moonglass_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("moonglass")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("moonglass")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("moonglass")],
            },
            ["moonlightcoda_spell_purebrilliance_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("purebrilliance")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("purebrilliance")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("purebrilliance")],
            },
            ["moonlightcoda_spell_moonglass_trans_2_purebrilliance_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("purebrilliance")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("purebrilliance")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("purebrilliance")],
            },
            ["moonlightcoda_spell_opalpreciousgem_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("opalpreciousgem")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("opalpreciousgem")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("opalpreciousgem")],
            },
            ["moonlightcoda_spell_opalpreciousgem_maker_by_value"] = {
                ["name"] = STRINGS.NAMES[string.upper("opalpreciousgem")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("opalpreciousgem")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("opalpreciousgem")],
            },
            ["moonlightcoda_spell_opalstaff_maker"] = {
                ["name"] = STRINGS.NAMES[string.upper("opalstaff")],
                ["inspect_str"] = STRINGS.RECIPE_DESC[string.upper("opalstaff")],
                ["recipe_desc"] = STRINGS.RECIPE_DESC[string.upper("opalstaff")],
            },
        --------------------------------------------------------------------
        --- 06_equipment
            ["moonlightcoda_equipment_teleport_staff"] = {
                ["name"] = "MoonLight Teleport Staff",
                ["inspect_str"] = "Don't care about the forks in the road.",
                ["recipe_desc"] = "Don't care about the forks in the road.",
            },
            ["moonlightcoda_equipment_liturgy"] = {
                ["name"] = "The Liturgy of Moonlight",
                ["inspect_str"] = "Please keep your distance.",
                ["recipe_desc"] = "Please keep your distance.",
            },
            ["moonlightcoda_equipment_laser_staff"] = {
                ["name"] = "The Tingle of Moonlight",
                ["inspect_str"] = "Incision target",
                ["recipe_desc"] = "Incision target",
            },
            ["moonlightcoda_equipment_debate"] = {
                ["name"] = "The Debate of Moonlight",
                ["inspect_str"] = "Let's play it.",
                ["recipe_desc"] = "Let's play it.",
            },
        --------------------------------------------------------------------

}