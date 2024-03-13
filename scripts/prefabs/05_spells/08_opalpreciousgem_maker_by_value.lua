local assets =
{
    -- Asset("ANIM", "anim/fireflies.zip"),
}
local function builder_onbuilt(inst, builder)
	if builder then
        local hunger_cost_value = 115
        local sanity_cost_value = 155
        local health_cost_value = 180

        local hunger_value = builder.components.hunger.current
        if hunger_value < hunger_cost_value then
            builder.components.sanity:DoDelta(sanity_cost_value,true)
            builder.components.health:DoDelta(health_cost_value,true)
            return
        end

        builder.components.hunger:DoDelta(-hunger_cost_value,true)

        local item = SpawnPrefab("opalpreciousgem")
        -- item.components.stackable.stacksize = 4
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

return Prefab("moonlightcoda_spell_opalpreciousgem_maker_by_value", fn,assets)