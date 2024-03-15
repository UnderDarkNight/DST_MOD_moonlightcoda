---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    传送法杖
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_teleport_staff.zip"),
    Asset("ANIM", "anim/moonlightcoda_equipment_teleport_staff_swap.zip"),
}
-------------------------------------------------------------------------------------------
    local function onequip(inst, owner)

        owner.AnimState:OverrideSymbol("swap_object", "moonlightcoda_equipment_teleport_staff_swap", "swap_object")

        owner.AnimState:Show("ARM_carry")
        owner.AnimState:Hide("ARM_normal")
    end

    local function onunequip(inst, owner)

        owner.AnimState:ClearOverrideSymbol("swap_object")
        owner.AnimState:Hide("ARM_carry")
        owner.AnimState:Show("ARM_normal")
    end
-------------------------------------------------------------------------------------------
------
    local function onblink(staff, pos, caster)
        -- if caster then
        --     if caster.components.staffsanity then
        --         caster.components.staffsanity:DoCastingDelta(-TUNING.SANITY_MED)
        --     elseif caster.components.sanity ~= nil then

        --         if caster:HasTag("moonlightcoda") and caster.components.sanity:IsLunacyMode() or (TheWorld.state.isnight and TheWorld.state.isfullmoon) then
        --             caster.components.sanity:DoDelta(TUNING.SANITY_MED/3)
        --         else
        --             caster.components.sanity:DoDelta(-TUNING.SANITY_MED)
        --         end

        --     end
        -- end
    
        staff.components.finiteuses:Use(1)

    end

    local function NoHoles(pt)
        return not TheWorld.Map:IsGroundTargetBlocked(pt)
    end

    local BLINKFOCUS_MUST_TAGS = { "blinkfocus" }
    local function blinkstaff_reticuletargetfn()
        local player = ThePlayer
        local rotation = player.Transform:GetRotation()
        local pos = player:GetPosition()
        local ents = TheSim:FindEntities(pos.x, pos.y, pos.z, TUNING.CONTROLLER_BLINKFOCUS_DISTANCE, BLINKFOCUS_MUST_TAGS)
        for _, v in ipairs(ents) do
            local epos = v:GetPosition()
            if distsq(pos, epos) > TUNING.CONTROLLER_BLINKFOCUS_DISTANCESQ_MIN then
                local angletoepos = player:GetAngleToPoint(epos)
                local angleto = math.abs(anglediff(rotation, angletoepos))
                if angleto < TUNING.CONTROLLER_BLINKFOCUS_ANGLE then
                    return epos
                end
            end
        end
        rotation = rotation * DEGREES
        for r = 13, 1, -1 do
            local numtries = 2 * PI * r
            local offset = FindWalkableOffset(pos, rotation, r, numtries, false, true, NoHoles, false, true)
            if offset ~= nil then
                pos.x = pos.x + offset.x
                pos.y = 0
                pos.z = pos.z + offset.z
                return pos
            end
        end
    end
-------------------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("moonlightcoda_equipment_teleport_staff")
    inst.AnimState:SetBuild("moonlightcoda_equipment_teleport_staff")
    inst.AnimState:PlayAnimation("idle")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    MakeInventoryFloatable(inst, "med", 0.05, {0.85, 0.45, 0.85})


    inst.entity:SetPristine()
    ----------------------------------------------------------------------------------------
        inst:AddComponent("reticule")
        inst.components.reticule.targetfn = blinkstaff_reticuletargetfn
        inst.components.reticule.ease = true
    ----------------------------------------------------------------------------------------
    if not TheWorld.ismastersim then
        return inst
    end

    -------------------------------------------------------------------
        inst:AddComponent("inspectable")

        inst:AddComponent("inventoryitem")
        -- inst.components.inventoryitem:ChangeImageName("cane")
        inst.components.inventoryitem.imagename = "moonlightcoda_equipment_teleport_staff"
        inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_teleport_staff.xml"

        inst:AddComponent("tradable")

        inst:AddComponent("equippable")
        inst.components.equippable:SetOnEquip(onequip)
        inst.components.equippable:SetOnUnequip(onunequip)
        
        inst.fxcolour = {0, 255/255, 255/255}
        inst.castsound = "dontstarve/common/staffteleport"

        inst:AddComponent("blinkstaff")
        inst.components.blinkstaff:SetFX("sand_puff_large_front", "sand_puff_large_back")
        inst.components.blinkstaff.onblinkfn = onblink

        inst:AddComponent("weapon")
        inst.components.weapon:SetDamage(TUNING.CANE_DAMAGE) -- NOTES(JBK): This item is created from a cane it should do cane damage.

        inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT

        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(TUNING.ORANGESTAFF_USES)
        inst.components.finiteuses:SetUses(TUNING.ORANGESTAFF_USES)
        inst.components.finiteuses:SetIgnoreCombatDurabilityLoss(true)
        inst.components.finiteuses:SetOnFinished(inst.Remove)

        MakeHauntableLaunch(inst)
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

return Prefab("moonlightcoda_equipment_teleport_staff", fn, assets)
