--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    WORLD_TILES.METEOR = 43    月岛地皮index


]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end


    -- inst:ListenForEvent("moonlightcoda_master_postinit",function()    
    -- end)

    inst:DoTaskInTime(0,function()
        
        if inst.components.areaaware == nil then
            return
        end

        local old_UpdatePosition = inst.components.areaaware.UpdatePosition
        inst.components.areaaware.UpdatePosition = function(self,x,y,z,...)
            local tile_x,tile_y = TheWorld.Map:GetTileXYAtPoint(x,y,z) -- 获取当前坐标的地皮坐标
            if TheWorld.Map:GetTile(tile_x,tile_y) == WORLD_TILES.METEOR then
                inst.components.sanity:EnableLunacy(true,"mooncoda_in_lunacy_tile")
            else
                inst.components.sanity:EnableLunacy(false,"mooncoda_in_lunacy_tile")
            end
            return old_UpdatePosition(self,x,y,z,...)
        end
    
    end)



end