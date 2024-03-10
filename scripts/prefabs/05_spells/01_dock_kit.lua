local assets =
{
    -- Asset("ANIM", "anim/fireflies.zip"),
}
local function builder_onbuilt(inst, builder)
	if builder then

        local item = SpawnPrefab("dock_kit")
        item.components.stackable.stacksize = 4        
        builder.components.inventory:GiveItem(item)

    end
    inst:Remove()
end

local function fn()

    local inst = CreateEntity()

    inst.entity:AddTransform()

    inst:AddTag("CLASSIFIED")


    inst:DoTaskInTime(0, inst.Remove)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.OnBuiltFn = builder_onbuilt

   
    return inst
end

return Prefab("moonlightcoda_spell_dock_kit_maker", fn,assets)