--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    客制化 死亡骷髅

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end
    inst:ListenForEvent("moonlightcoda_master_postinit",function()

        inst.skeleton_prefab = "moonlightcoda_building_skeleton"

    end)
end