--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----
    local function GetStringsTable(prefab_name)
        return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name or "moonlightcoda_talker_strings_exchange")
    end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    inst:DoTaskInTime(0,function()

        local exchange_say_strings = GetStringsTable() or {}

        local old_Say = inst.components.talker.Say
        inst.components.talker.Say = function(self,msg, ...)
            if exchange_say_strings[msg] then
                msg = exchange_say_strings[msg]
            end
            return old_Say(self,msg,...)
        end
        
    end)

end