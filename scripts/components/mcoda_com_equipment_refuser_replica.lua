----------------------------------------------------------------------------------------------------------------------------------
--[[

     
     
]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_equipment_refuser = Class(function(self, inst)
    self.inst = inst

    self.DataTable = {}
end,
nil,
{

})



----------------------------------------------------------------------------------------------------------------------------------
--- Test
    function mcoda_com_equipment_refuser:AddItem(item_prefab)
        self.DataTable[item_prefab] = true
    end
    function mcoda_com_equipment_refuser:IsRefuse(item)
        return self.DataTable[item.prefab] ~= nil
    end
----------------------------------------------------------------------------------------------------------------------------------


return mcoda_com_equipment_refuser






