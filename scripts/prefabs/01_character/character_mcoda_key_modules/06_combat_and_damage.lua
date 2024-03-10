--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    function Combat:CalcDamage(target, weapon, multiplier)  官方 计算伤害的函数

    对暗影生物(包括暗影联盟生物)伤害为1.5
    受到暗影生物(包括暗影联盟生物)伤害为0.8
    可以抵挡查理的一次攻击，抵挡之后说“下次再说吧。”

    不会被虚影攻击(类似启迪之冠的效果)  target_inventory:EquipHasTag("gestaltprotection")

    不会被月亮联盟生物主动攻击

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end


    ---------------------------------------------------------------------------------------------
    ---- 对暗影阵营 增伤。不知道为什么，不能直接加，得延时添加
        inst:AddComponent("damagetypebonus")
        inst:DoTaskInTime(0,function()
            inst.components.damagetypebonus:AddBonus("shadow_aligned", inst, TUNING.MOONLIGHTCODA_DEBUGGING_MODE and 20 or 1.5)
        end)
    ---------------------------------------------------------------------------------------------
    ---- 对来自暗影阵营的伤害减少。
        inst:AddComponent("damagetyperesist")
        inst:DoTaskInTime(0,function()
            inst.components.damagetyperesist:AddResist("shadow_aligned", inst, TUNING.MOONLIGHTCODA_DEBUGGING_MODE and 0.01 or 0.8)
        end)
    ---------------------------------------------------------------------------------------------
    ----- 免疫BOSS的掉San 光环
        inst:ListenForEvent("moonlightcoda_master_postinit", function()
            inst.components.sanity:AddSanityAuraImmunity("epic")
        end)

    ---------------------------------------------------------------------------------------------
    ----- 免疫查理第一次攻击
        inst:ListenForEvent("moonlightcoda_master_postinit", function()
            inst.components.grue:SetResistance(1)
        end)
    ---------------------------------------------------------------------------------------------
    ----- 添加胡子装备栏的部件，和对应的事件
        local function beard_slot_item_check(inst)
            local beard_item = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
            if beard_item == nil or not beard_item:IsValid() then
                beard_item = SpawnPrefab("moonlightcoda_other_beard_container")
                beard_item:AddTag("gestaltprotection")  -- 防止被月岛虚影打。和启迪王冠一样
                inst.components.inventory:Equip(beard_item)
            end
        end
        inst:ListenForEvent("unequip", beard_slot_item_check)
        inst:ListenForEvent("equip", beard_slot_item_check)
        inst:ListenForEvent("ms_respawnedfromghost", beard_slot_item_check)
        inst:DoTaskInTime(0,beard_slot_item_check)
    ---------------------------------------------------------------------------------------------




end