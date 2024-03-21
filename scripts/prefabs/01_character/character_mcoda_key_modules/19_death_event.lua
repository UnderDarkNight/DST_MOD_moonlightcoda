--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

-- 切换新月：
    TheWorld:PushEvent("ms_setmoonphase", {moonphase = "new" ,iswaxing = true})

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    if TheWorld:HasTag("cave") then
        return
    end

    local need_to_change_to_newmoon = false
    inst:ListenForEvent("ms_becameghost",function()
        if not TheWorld.state.isnight then
            TheWorld:PushEvent("ms_setmoonphase", {moonphase = "new" ,iswaxing = true})
        else
            need_to_change_to_newmoon = true
        end
    end)
    inst:WatchWorldState("cycles",function()
        inst:DoTaskInTime(5,function()
            if need_to_change_to_newmoon then
                TheWorld:PushEvent("ms_setmoonphase", {moonphase = "new" ,iswaxing = true})
                need_to_change_to_newmoon = false
            end
        end)
    end)

end