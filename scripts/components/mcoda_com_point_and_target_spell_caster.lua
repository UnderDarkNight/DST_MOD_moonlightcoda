----------------------------------------------------------------------------------------------------------------------------------
--[[



]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_point_and_target_spell_caster = Class(function(self, inst)
    self.inst = inst


end,
nil,
{

})
---------------------------------------------------------------------------------------------------
----- cast spell 
    function mcoda_com_point_and_target_spell_caster:SetSpellFn(fn)
        if type(fn) == "function" then
            self.__spell_fn = fn
        end
    end
    function mcoda_com_point_and_target_spell_caster:CastSpell(doer,target,pt)
        if self.__spell_fn then
            return self.__spell_fn(self.inst,doer,target,pt)
        end
        return false
    end
---------------------------------------------------------------------------------------------------
return mcoda_com_point_and_target_spell_caster







