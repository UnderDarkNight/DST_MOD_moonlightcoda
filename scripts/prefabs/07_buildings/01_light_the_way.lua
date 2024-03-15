---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
    前路
]]--
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local assets =
{
    Asset("ANIM", "anim/moonlightcoda_building_light_the_way.zip"),
}


local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddMiniMapEntity()
    inst.entity:AddNetwork()
    inst.entity:AddLight()

    inst.Light:SetIntensity(0.9)		-- 强度
    inst.Light:SetRadius(5)			-- 半径 ，矩形的？？ --- SetIntensity 为1 的时候 成矩形
    inst.Light:SetFalloff(0.5)		-- 下降梯度
    inst.Light:SetColour(0 / 255, 255 / 255, 255 / 255)

    MakeObstaclePhysics(inst, .1)

    inst.MiniMapEntity:SetIcon("moonlightcoda_building_light_the_way.tex")

    inst.AnimState:SetBank("moonlightcoda_building_light_the_way")
    inst.AnimState:SetBuild("moonlightcoda_building_light_the_way")
    inst.AnimState:PlayAnimation("idle", false)

    inst:AddTag("structure")
    inst:AddTag("wildfireprotected")
    inst:AddTag("moonlightcoda_building_light_the_way")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    -----------------------


    inst:AddComponent("sanityaura")
    inst.components.sanityaura.aurafn = function(inst,player)
        return TUNING.SANITYAURA_LARGE
    end
    inst.components.sanityaura.max_distsq = 49

    -----------------------------
        inst:AddComponent("lootdropper")
        inst:AddComponent("workable")
        inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
        inst.components.workable:SetWorkLeft(4)
        inst.components.workable:SetOnFinishCallback(function()
            inst.components.lootdropper:DropLoot()
            inst:Remove()
        end)
        -- inst.components.workable:SetOnWorkCallback(onhit)

    -----------------------------
    

    -----------------------------


    -----------------------------

        inst:AddComponent("inspectable")

        inst:ListenForEvent("onbuilt", function()
            inst.AnimState:PlayAnimation("place")
            inst.AnimState:PushAnimation("idle")
        end)
    -----------------------------
    ---火焰特效
        inst:DoTaskInTime(0,function()
            local light_inst = SpawnPrefab("moonlightcoda_fx_fire")
            light_inst.Ready = true
            inst.__light_inst = light_inst
            light_inst.entity:SetParent(inst.entity)
            light_inst.entity:AddFollower()
            light_inst.Follower:FollowSymbol(inst.GUID, "png",  0, -280, 0)
        end)
    -----------------------------

    return inst
end
-----------------------------------------------
    local placer_fn = function(inst)
        
    end
-----------------------------------------------
return Prefab("moonlightcoda_building_light_the_way", fn, assets),
    MakePlacer("moonlightcoda_building_light_the_way_placer","moonlightcoda_building_light_the_way","moonlightcoda_building_light_the_way","idle",nil, nil, nil, nil, nil, nil,placer_fn)