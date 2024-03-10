------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    月岛探测器

]]--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function GetStringsTable(prefab_name)
    return TUNING["moonlightcoda.fn"].GetStringsTable(prefab_name or "moonlightcoda_item_moon_island_detector")
end

local assets = {
    Asset("ANIM", "anim/moonlightcoda_item_moon_island_detector.zip"), 
    Asset( "IMAGE", "images/inventoryimages/moonlightcoda_item_moon_island_detector.tex" ),  -- 背包贴图
    Asset( "ATLAS", "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml" ),
}


local function fn()

    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    MakeInventoryFloatable(inst, "med", nil, 0.75)

    inst.AnimState:SetBank("moonlightcoda_item_moon_island_detector")
    inst.AnimState:SetBuild("moonlightcoda_item_moon_island_detector")
    inst.AnimState:PlayAnimation("idle",true)

    inst.entity:SetPristine()
    --------------------------------------------------------------------------
    --- 交互
        inst:ListenForEvent("moonlightcoda.OnEntityReplicated.mcoda_com_workable",function(_,replica_com)
            replica_com:SetTestFn(function(inst,doer,rightclick)
                return inst.replica.inventoryitem:IsGrandOwner(doer)
            end)
            replica_com:SetSGAction("dolongaction")
            replica_com:SetText("moonlightcoda_item_moon_island_detector",GetStringsTable()["action"])
        end)
        if TheWorld.ismastersim then
            inst:AddComponent("mcoda_com_workable")
            inst.components.mcoda_com_workable:SetActiveFn(function(inst,doer)
                doer.components.mcoda_com_data:Set("moonlightcoda_debuff_moon_island_arrow.timer",480)
                while true do
                    if doer:GetDebuff("moonlightcoda_debuff_moon_island_arrow") then
                        break
                    end
                    doer:AddDebuff("moonlightcoda_debuff_moon_island_arrow","moonlightcoda_debuff_moon_island_arrow")
                end
                inst.components.finiteuses:Use()
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
        inst.components.inventoryitem.imagename = "moonlightcoda_item_moon_island_detector"
        inst.components.inventoryitem.atlasname = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml"
        inst.components.inventoryitem:SetSinks(true)
    --------------------------------------------------------------------------
    ------ 耐久度
        inst:AddComponent("finiteuses")
        inst.components.finiteuses:SetMaxUses(3)
        inst.components.finiteuses:SetUses(3)
        inst.components.finiteuses:SetOnFinished(inst.Remove)
    --------------------------------------------------------------------------
    MakeHauntableLaunch(inst)



    return inst
end

return Prefab("moonlightcoda_item_moon_island_detector", fn, assets)