--------------------------------------------------------------------------------------------
------ 常用函数放 TUNING 里
--------------------------------------------------------------------------------------------
----- RPC 命名空间
TUNING["moonlightcoda.RPC_NAMESPACE"] = "moonlightcoda_RPC"


--------------------------------------------------------------------------------------------

TUNING["moonlightcoda.fn"] = {}
TUNING["moonlightcoda.fn"].GetStringsTable = function(prefab_name)
    -------- 读取文本表
    -------- 如果没有当前语言的问题，调取中文的那个过去
    -------- 节省重复调用运算处理
    if TUNING["moonlightcoda.fn"].GetStringsTable_last_prefab_name == prefab_name then
        return TUNING["moonlightcoda.fn"].GetStringsTable_last_table or {}
    end


    local LANGUAGE = "ch"
    if type(TUNING["moonlightcoda.Language"]) == "function" then
        LANGUAGE = TUNING["moonlightcoda.Language"]()
    elseif type(TUNING["moonlightcoda.Language"]) == "string" then
        LANGUAGE = TUNING["moonlightcoda.Language"]
    end
    local ret_table = prefab_name and TUNING["moonlightcoda.Strings"][LANGUAGE] and TUNING["moonlightcoda.Strings"][LANGUAGE][tostring(prefab_name)] or nil
    if ret_table == nil and prefab_name ~= nil then
        ret_table = TUNING["moonlightcoda.Strings"]["ch"][tostring(prefab_name)]
    end

    ret_table = ret_table or {}
    TUNING["moonlightcoda.fn"].GetStringsTable_last_prefab_name = prefab_name
    TUNING["moonlightcoda.fn"].GetStringsTable_last_table = ret_table

    return ret_table
end


--------------------------------------------------------------------------------------------
local function GetStringsTable(prefab_name)
    return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name)
end
--------------------------------------------------------------------------------------------