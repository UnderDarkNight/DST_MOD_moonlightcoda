-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    reviver

    3919: #. STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVETOPLAYER.BUSY
    3920: msgctxt "STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVETOPLAYER.BUSY"
    3921  msgid "I'll try again in a second."
    3922  msgstr "我马上再试试。"


    ACTIONS.GIVETOPLAYER.fn = function(act)


]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 
    local function GetStringsTable(prefab_name)
        return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name)
    end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




-- STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVETOPLAYER.MOONLIGHTCODA_REFUSE_REVIVER = "她拒绝了这份心意"
STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVETOPLAYER.MOONLIGHTCODA_REFUSE_REVIVER = GetStringsTable("MOONLIGHTCODA_REFUSE_REVIVER")["msg"]

local old_fn = ACTIONS.GIVETOPLAYER.fn
ACTIONS.GIVETOPLAYER.fn = function(act)
    if act.target and act.target.prefab == "moonlightcoda" and act.target:HasTag("playerghost") then
        return false,"MOONLIGHTCODA_REFUSE_REVIVER"
    end
    return old_fn(act)
end
