---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    献身月光
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_moonlightdedication.zip"),
    Asset("ANIM", "anim/moonlightcoda_equipment_moonlightdedication_swap.zip"),
}
-------------------------------------------------------------------------------------------
    local function onequip(inst, owner)

        owner.AnimState:OverrideSymbol("swap_object", "moonlightcoda_equipment_moonlightdedication_swap", "swap_object")

        owner.AnimState:Show("ARM_carry")
        owner.AnimState:Hide("ARM_normal")
    end

    local function onunequip(inst, owner)

        owner.AnimState:ClearOverrideSymbol("swap_object")
        owner.AnimState:Hide("ARM_carry")
        owner.AnimState:Show("ARM_normal")
    end
-------------------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("moonlightcoda_equipment_moonlightdedication")
    inst.AnimState:SetBuild("moonlightcoda_equipment_moonlightdedication")
    inst.AnimState:PlayAnimation("idle")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    MakeInventoryFloatable(inst, "med", 0.05, {0.85, 0.45, 0.85})


    inst.entity:SetPristine()
    -----------------------------------------------------------------------------------------------------------------------------------------------
    ----- 施法组件
    inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_point_and_target_spell_caster",function(_,replica_com)
        replica_com:SetTestFn(function(inst,doer,target,pt,right_click)
            if not doer:HasTag("moonlightcoda") then
                return false
            end
            if right_click then
                return true
            end
            return false
        end)
        replica_com:SetDistance(30)
        replica_com:SetSGAction("castspell")
        replica_com:SetText("moonlightcoda_equipment_debate",STRINGS.ACTIONS.CASTSPELL.GENERIC)
        replica_com:SetAllowCanCastOnImpassable(true)
        replica_com:SetPriority(10)


    end)
    if TheWorld.ismastersim then
        inst:AddComponent("mcoda_com_point_and_target_spell_caster")
        inst.components.mcoda_com_point_and_target_spell_caster:SetSpellFn(function(inst,doer,target,pt)
            
            ------------------------------------------------------------------------------------------------------------------------
            ------ 切月光
                if not TheWorld:HasTag("cave") and TheWorld.state.moonphase ~= "full" then
                    TheWorld:PushEvent("ms_setmoonphase", {moonphase = "full"})
                end
            ------------------------------------------------------------------------------------------------------------------------
            ------ 上特效
                local fx_prefab_name = "fx_book_moon"
                if doer.replica.rider and doer.replica.rider:IsRiding() then
                    fx_prefab_name = "fx_book_moon_mount"
                end
                doer:SpawnChild(fx_prefab_name)
            ------------------------------------------------------------------------------------------------------------------------
            ------- 升级玩家
                doer:PushEvent("mcoda_level_up")
            ------------------------------------------------------------------------------------------------------------------------
            ------ 删除法杖
                inst:Remove()
            ------------------------------------------------------------------------------------------------------------------------
            
            return true
        end)
    end
-----------------------------------------------------------------------------------------------------------------------------------------------

    if not TheWorld.ismastersim then
        return inst
    end

    -------------------------------------------------------------------
        inst:AddComponent("inspectable")

        inst:AddComponent("inventoryitem")
        -- inst.components.inventoryitem:ChangeImageName("cane")
        inst.components.inventoryitem.imagename = "moonlightcoda_equipment_moonlightdedication"
        inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_moonlightdedication.xml"

        inst:AddComponent("tradable")

        inst:AddComponent("equippable")
        inst.components.equippable:SetOnEquip(onequip)
        inst.components.equippable:SetOnUnequip(onunequip)
	    inst.components.equippable.restrictedtag = "moonlightcoda"   --- 角色专属武器

        
        inst.fxcolour = {0, 255/255, 255/255}
        inst.castsound = "dontstarve/common/staffteleport"

        inst:AddComponent("weapon")
        inst.components.weapon:SetDamage(0) -- NOTES(JBK): This item is created from a cane it should do cane damage.


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

return Prefab("moonlightcoda_equipment_moonlightdedication", fn, assets)
