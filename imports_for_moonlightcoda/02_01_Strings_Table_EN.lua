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

}