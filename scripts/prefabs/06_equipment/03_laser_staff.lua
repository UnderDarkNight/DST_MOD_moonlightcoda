---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    月光的刺痛
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_laser_staff.zip"),
    Asset("ANIM", "anim/moonlightcoda_equipment_laser_staff_swap.zip"),
}
------------------------------------------------------------------------------------------------------------------------
----- 
    local function onequip(inst, owner)
        owner.AnimState:OverrideSymbol("swap_object", "moonlightcoda_equipment_laser_staff_swap", "swap_object")
        owner.AnimState:Show("ARM_carry")
        owner.AnimState:Hide("ARM_normal")
    end

    local function onunequip(inst, owner)
        owner.AnimState:ClearOverrideSymbol("swap_object")
        owner.AnimState:Hide("ARM_carry")
        owner.AnimState:Show("ARM_normal")
    end
------------------------------------------------------------------------------------------------------------------------
---- 创建 激光
    local function CreateLaser(player,pt)
        ---------------------------------------------------
        --- 修改自官方的激光代码
            local SECOND_BLAST_TIME = 22*FRAMES
            local NUM_STEPS = 10
            local STEP = 1.0
            local OFFSET = 2 - STEP
            local function SpawnBeam(inst, target_pos)
                if target_pos == nil then
                    return
                end
            
                local ix, iy, iz = inst.Transform:GetWorldPosition()
            
                -- This is the "step" of fx spawning that should align with the position the beam is targeting.
                local target_step_num = RoundBiasedUp(NUM_STEPS * 2/5)
            
                local angle = nil
            
                -- gx, gy, gz is the point of the actual first beam fx
                local gx, gy, gz = nil, 0, nil
                local x_step = STEP
                if inst:GetDistanceSqToPoint(target_pos:Get()) < 4 then
                    angle = math.atan2(iz - target_pos.z, ix - target_pos.x)
            
                    -- If the target is too close, use the minimum distance
                    gx, gy, gz = inst.Transform:GetWorldPosition()
                    gx = gx + (2 * math.cos(angle))
                    gz = gz + (2 * math.sin(angle))
                else
                    angle = math.atan2(iz - target_pos.z, ix - target_pos.x)
            
                    gx, gy, gz = target_pos:Get()
                    gx = gx + (target_step_num * STEP * math.cos(angle))
                    gz = gz + (target_step_num * STEP * math.sin(angle))
                end
            
                local targets, skiptoss = {}, {}
                local sbtargets, sbskiptoss = {}, {}
                local x, z = nil, nil
                local trigger_time = nil
            
                local i = -1
                while i < NUM_STEPS do
                    i = i + 1
                    x = gx - i * x_step * math.cos(angle)
                    z = gz - i * STEP * math.sin(angle)
            
                    local first = (i == 0)
                    local prefab = (i > 0 and "moonlightcoda_spell_laser") or "moonlightcoda_spell_laserempty"
                    local x1, z1 = x, z
            
                    trigger_time = math.max(0, i - 1) * FRAMES
            
                    inst:DoTaskInTime(trigger_time, function(inst2)
                        local fx = SpawnPrefab(prefab)
                        fx.caster = inst2
                        fx.Transform:SetPosition(x1, 0, z1)
                        fx:Trigger(0, targets, skiptoss)
                        -- if first then
                        --     ShakeAllCameras(CAMERASHAKE.FULL, .7, .02, .2, target_pos or fx, 30)
                        -- end
                    end)
            
                    inst:DoTaskInTime(trigger_time + SECOND_BLAST_TIME, function(inst2)
                        local fx = SpawnPrefab(prefab)
                        fx.caster = inst2
                        fx.Transform:SetPosition(x1, 0, z1)
                        fx:Trigger(0, sbtargets, sbskiptoss, true)
                        -- if first then
                        --     ShakeAllCameras(CAMERASHAKE.FULL, .7, .02, .2, target_pos or fx, 30)
                        -- end
                    end)
                end
            
                inst:DoTaskInTime(i*FRAMES, function(inst2)
                    local fx = SpawnPrefab("moonlightcoda_spell_laser")
                    fx.Transform:SetPosition(x, 0, z)
                    fx:Trigger(0, targets, skiptoss)
                end)
            
                inst:DoTaskInTime((i+1)*FRAMES, function(inst2)
                    local fx = SpawnPrefab("moonlightcoda_spell_laser")
                    fx.Transform:SetPosition(x, 0, z)
                    fx:Trigger(0, targets, skiptoss)
                end)
            end
        ---------------------------------------------------
        ---- 官方的三叉代码
            local TRIBEAM_ANGLEOFF = PI/5
            local TRIBEAM_COS = math.cos(TRIBEAM_ANGLEOFF)
            local TRIBEAM_SIN = math.sin(TRIBEAM_ANGLEOFF)
            local TRIBEAM_COSNEG = math.cos(-TRIBEAM_ANGLEOFF)
            local TRIBEAM_SINNEG = math.sin(-TRIBEAM_ANGLEOFF)

            local ipos = player:GetPosition()
            -- local target_pos = inst.sg.statemem.target_pos
            local target_pos = pt
            
            if target_pos == nil then
                local angle = player.Transform:GetRotation() * DEGREES
                target_pos = ipos + Vector3(OFFSET * math.cos(angle), 0, -OFFSET * math.sin(angle))
            end
            SpawnBeam(player, target_pos)

            -- Take the vector from the boss to the target position, and rotate it a bit
            -- both clockwise and counterclockwise, to get target positions that produce
            -- an aligned tri-beam, sourced at the boss.
            local i_to_target = target_pos - ipos

            local offpos1 = Vector3(
                (i_to_target.x * TRIBEAM_COS - i_to_target.z * TRIBEAM_SIN) + ipos.x,
                0,
                (i_to_target.x * TRIBEAM_SIN + i_to_target.z * TRIBEAM_COS) + ipos.z
            )
            SpawnBeam(player, offpos1)

            local offpos2 = Vector3(
                (i_to_target.x * TRIBEAM_COSNEG - i_to_target.z * TRIBEAM_SINNEG) + ipos.x,
                0,
                (i_to_target.x * TRIBEAM_SINNEG + i_to_target.z * TRIBEAM_COSNEG) + ipos.z
            )
            SpawnBeam(player, offpos2)

        ---------------------------------------------------
    end
