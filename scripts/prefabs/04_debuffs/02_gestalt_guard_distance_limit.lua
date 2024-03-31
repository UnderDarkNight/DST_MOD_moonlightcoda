------------------------------------------------------------------------------------------------------------------------------------------------

local function OnAttached(inst,target) -- 玩家得到 debuff 的瞬间。 穿越洞穴、重新进存档 也会执行。
    inst.entity:SetParent(target.entity)
    inst.Network:SetClassifiedTarget(target)
    -- local player = inst.entity:GetParent()
    inst.target = target
    local player = inst.target
    -----------------------------------------------------
    
    -----------------------------------------------------
end

local function OnDetached(inst) -- 被外部命令  inst:RemoveDebuff 移除debuff 的时候 执行
    -- local player = inst.entity:GetParent()
    local player = inst.target

end

local function OnUpdate(inst)
    -- local player = inst.entity:GetParent()
    local player = inst.target

    local x,y,z = player.Transform:GetWorldPosition()

    local range = TUNING.MOONLIGHTCODA_DEBUGGING_MODE and 50 or 50
    local ents = TheSim:FindEntities(x,y,z,range,{"moonlightcoda_building_skeleton"})
    if #ents > 0 then

    else
        if player.prefab == "lunarthrall_plant_gestalt" then --- 亮茄植物虚影 限制位置
            
            local skeletons = TheSim:FindEntities(x,y,z,range*2,{"moonlightcoda_building_skeleton"})
            if #skeletons  == 0 then
                inst:Remove()
            else
                player.Transform:SetPosition(skeletons[1].Transform:GetWorldPosition())
            end

        else
            player:Remove()
        end

        -- print("fake error : gestalt_guard remove by distance limit debuff")
    end

end

local function ExtendDebuff(inst)
    -- inst.countdown = 3 + (inst._level:value() < CONTROL_LEVEL and EXTEND_TICKS or math.floor(TUNING.STALKER_MINDCONTROL_DURATION / FRAMES + .5))
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddNetwork()

    inst:AddTag("CLASSIFIED")



    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(OnAttached)
    inst.components.debuff.keepondespawn = true -- 是否保持debuff 到下次登陆
    -- inst.components.debuff:SetDetachedFn(inst.Remove)
    inst.components.debuff:SetDetachedFn(OnDetached)
    -- inst.components.debuff:SetExtendedFn(ExtendDebuff)
    -- ExtendDebuff(inst)

    inst:DoPeriodicTask(3, OnUpdate, nil, TheWorld.ismastersim)  -- 定时执行任务


    return inst
end

return Prefab("moonlightcoda_buff_gestalt_guard_distance_limit", fn)
