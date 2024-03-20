--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    搬重物减速
    大力士 mightiness 组件利用

    TUNING.HEAVY_SPEED_MULT
    inst.components.locomotor:SetExternalSpeedMultiplier(inst, "fwd_in_pdt_carl_speed_mod", speed)
    inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "fwd_in_pdt_carl_speed_mod")

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end
    ---------------------------------------------------------------------
    --- 大力士组件，做动画上的辅助/脚步声音
        inst:AddComponent("mightiness")
        inst.components.mightiness.IsMighty = function(self)
            if inst.components.mcoda_com_tag_sys:HasTag("level_2") then
                return true
            end
            return false
        end
        inst.components.mightiness.DoDelta = function(self,...)        end
        inst.components.mightiness.BecomeState = function(self,...)        end
        inst.components.mightiness.UpdateSkinMode = function(self,...)        end
        inst.components.mightiness.OnHungerDelta = function(self,...)        end
        inst.components.mightiness.DoDec = function(self,...)        end
        inst.components.mightiness.CanTransform = function(self,...) return false end
    ---------------------------------------------------------------------

    ---------------------------------------------------------------------
    -- ---- 创建个临时 inst
    --     local speed_mult_inst = CreateEntity()
    --     speed_mult_inst:ListenForEvent("onremove",function()
    --         speed_mult_inst:Remove()
    --     end,inst)
    ---------------------------------------------------------------------

    inst:ListenForEvent("equip",function(inst,_table)
        if _table and _table.item and _table.item:HasTag("heavy") then
            if inst.components.mcoda_com_tag_sys:HasTag("level_2") then
                -- inst.components.locomotor:SetExternalSpeedMultiplier(speed_mult_inst, "coda_heavy_run", 1/TUNING.HEAVY_SPEED_MULT)
                inst:AddTag("mightiness_mighty")    --- client 端 走路动画需要
            end
        end
    end)
    inst:ListenForEvent("unequip",function(inst,_table)
        if _table and _table.item and _table.item:HasTag("heavy") then
            if inst.components.mcoda_com_tag_sys:HasTag("level_2") then
                -- inst.components.locomotor:RemoveExternalSpeedMultiplier(speed_mult_inst, "coda_heavy_run")
                inst:RemoveTag("mightiness_mighty")  --- client 端 走路动画需要
            end
        end
    end)
    inst:DoTaskInTime(0,function()
        if inst.replica.inventory:EquipHasTag("heavy") and inst.components.mcoda_com_tag_sys:HasTag("level_2") then
            inst:AddTag("mightiness_mighty")
        end
    end)

end