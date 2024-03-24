----------------------------------------------------------------------------------------------------------------------------------
--[[

     等级系统

]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_level_sys = Class(function(self, inst)
    self.inst = inst


    self.level = 0
    self.max_level = 50

    self._net_level_float = net_float(self.inst.GUID,"mcoda_com_level_sys_replica","mcoda_com_level_sys_replica")
    if not TheNet:IsDedicated() then
        self.inst:ListenForEvent("mcoda_com_level_sys_replica",function()
            self.level = self._net_level_float:value()
            self:ActiveLevelUpdate()
        end)
    end

end)
------------------------------------------------------------------------------------------------------------------------------
-----
    function mcoda_com_level_sys:SetLevel(num)
        self._net_level_float:set(num)
    end
    function mcoda_com_level_sys:GetLevel()
        return self._net_level_float:value()
    end
    function mcoda_com_level_sys:SetLevelUpdateFn(fn)
        self._level_update_fn = fn
    end
    function mcoda_com_level_sys:ActiveLevelUpdate()
        if self._level_update_fn then
            self._level_update_fn(self.inst,self.level)
        end
    end
------------------------------------------------------------------------------------------------------------------------------
return mcoda_com_level_sys







