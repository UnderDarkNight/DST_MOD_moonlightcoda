--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

1. 人物戴着启迪之冠的时候 使用35个玻璃，10个纯粹辉煌，100点生命 可以制作1个启迪之冠

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end

    local function tag_checker()
        inst:DoTaskInTime(0,function()
            local hat_equipped = false
            for slot, item in pairs(inst.components.inventory.equipslots) do
                if item and item.prefab == "alterguardianhat" and not hat_equipped then
                    hat_equipped = true
                end
            end

            if hat_equipped then
                inst.components.mcoda_com_tag_sys:AddTag("moonlightcoda_alterguardianhat_maker")
                inst:PushEvent("refreshcrafting")
            else
                inst.components.mcoda_com_tag_sys:RemoveTag("moonlightcoda_alterguardianhat_maker")
            end
            -- print("info +++",hat_equipped)
        end)
    end

    inst:ListenForEvent("unequip", tag_checker)
    inst:ListenForEvent("equip", tag_checker)

end