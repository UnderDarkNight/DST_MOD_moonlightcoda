---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    月之加护
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_guard_from_moon.zip"),
}
------------------------------------------------------------------------------------------------------------------------
----- 
    local function onequip(inst, owner)
        owner.AnimState:OverrideSymbol("swap_body", "moonlightcoda_equipment_guard_from_moon", "guard_amulets")
        if owner:HasTag("player") then
            inst:PushEvent("amult_onequipped",owner)
        end
    end

    local function onunequip(inst, owner)
        owner.AnimState:ClearOverrideSymbol("swap_body")
        if owner:HasTag("player") then
            inst:PushEvent("amult_unequipped",owner)
        end
    end
------------------------------------------------------------------------------------------------------------------------
-----
    local function amulet_func_setup(inst)
        local function player_attacked_finiteuses()
            inst.components.finiteuses:Use()
            -- print("info player_attacked_finiteuses")
        end
        inst:ListenForEvent("amult_onequipped",function(inst,owner)

            --------- 85%的防御
                if owner.components.combat then
                    owner.components.combat.externaldamagetakenmultipliers:SetModifier(inst,1-0.85)
                end
            --------- 任何掉San 屏蔽
                if owner.components.sanity then
                    owner.components.sanity:mcoda_Add_DoDelta_Modifer_fn(inst,function(sanity,num,...)
                        if num < 0 then
                            num = 0
                        end
                        return num
                    end)
                end
            -------- 耐久度消耗
                inst:ListenForEvent("attacked",player_attacked_finiteuses,owner)


        end)
        inst:ListenForEvent("amult_unequipped",function(inst,owner)
            if owner.components.combat then
                owner.components.combat.externaldamagetakenmultipliers:RemoveModifier(inst)
            end
            if owner.components.sanity then
                owner.components.sanity:mcoda_Remove_DoDelta_Modifer_fn(inst)
            end
            inst:RemoveEventCallback("attacked",player_attacked_finiteuses,owner)
        end)
    end
------------------------------------------------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("moonlightcoda_equipment_guard_from_moon")
    inst.AnimState:SetBuild("moonlightcoda_equipment_guard_from_moon")
    inst.AnimState:PlayAnimation("idle")


    MakeInventoryFloatable(inst)


    inst.entity:SetPristine()
    -----------------------------------------------------------------------------------------------------------------------------------------------
    ----- 物品接受组件
        inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_acceptable",function(_,replica_com)
            replica_com:SetTestFn(function(inst,item,doer)
                if inst.replica.inventoryitem:IsGrandOwner(doer) and item and item.prefab == "moonglass" then
                    return true
                end
            end)
            replica_com:SetSGAction("dolongaction")
            replica_com:SetText("moonlightcoda_equipment_guard_from_moon",STRINGS.ACTIONS.REPAIR.GENERIC)
        end)
        if TheWorld.ismastersim then
            inst:AddComponent("mcoda_com_acceptable")
            inst.components.mcoda_com_acceptable:SetOnAcceptFn(function(inst,item,doer)
                item.components.stackable:Get():Remove()
                local old_percent = inst.components.finiteuses:GetPercent()
                local new_percent = old_percent + 0.35
                if new_percent > 1 then
                    new_percent = 1 
                end
                inst.components.finiteuses:SetPercent(new_percent)
                return true
            end)
        end

    -----------------------------------------------------------------------------------------------------------------------------------------------

    if not TheWorld.ismastersim then
        return inst
    end


    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    -- inst.components.inventoryitem:ChangeImageName("cane")
    inst.components.inventoryitem.imagename = "moonlightcoda_equipment_guard_from_moon"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_guard_from_moon.xml"

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = TUNING["moonlightcoda.equip_slot"]:GetAmuletType() or EQUIPSLOTS.BODY
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
	-- inst.components.equippable.restrictedtag = "moonlightcoda"   --- 角色专属武器


    MakeHauntableLaunch(inst)
    -------------------------------------------------------------------
    --- 耐久度
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(100)
        inst.components.finiteuses:SetUses(100)
        inst.components.finiteuses:SetOnFinished(inst.Remove)
    -------------------------------------------------------------------
    --- func setup
        amulet_func_setup(inst)
    -------------------------------------------------------------------
    return inst
end

return Prefab("moonlightcoda_equipment_guard_from_moon", fn, assets)
