------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    唱片

]]--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function GetStringsTable(prefab_name)
    return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name or "moonlightcoda_item_record")
end

local assets = {
    Asset("ANIM", "anim/moonlightcoda_item_record.zip"), 
    Asset( "IMAGE", "images/inventoryimages/moonlightcoda_item_record.tex" ),  -- 背包贴图
    Asset( "ATLAS", "images/inventoryimages/moonlightcoda_item_record.xml" ),
}


local function fn()

    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    MakeInventoryFloatable(inst, "med", nil, 0.75)

    inst.AnimState:SetBank("moonlightcoda_item_record")
    inst.AnimState:SetBuild("moonlightcoda_item_record")
    inst.AnimState:PlayAnimation("idle",true)

    inst.entity:SetPristine()
    --------------------------------------------------------------------------
    --- 交互
        inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_workable",function(_,replica_com)
            replica_com:SetTestFn(function(inst,doer,rightclick)
                return inst.replica.inventoryitem:IsGrandOwner(doer) and doer and doer:HasTag("moonlightcoda")
            end)
            replica_com:SetSGAction("dolongaction")
            replica_com:SetText("moonlightcoda_item_record",STRINGS.ACTIONS.USEITEM)
        end)
        if TheWorld.ismastersim then
            inst:AddComponent("mcoda_com_workable")
            inst.components.mcoda_com_workable:SetActiveFn(function(inst,doer)
                inst.components.stackable:Get():Remove()
                doer.components.health:SetPenalty(0)
                doer.components.health:SetPercent(1)
                return true
            end)
        end
    --------------------------------------------------------------------------

    if not TheWorld.ismastersim then
        return inst
    end
    --------------------------------------------------------------------------
    ------ 物品名 和检查文本
        inst:AddComponent("inspectable")

        inst:AddComponent("inventoryitem")
        -- inst.components.inventoryitem:ChangeImageName("cane")
        inst.components.inventoryitem.imagename = "moonlightcoda_item_record"
        inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_item_record.xml"
        inst.components.inventoryitem:SetSinks(true)
    --------------------------------------------------------------------------
    ------ 叠堆
        inst:AddComponent("stackable")
    --------------------------------------------------------------------------
    MakeHauntableLaunch(inst)



    return inst
end

return Prefab("moonlightcoda_item_record", fn, assets)