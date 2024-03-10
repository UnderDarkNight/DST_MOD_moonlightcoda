-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

]]--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






------------------------------------------------------------------------------------------------
--- 给目标石头上标记
    AddPrefabPostInit(
        "moon_altar_rock_glass",
        function(inst)
            inst:AddTag("moon_altar_rock_glass")
        end
    )
------------------------------------------------------------------------------------------------

AddPrefabPostInit(
    "world",
    function(inst)
        if inst:HasTag("cave") then
            return
        end
        if not inst.ismastersim then
            return
        end

        inst:DoTaskInTime(0,function()
            
            local marker = TheSim:FindFirstEntityWithTag("moonlightcoda_other_moon_island_marker")
            if marker == nil then
                local temp_marker = TheSim:FindFirstEntityWithTag("moon_altar_rock_glass")
                if temp_marker ~= nil then
                    local x,y,z = temp_marker.Transform:GetWorldPosition()
                    SpawnPrefab("moonlightcoda_other_moon_island_marker").Transform:SetPosition(x, y, z)
                end
            end

        end)

        
    end
)

