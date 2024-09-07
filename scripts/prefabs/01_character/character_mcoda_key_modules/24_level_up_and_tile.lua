--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

5. 升级时，如果脚下有地皮且地皮不是月岛地皮，那么脚下的地皮会变为月岛地皮,且触发启蒙状态。


    WORLD_TILES.METEOR = 43    月岛地皮index

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- 
    
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TUNING["moonlightcoda.Config"].LEVEL_UP_AND_TILE_EXCHANGE then
        return
    end
    if not TheWorld.ismastersim then
        return
    end

    inst:ListenForEvent("mcoda_com_level_sys_level_update",function(_,_data)
        local level_up = _data and _data.level_up
        if not level_up then
            return
        end


        local x,y,z = inst.Transform:GetWorldPosition() -- 当前玩家坐标

        if TheWorld.Map:IsInLunacyArea(x,y,z) then  -- 当前位置地皮是月岛地皮
            return
        end

        if TheWorld.Map:IsDockAtPoint(x,y,z) then  -- 当前位置是码头
            return
        end

        if TheWorld.Map:IsOceanIceAtPoint(x,y,z) then  -- 冰岛地皮
            return 
        end

        if TheWorld.Map:IsOceanTileAtPoint(x,y,z) then  -- 海洋地皮
            return
        end

        if not TheWorld.Map:IsLandTileAtPoint(x,y,z) then  -- 非陆地地皮
            return
        end

        local tile_x,tile_y = TheWorld.Map:GetTileXYAtPoint(x,y,z) -- 获取当前坐标的地皮坐标

        TheWorld.Map:SetTile(tile_x,tile_y,WORLD_TILES.METEOR) -- 将地皮变为月岛地皮

    end)
end