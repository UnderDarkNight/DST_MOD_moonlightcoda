------------------------------------------------------------------------------------------------------------------------------------------------
--[[

]]--
------------------------------------------------------------------------------------------------------------------------------------------------
---- 
    local function fx_face_2_target(arrow_fx)
        if TheWorld:HasTag("cave") then
            arrow_fx:Hide()
            return true
        end

        if arrow_fx.target == nil then
            arrow_fx.target = TheSim:FindFirstEntityWithTag("moonlightcoda_other_moon_island_marker")
        end
        if arrow_fx.target == nil or arrow_fx.player == nil then
            return false
        end

        

        local x,y,z = arrow_fx.target.Transform:GetWorldPosition()

        if arrow_fx.player:GetDistanceSqToPoint(x,y,z) < 100 then
            return false
        end

        local angle = arrow_fx.player:GetAngleToPoint(x,y,z)    --- 玩家和目标 的角度
        local player_angle = arrow_fx.player.Transform:GetRotation()    --- 玩家自身的旋转角度

        local ret_angle = angle - player_angle

        ------- 溢出处理
            if ret_angle < 0 then
                ret_angle = 360 + ret_angle
            end
            if ret_angle > 360 then
                ret_angle = ret_angle - 360
            end

        arrow_fx.Transform:SetRotation(ret_angle)
        return true
    end
------------------------------------------------------------------------------------------------------------------------------------------------

local function OnAttached(inst,target) -- 玩家得到 debuff 的瞬间。 穿越洞穴、重新进存档 也会执行。
    inst.entity:SetParent(target.entity)
    inst.Network:SetClassifiedTarget(target)
    -- local player = inst.entity:GetParent()
    inst.target = target
    local player = inst.target
    -----------------------------------------------------
        -- if TheWorld:HasTag("cave") then
        --     inst:Remove()
        --     return
        -- end
    -----------------------------------------------------
        local arrow_fx = player:SpawnChild("moonlightcoda_fx_moon_arrow")
        arrow_fx.Transform:SetPosition(0,0.2,0)
        arrow_fx.player = player
        inst.arrow_fx = arrow_fx

        -- if TUNING.MOONLIGHTCODA_DEBUGGING_MODE then
        --     player.arrow_fx = arrow_fx
        -- end
        if not fx_face_2_target(arrow_fx) then
            inst:Remove()
        end

        inst:ListenForEvent("onremove",function()
            arrow_fx:Remove()
        end)

        arrow_fx:ListenForEvent("mcoda_com_player_rotation",function()
            if not fx_face_2_target(arrow_fx) then
                inst:Remove()
            end
        end,player)
    -----------------------------------------------------
end

local function OnDetached(inst) -- 被外部命令  inst:RemoveDebuff 移除debuff 的时候 执行
    -- local player = inst.entity:GetParent()
    local player = inst.target
end

local function OnUpdate(inst)
    -- local player = inst.entity:GetParent()
    local player = inst.target
    if not fx_face_2_target(inst.arrow_fx) then
        inst:Remove()
    end
    if player.components.mcoda_com_data:Add("moonlightcoda_debuff_moon_island_arrow.timer",-1) <= 0 then
        inst:Remove()
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

    inst:DoPeriodicTask(1, OnUpdate, nil, TheWorld.ismastersim)  -- 定时执行任务


    return inst
end

return Prefab("moonlightcoda_debuff_moon_island_arrow", fn)
