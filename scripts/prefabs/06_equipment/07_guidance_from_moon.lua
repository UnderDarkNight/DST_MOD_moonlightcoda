---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    月之指引
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_equipment_guidance_from_moon.zip"),
}
------------------------------------------------------------------------------------------------------------------------
----- 
    local function onequip(inst, owner)
        owner.AnimState:OverrideSymbol("swap_body", "moonlightcoda_equipment_guidance_from_moon", "amulet")
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
        end
        inst:ListenForEvent("amult_onequipped",function(inst,owner)
            --------- 任何掉San 屏蔽
                if owner.components.sanity then
                    owner.components.sanity:mcoda_Add_DoDelta_Modifer_fn(inst,function(sanity,num,...)
                        if num < 0 then
                            num = 0
                        end
                        return num
                    end)
                end
        end)
        inst:ListenForEvent("amult_unequipped",function(inst,owner)

            if owner.components.sanity then
                owner.components.sanity:mcoda_Remove_DoDelta_Modifer_fn(inst)
            end

        end)
        
    end
------------------------------------------------------------------------------------------------------------------------
---- 伪装灯光组件
    local function light_event_setup(inst)
        -------- 创建 灯光组件 给客户端
        inst.__light_entity_player = net_entity(inst.GUID, "moonlightcoda_equipment_guidance_from_moon_light", "moonlightcoda_equipment_guidance_from_moon_light")
        if not TheNet:IsDedicated() then
            local turn_on_light = function(inst,player)
                -- minerhatlight
                if inst._light_fx then
                    inst._light_fx:Remove()
                end                
                -- print("info 开灯")
                -- if player.__test_fn then
                --     player.__test_fn(inst,player)
                --     return
                -- end

                inst._light_fx = CreateEntity()
                inst._light_fx.entity:AddTransform()
                inst._light_fx.entity:AddLight()
                inst._light_fx.entity:SetParent(player.entity)

                inst._light_fx.Light:SetIntensity(0.9)		-- 强度
                inst._light_fx.Light:SetRadius(5)			-- 半径 ，矩形的？？ --- SetIntensity 为1 的时候 成矩形
                inst._light_fx.Light:SetFalloff(0.1)		-- 下降梯度
                inst._light_fx.Light:SetColour(255 / 255, 255 / 255, 255 / 255)

                inst._light_fx.Light:Enable(true)

                inst._light_fx:ListenForEvent("onremove",function()
                    inst._light_fx:Remove()
                end,inst)

            end
            local turn_off_light = function(inst,player)
                -- print("info 关灯")
                if inst._light_fx then
                    inst._light_fx:Remove()
                    inst._light_fx = nil
                end          
            end
            inst:ListenForEvent("moonlightcoda_equipment_guidance_from_moon_light",function()
                local target_inst = inst.__light_entity_player:value()
                if target_inst then
                    if target_inst:HasTag("player") and target_inst == ThePlayer then
                        ---- 开灯
                        turn_on_light(inst,target_inst)
                    else
                        ---- 关灯
                        turn_off_light(inst,target_inst)
                    end    
                end

            end)

        end
        if TheWorld.ismastersim then
                inst:ListenForEvent("amult_onequipped",function(inst,owner)
                    inst.__light_entity_player:set(owner)
                    inst.owner = owner
                    owner.components.grue:AddImmunity("moonlightcoda_equipment_guidance_from_moon_light")
                end)
                inst:ListenForEvent("amult_unequipped",function(inst,owner)
                    inst.__light_entity_player:set(inst)
                    inst.owner = nil
                    owner.components.grue:RemoveImmunity("moonlightcoda_equipment_guidance_from_moon_light")
                end)
                inst:ListenForEvent("onremove",function()
                    if inst.owner and inst.owner.components.grue then
                        inst.owner.components.grue:RemoveImmunity("moonlightcoda_equipment_guidance_from_moon_light")
                    end
                end)
        end
    end
------------------------------------------------------------------------------------------------------------------------
---- finiteuses task
    local function finiteuses_task_setup(inst)
        inst:ListenForEvent("amult_onequipped",function()
            if inst._finiteuses_task then
                inst._finiteuses_task:Cancel()
            end
            inst._finiteuses_task = inst:DoPeriodicTask(1,function()
                inst.components.finiteuses:Use(TUNING.MOONLIGHTCODA_DEBUGGING_MODE and 15 or 1)
            end)
        end)

        inst:ListenForEvent("amult_unequipped",function()
            if inst._finiteuses_task then
                inst._finiteuses_task:Cancel()
                inst._finiteuses_task = nil
            end
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

    inst.AnimState:SetBank("moonlightcoda_equipment_guidance_from_moon")
    inst.AnimState:SetBuild("moonlightcoda_equipment_guidance_from_moon")
    inst.AnimState:PlayAnimation("idle")


    MakeInventoryFloatable(inst)


    inst.entity:SetPristine()
    -----------------------------------------------------------------------------------------------------------------------------------------------
    ----- 创建个灯光组件给 client
        light_event_setup(inst)
    -----------------------------------------------------------------------------------------------------------------------------------------------
    ----- 物品接受组件
        inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_acceptable",function(_,replica_com)
            replica_com:SetTestFn(function(inst,item,doer)
                if inst.replica.inventoryitem:IsGrandOwner(doer) and item and item.prefab == "purebrilliance" then
                    return true
                end
            end)
            replica_com:SetSGAction("dolongaction")
            replica_com:SetText("moonlightcoda_equipment_guidance_from_moon",STRINGS.ACTIONS.REPAIR.GENERIC)
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
    inst.components.inventoryitem.imagename = "moonlightcoda_equipment_guidance_from_moon"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_equipment_guidance_from_moon.xml"

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = TUNING["moonlightcoda.equip_slot"]:GetAmuletType() or EQUIPSLOTS.BODY
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)
	-- inst.components.equippable.restrictedtag = "moonlightcoda"   --- 角色专属武器
    inst.components.equippable.dapperness = TUNING.DAPPERNESS_SMALL*8 --- 回San参数


    MakeHauntableLaunch(inst)
    -------------------------------------------------------------------
    --- 耐久度
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(480)
        inst.components.finiteuses:SetUses(480)
        inst.components.finiteuses:SetOnFinished(inst.Remove)
        finiteuses_task_setup(inst)
    -------------------------------------------------------------------
    --- func setup
        amulet_func_setup(inst)
    -------------------------------------------------------------------
    return inst
end

return Prefab("moonlightcoda_equipment_guidance_from_moon", fn, assets)
