-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



AddPlayerPostInit(function(inst)



    if not TheWorld.ismastersim then
        return
    end
    ----------------------------------------------------------------------------------------------------------
    --- 通用数据库
        if inst.components.mcoda_com_data == nil then
            inst:AddComponent("mcoda_com_data")
        end
    ----------------------------------------------------------------------------------------------------------
    --- 角度event指示器
        if inst.components.mcoda_com_player_rotation == nil then
            inst:AddComponent("mcoda_com_player_rotation")
        end
    ----------------------------------------------------------------------------------------------------------
    ----
        
    ----------------------------------------------------------------------------------------------------------
end)
