---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    月光的洞洞
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_hole_shovel.zip"),
}
------------------------------------------------------------------------------------------------------------------------
----- 
    local function onequip(inst, owner)
        -- owner.AnimState:OverrideSymbol("swap_object", "moonlightcoda_equipment_hole_shovel_swap", "swap_object")
        owner.AnimState:OverrideSymbol("swap_object", "moonlightcoda_equipment_hole_shovel", "swap_shovel")
        owner.AnimState:Show("ARM_carry")
        owner.AnimState:Hide("ARM_normal")
    end

    local function onunequip(inst, owner)
        owner.AnimState:ClearOverrideSymbol("swap_object")
        owner.AnimState:Hide("ARM_carry")
        owner.AnimState:Show("ARM_normal")
    end
------------------------------------------------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("moonlightcoda_equipment_hole_shovel")
    inst.AnimState:SetBuild("moonlightcoda_equipment_hole_shovel")
    inst.AnimState:PlayAnimation("idle")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    MakeInventoryFloatable(inst, "med", 0.05, {0.85, 0.45, 0.85})

    inst.scrapbook_subcat = "tool"

    inst.entity:SetPristine()
    -----------------------------------------------------------------------------------------------------------------------------------------------
    ----- 施法组件
        inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_point_and_target_spell_caster",function(_,replica_com)
            replica_com:SetTestFn(function(inst,doer,target,pt,right_click)
                if not right_click then
                    return false
                end

                if target and target.prefab == "moon_fissure" then
                    return true
                end

                if pt and TheWorld.Map:IsLandTileAtPoint(pt.x,0,pt.z) and not TheWorld.Map:IsDockAtPoint(pt.x,0,pt.z) then
                    -- local tile = TheWorld.Map:GetTileAtPoint(pt.x,0,pt.z)
                    -- print(tile)
                    return true
                end

                return false
            end)
            replica_com:SetDistance(.5)
            replica_com:SetSGAction("dig_start")
            replica_com:SetText("moonlightcoda_equipment_hole_shovel",STRINGS.ACTIONS.DIG)
            -- replica_com:SetAllowCanCastOnImpassable(true)
            -- replica_com:SetPreActionFn(function(inst,doer,target,pt)
            --     if pt then
            --         print(pt.x,pt.y,pt.z)
            --     end
            -- end)
            replica_com:SetTextUpdateFn(function(inst,doer,target,pt)
                if target == nil and pt then
                    replica_com:SetText("moonlightcoda_equipment_hole_shovel","开挖")
                    return
                end
                replica_com:SetText("moonlightcoda_equipment_hole_shovel","挖掉")
            end)
            replica_com:SetPriority(10)
            -- replica_com:SetActionParamFn(function(inst,theAction)
            --     print("+++++++++++++++++++++++++++++++")
            --     for k, v in pairs(theAction) do
            --         print(k,v)
            --     end
            --     print("+++++++++++++++++++++++++++++++")

            -- end)


        end)
        if TheWorld.ismastersim then
            inst:AddComponent("mcoda_com_point_and_target_spell_caster")
            inst.components.mcoda_com_point_and_target_spell_caster:SetSpellFn(function(inst,doer,target,pt)
                
                ------------------------------------------------------------------------------------------------------------------------
                    inst.components.finiteuses:Use()
                ------------------------------------------------------------------------------------------------------------------------
                    ---- SpawnPrefab("moon_fissure")
                    if target and target.prefab == "moon_fissure" then
                        target:Remove()
                        return true
                    end

                    if pt then
                        SpawnPrefab("moon_fissure").Transform:SetPosition(pt.x, 0, pt.z)
                    end
                ------------------------------------------------------------------------------------------------------------------------
                
                return true
            end)
        end
    -----------------------------------------------------------------------------------------------------------------------------------------------

    if not TheWorld.ismastersim then
        return inst
    end


    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(0)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    -- inst.components.inventoryitem:ChangeImageName("cane")
    inst.components.inventoryitem.imagename = "moonlightcoda_equipment_hole_shovel"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_hole_shovel.xml"

    inst:AddComponent("equippable")

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    -- inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT
	inst.components.equippable.restrictedtag = "moonlightcoda"   --- 角色专属武器


    MakeHauntableLaunch(inst)
    -------------------------------------------------------------------
    --- 耐久度
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(100)
        inst.components.finiteuses:SetUses(100)
        inst.components.finiteuses:SetOnFinished(inst.Remove)
    -------------------------------------------------------------------
    --- 落水影子
        local function shadow_init(inst)
            if inst:IsOnOcean(false) then       --- 如果在海里（不包括船）
                -- inst.AnimState:Hide("SHADOW")
                inst.AnimState:PlayAnimation("water")
            else                                
                -- inst.AnimState:Show("SHADOW")
                inst.AnimState:PlayAnimation("idle")
            end
        end
        inst:ListenForEvent("on_landed",shadow_init)
        shadow_init(inst)
    -------------------------------------------------------------------
    return inst
end

return Prefab("moonlightcoda_equipment_hole_shovel", fn, assets)
