----------------------------------------------------------------------------------------------------------------------------------
--[[

     
     
]]--
----------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_equipment_refuser = Class(function(self, inst)
    self.inst = inst

    self.DataTable = {}
    self._default_reason =  "XXXXXXXXX"

    ---------------------------------------------------------------------------
    ----
        local temp_com = self
    ---------------------------------------------------------------------------
    ---- 强行穿戴后触发
        inst:ListenForEvent("equip",function(_,_table)
            local item = _table and _table.item
            if not item then
                return
            end

            if self:IsRefuse(item) then
                inst:DoTaskInTime(0,function()
                    local reason = self:GetRefuseReason(item)
                    inst.components.talker:Say(reason)
                    inst.components.inventory:DropItem(item)
                end)
            end

        end)
    ---------------------------------------------------------------------------
    ----
        inst:DoTaskInTime(0,function()
            local old_Equip_fn = inst.components.inventory.Equip
            inst.components.inventory.Equip = function(self,item,...)
                if temp_com:IsRefuse(item) then
                    inst.components.inventory:SetActiveItem(nil)
                    inst.components.inventory:GiveItem(item)

                    inst:DoTaskInTime(0,function()
                        local reason = temp_com:GetRefuseReason(item)
                        inst.components.talker:Say(reason)
                    end)
                    return
                end
                old_Equip_fn(self,item,...)
            end
        end)
    ---------------------------------------------------------------------------

end,
nil,
{

})


----------------------------------------------------------------------------------------------------------------------------------
--- 拒绝说话文本
    function mcoda_com_equipment_refuser:SetDefaultReason(str)
        self._default_reason = str
    end
    function mcoda_com_equipment_refuser:AddRefuseReason(item_prefab,str)
        self.DataTable[item_prefab] = str
    end
    function mcoda_com_equipment_refuser:GetRefuseReason(item)
        return self.DataTable[item.prefab] or self._default_reason
    end

----------------------------------------------------------------------------------------------------------------------------------
----
    function mcoda_com_equipment_refuser:IsRefuse(item)
        return self.inst.replica.mcoda_com_equipment_refuser:IsRefuse(item)
    end
----------------------------------------------------------------------------------------------------------------------------------



return mcoda_com_equipment_refuser






