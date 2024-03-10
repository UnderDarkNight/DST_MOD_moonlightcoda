------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

]]--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 
    local function GetStringsTable(prefab_name)
        return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name)
    end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.HEAL = STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.HEAL or {}
STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.HEAL.MOONLIGHTCODA_HEAL_REFUSE = GetStringsTable("MOONLIGHTCODA_HEAL_REFUSE")["msg"]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddComponentPostInit("healer", function(self)

    local old_Heal_fn = self.Heal
    self.Heal = function(self,target,...)
        if target and target:HasTag("moonlightcoda") then
            return false,"MOONLIGHTCODA_HEAL_REFUSE"
        end
        return old_Heal_fn(self,target,...)
    end

end)