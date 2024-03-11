------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    影怪可见 ： transparentonsanity 靠这个组件检查 ThePlayer

]]--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddComponentPostInit("transparentonsanity", function(self)

    local old_CalcaulteTargetAlpha_fn = self.CalcaulteTargetAlpha
    self.CalcaulteTargetAlpha = function(self, ...)
        local origin_ret = old_CalcaulteTargetAlpha_fn(self, ...)
        if ThePlayer and ThePlayer:HasTag("moonlightcoda") and origin_ret < 0.4 then
            return 0.4
        end
        return origin_ret
    end

end)