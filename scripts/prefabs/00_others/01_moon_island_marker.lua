

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    inst:AddTag("moonlightcoda_other_moon_island_marker")
    inst:AddTag("INLIMBO")
    inst:AddTag("FX")
    -- inst:AddTag("NOCLICK")      --- 不可点击
    -- inst:AddTag("CLASSIFIED")   --  私密的，client 不可观测， FindEntity 默认过滤
    inst:AddTag("NOBLOCK")      -- 不会影响种植和放置

    inst.entity:SetPristine()

    -- if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
    --     inst.AnimState:SetBank("cane")
    --     inst.AnimState:SetBuild("swap_cane")
    --     inst.AnimState:PlayAnimation("idle")
    --     local scale = 3
    --     inst.AnimState:SetScale(scale, scale, scale)
    -- end

    if not TheWorld.ismastersim then
        return inst
    end



    return inst
end

return Prefab("moonlightcoda_other_moon_island_marker", fn)