------------------------------------------------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("moonlightcoda_equipment_laser_staff")
    inst.AnimState:SetBuild("moonlightcoda_equipment_laser_staff")
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
                if doer == target then
                    return false
                end
                if doer.replica.health:GetCurrent() <= 11 then
                    return false
                end                    
                return right_click
            end)
            replica_com:SetDistance(8)
            replica_com:SetSGAction("quickcastspell")
            replica_com:SetText("moonlightcoda_equipment_laser_staff",STRINGS.ACTIONS.CASTSPELL.GENERIC)

        end)
        if TheWorld.ismastersim then
            inst:AddComponent("mcoda_com_point_and_target_spell_caster")
            inst.components.mcoda_com_point_and_target_spell_caster:SetSpellFn(function(inst,doer,target,pt)
                local ret_pt_flag = false
                local ret_pt = Vector3(0,0,0)
                if target  then
                    ret_pt = Vector3(target.Transform:GetWorldPosition())
                    ret_pt_flag = true
                elseif pt then
                    ret_pt = pt
                    ret_pt_flag = true
                end
                if not ret_pt_flag then
                    return false
                end

                ------------------------------------------------------------------------------------------------------------------------
                    CreateLaser(doer,ret_pt)
                    doer.components.health:DoDelta(-10,true)
                    inst.components.finiteuses:Use()
                ------------------------------------------------------------------------------------------------------------------------
                ---- 激光声音
                    local sound_index = "temp_laser_sound"..tostring(math.random(100000))
                    doer.SoundEmitter:PlaySound("moonstorm/creatures/boss/alterguardian3/atk_beam",sound_index)
                    doer:DoTaskInTime(.7,function()
                        doer.SoundEmitter:KillSound(sound_index)
                        doer:DoTaskInTime(0,function()
                            doer.SoundEmitter:PlaySound("moonstorm/creatures/boss/alterguardian3/atk_beam",sound_index)
                            doer:DoTaskInTime(1,function()
                                doer.SoundEmitter:KillSound(sound_index)
                            end)
                        end)
                    end)
                ------------------------------------------------------------------------------------------------------------------------
                
                return true
            end)
        end
    -----------------------------------------------------------------------------------------------------------------------------------------------

    if not TheWorld.ismastersim then
        return inst
    end


    inst:AddComponent("weapon")
    -- inst.components.weapon:SetDamage(TUNING.CANE_DAMAGE)
    inst.components.weapon:SetDamage(function(inst,attacker,target)
        local ret_damage = 0
        if attacker and attacker.components.sanity then
            local current_sanity = attacker.components.sanity.current
            if current_sanity >= 150 then
                ret_damage =  105
            else
                ret_damage = 80
            end
        end
        return ret_damage
    end)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    -- inst.components.inventoryitem:ChangeImageName("cane")
    inst.components.inventoryitem.imagename = "moonlightcoda_equipment_laser_staff"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_laser_staff.xml"

    inst:AddComponent("equippable")

    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
    -- inst.components.equippable.walkspeedmult = TUNING.CANE_SPEED_MULT
	inst.components.equippable.restrictedtag = "moonlightcoda"   --- 角色专属武器


    MakeHauntableLaunch(inst)
    -------------------------------------------------------------------
    --- 耐久度
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(350)
        inst.components.finiteuses:SetUses(350)
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

return Prefab("moonlightcoda_equipment_laser_staff", fn, assets)
