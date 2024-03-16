---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    月光的议论
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_debate.zip"),
    Asset("ANIM", "anim/moonlightcoda_equipment_debate_swap.zip"),
}
------------------------------------------------------------------------------------------------------------------------
----- 
    local function onequip(inst, owner)
        owner.AnimState:OverrideSymbol("swap_object", "moonlightcoda_equipment_debate_swap", "swap_object")
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

    inst.AnimState:SetBank("moonlightcoda_equipment_debate")
    inst.AnimState:SetBuild("moonlightcoda_equipment_debate")
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
                if right_click then
                    return true
                end
                return false
            end)
            replica_com:SetDistance(8)
            replica_com:SetSGAction("moonlightcoda_sg_play_strum")
            replica_com:SetText("moonlightcoda_equipment_debate",STRINGS.ACTIONS.CASTSPELL.MUSIC)
            replica_com:SetAllowCanCastOnImpassable(true)
            replica_com:SetPriority(10)

        end)
        if TheWorld.ismastersim then
            inst:AddComponent("mcoda_com_point_and_target_spell_caster")
            inst.components.mcoda_com_point_and_target_spell_caster:SetSpellFn(function(inst,doer,target,pt)
                
                ------------------------------------------------------------------------------------------------------------------------
                    inst.components.finiteuses:Use()
                ------------------------------------------------------------------------------------------------------------------------
                    local x,y,z = doer.Transform:GetWorldPosition()
                    local range = 14
                    local musthavetags = { "_combat" }
                    local canthavetags = { "bramble_resistant", "INLIMBO", "notarget", "noattack", "flight", "invisible", "wall", "player", "companion" }
                    local musthaveoneoftags = {}
                    local ents = TheSim:FindEntities(x, y, z, range, musthavetags, canthavetags, musthaveoneoftags)
                    for k, temp_target in pairs(ents) do
                        if temp_target and temp_target.components.combat 
                            and temp_target.components.health and not temp_target.components.health:IsDead() then
                                temp_target:DoTaskInTime(0,function()
                                    -- SpawnPrefab("moonlightcoda_fx_waterspout"):PushEvent("Set",{
                                    --     target = temp_target,
                                    --     scale = 1.5,
                                    -- })
                                    temp_target.components.combat:GetAttacked(doer,350)
                                end)
                                
                        end
                    end
                ------------------------------------------------------------------------------------------------------------------------
                ---- 对周围一圈玩家造成屏幕震动
                    local players = TheSim:FindEntities(x, y, z, range,{"player"})
                    for k, temp_player in pairs(players) do
                        ShakeAllCameras(CAMERASHAKE.FULL, .7, .02, 1, temp_player, 40)
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
    inst.components.inventoryitem.imagename = "moonlightcoda_equipment_debate"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_debate.xml"

    inst:AddComponent("equippable")

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    -- inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT
	inst.components.equippable.restrictedtag = "moonlightcoda"   --- 角色专属武器


    MakeHauntableLaunch(inst)
    -------------------------------------------------------------------
    --- 耐久度
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(15)
        inst.components.finiteuses:SetUses(15)
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

return Prefab("moonlightcoda_equipment_debate", fn, assets)
