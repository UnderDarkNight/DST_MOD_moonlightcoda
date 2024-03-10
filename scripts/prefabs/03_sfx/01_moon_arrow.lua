


local assets =
{
    Asset("ANIM", "anim/moonlightcoda_fx_moon_arrow.zip"),
}

local function fn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("moonlightcoda_fx_moon_arrow")
    inst.AnimState:SetBuild("moonlightcoda_fx_moon_arrow")
    local scale_num = 1
    inst.AnimState:SetScale(scale_num, scale_num, scale_num)

    inst.AnimState:SetLayer(LAYER_WORLD_BACKGROUND)
    inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
    inst.AnimState:SetSortOrder(0)
    inst.AnimState:PlayAnimation("idle",true)

    inst.AnimState:HideSymbol("moon")
    
    inst:AddTag("INLIMBO")
    inst:AddTag("FX")
    inst:AddTag("NOCLICK")      --- 不可点击
    inst:AddTag("CLASSIFIED")   --  私密的，client 不可观测， FindEntity 默认过滤
    inst:AddTag("NOBLOCK")      -- 不会影响种植和放置
    inst.entity:SetPristine()


    if not TheWorld.ismastersim then
        return inst
    end



    return inst
end

return Prefab("moonlightcoda_fx_moon_arrow", fn, assets)