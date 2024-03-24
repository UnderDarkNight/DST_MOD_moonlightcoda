----------------------------------------------------------------------------------------------------------------------------------
--[[

     等级系统

]]--
----------------------------------------------------------------------------------------------------------------------------------
---
    local function level_update(self,num)
        local replica_com = self.inst.replica.mcoda_com_level_sys or self.inst.replica._.mcoda_com_level_sys
        if replica_com then
            replica_com:SetLevel(num)
        end
    end
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_level_sys = Class(function(self, inst)
    self.inst = inst

    self.DataTable = {}
    self.TempTable = {}
    self._onload_fns = {}
    self._onsave_fns = {}

    self.level = 0
    self.max_level = 50

end,
nil,
{
    level = level_update,
})
------------------------------------------------------------------------------------------------------------------------------
----- onload/onsave 函数
    function mcoda_com_level_sys:AddOnLoadFn(fn)
        if type(fn) == "function" then
            table.insert(self._onload_fns, fn)
        end
    end
    function mcoda_com_level_sys:ActiveOnLoadFns()
        for k, temp_fn in pairs(self._onload_fns) do
            temp_fn(self)
        end
    end
    function mcoda_com_level_sys:AddOnSaveFn(fn)
        if type(fn) == "function" then
            table.insert(self._onsave_fns, fn)
        end
    end
    function mcoda_com_level_sys:ActiveOnSaveFns()
        for k, temp_fn in pairs(self._onsave_fns) do
            temp_fn(self)
        end
    end
------------------------------------------------------------------------------------------------------------------------------
----- 数据读取/储存

    function mcoda_com_level_sys:Get(index)
        if index then
            return self.DataTable[index]
        end
        return nil
    end
    function mcoda_com_level_sys:Set(index,theData)
        if index then
            self.DataTable[index] = theData
        end
    end

    function mcoda_com_level_sys:Add(index,num)
        if index then
            self.DataTable[index] = (self.DataTable[index] or 0) + ( num or 0 )
            return self.DataTable[index]
        end
        return 0
    end
------------------------------------------------------------------------------------------------------------------------------
-----
    function mcoda_com_level_sys:SetLevelUpdateFn(fn)
        self._level_update_fn = fn
    end
    function mcoda_com_level_sys:ActiveLevelUpdate()
        if self._level_update_fn then
            self._level_update_fn(self.inst,self.level)
        end
    end
    function mcoda_com_level_sys:DoDelta(num)
        self.level = math.clamp(self.level + num, 0, self.max_level)
        self:ActiveLevelUpdate()
    end
    function mcoda_com_level_sys:GetLevel()
        return self.level
    end
------------------------------------------------------------------------------------------------------------------------------
    function mcoda_com_level_sys:OnSave()
        self:ActiveOnSaveFns()
        local data =
        {
            DataTable = self.DataTable,
            level = self.level,
        }
        return next(data) ~= nil and data or nil
    end

    function mcoda_com_level_sys:OnLoad(data)
        if data.DataTable then
            self.DataTable = data.DataTable
        end
        if data.level then
            self.level = data.level
        end
        self:ActiveLevelUpdate()
        self:ActiveOnLoadFns()
    end
------------------------------------------------------------------------------------------------------------------------------
return mcoda_com_level_sys







