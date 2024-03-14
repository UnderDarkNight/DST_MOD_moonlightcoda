if TUNING["moonlightcoda.Strings"] == nil then
    TUNING["moonlightcoda.Strings"] = {}
end

local this_language = "ch"
-- if TUNING["moonlightcoda.Language"] then
--     if type(TUNING["moonlightcoda.Language"]) == "function" and TUNING["moonlightcoda.Language"]() ~= this_language then
--         return
--     elseif type(TUNING["moonlightcoda.Language"]) == "string" and TUNING["moonlightcoda.Language"] ~= this_language then
--         return
--     end
-- end

--------- 默认加载中文文本，如果其他语言的文本缺失，直接调取 中文文本。 03_TUNING_Common_Func.lua
--------------------------------------------------------------------------------------------------
--- 默认显示名字:  name
--- 默认显示描述:  inspect_str
--- 默认制作栏描述: recipe_desc
--------------------------------------------------------------------------------------------------
TUNING["moonlightcoda.Strings"][this_language] = TUNING["moonlightcoda.Strings"][this_language] or {
        --------------------------------------------------------------------
        --- 正在debug 测试的
            ["moonlightcoda_skin_test_item"] = {
                ["name"] = "皮肤测试物品",
                ["inspect_str"] = "inspect单纯的测试皮肤",
                ["recipe_desc"] = "测试描述666",
            },
        --------------------------------------------------------------------
        --- 特殊
            ["moonlightcoda_talker_strings_exchange"] = {
                ["only_used_by_waxwell_and_wicker"] = "今晚将是个美妙的夜晚",   --- 月之魔典使用后的话语
                ["only_used_by_winona"] = "下次再说吧",                        --- 被查理打第一下的话语
            },
            ["MOONLIGHTCODA_REFUSE_REVIVER"] = {
                ["msg"] = "她拒绝了这份心意",
            },
            ["MOONLIGHTCODA_HEAL_REFUSE"] = {
                ["msg"] = "这东西对我没用",
            },
            ["MOONLIGHTCODA_SANITY_DOWN"] = {
                ["msg"] = "我感觉不太好",
            },
        --------------------------------------------------------------------
        --- 组件动作
            ["mcoda_com_equipment_refuser"] = {
                ["default_reason"] = "想都别想",
                ["armor_sanity"] = "这个太黑了",
                ["nightsword"] = "这个太脏了",
                ["skeletonhat"] = "这个就该拿去煲汤",
                ["armorskeleton"] = "这个就该拿去煲汤",
                ["armor_voidcloth"] = "太破烂了",
                ["voidclothhat"] = "这个挡着我漂亮的脸蛋了",
                ["dreadstonehat"] = "这个顶头上太沉了",
                ["armordreadstone"] = "这个太硬了",
                ["purpleamulet"] = "这个不够精致",
            },
        --------------------------------------------------------------------
        --- 02_items
            ["moonlightcoda_item_moon_island_detector"] = {
                ["name"] = "月岛探测仪",
                ["inspect_str"] = "通往重要之地",
                ["recipe_desc"] = "通往重要之地",
                ["action"] = "启动探测",
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
                ["name"] = "月能传送法杖",
                ["inspect_str"] = "不需要在乎这些岔道",
                ["recipe_desc"] = "不需要在乎这些岔道",
            },
            ["moonlightcoda_equipment_liturgy"] = {
                ["name"] = "月光的礼仪",
                ["inspect_str"] = "请保持距离",
                ["recipe_desc"] = "请保持距离",
            },
            ["moonlightcoda_equipment_laser_staff"] = {
                ["name"] = "月光的刺痛",
                ["inspect_str"] = "切开目标",
                ["recipe_desc"] = "切开目标",
            },
            ["moonlightcoda_equipment_debate"] = {
                ["name"] = "月光的议论",
                ["inspect_str"] = "演奏吧",
                ["recipe_desc"] = "演奏吧",
            },
            ["moonlightcoda_equipment_hole_shovel"] = {
                ["name"] = "月洞铲铲",
                ["inspect_str"] = "弄出或者填平一个洞洞",
                ["recipe_desc"] = "弄出或者填平一个洞洞",
            },
            ["moonlightcoda_equipment_guard_from_moon"] = {
                ["name"] = "月之加护",
                ["inspect_str"] = "月光的保护",
                ["recipe_desc"] = "月光的保护",
            },
            ["moonlightcoda_equipment_guidance_from_moon"] = {
                ["name"] = "月之指引",
                ["inspect_str"] = "月光的指引",
                ["recipe_desc"] = "月光的指引",
            },
        --------------------------------------------------------------------
}

