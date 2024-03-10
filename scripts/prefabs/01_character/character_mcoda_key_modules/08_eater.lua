--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

		if self.custom_stats_mod_fn ~= nil then
			health_delta, hunger_delta, sanity_delta = self.custom_stats_mod_fn(self.inst, health_delta, hunger_delta, sanity_delta, food, feeder)
		end

        无法通过吃东西和治疗物品(包括药膏蜘蛛腺之类的)恢复月能值   healer 组件
]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end
    inst:ListenForEvent("moonlightcoda_master_postinit", function(inst)

        inst.components.eater.custom_stats_mod_fn = function(inst, health_delta, hunger_delta, sanity_delta, food, feeder)
            return 0,hunger_delta,sanity_delta
        end

    end)
end