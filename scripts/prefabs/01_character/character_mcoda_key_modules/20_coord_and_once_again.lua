--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    标点/再生 的 动画标记 切换

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    --------------------------------------------------------------------------------------------------------------------
    ---- 只在客户端添加监听
        if not TheNet:IsDedicated() then        
            inst:ListenForEvent("moonlightcoda_ghost_tag_for_coord",function(inst,_table)
                inst.AnimState:SetClientSideBuildOverrideFlag("moonlightcoda_ghost",_table and _table.flag or false)
            end)
        end
    --------------------------------------------------------------------------------------------------------------------
    if not TheWorld.ismastersim then
        return
    end

    --------------------------------------------------------------------------------------------------------------------
    ---- 玩家死亡/复活 切换外观事件
        inst:ListenForEvent("ms_becameghost",function()
            inst:DoTaskInTime(0,function()
                inst.components.mcoda_com_rpc_event:PushEvent("moonlightcoda_ghost_tag_for_coord",{flag = true})
            end)
        end)
        inst:ListenForEvent("ms_respawnedfromghost",function()
            inst:DoTaskInTime(0,function()
                inst.components.mcoda_com_rpc_event:PushEvent("moonlightcoda_ghost_tag_for_coord",{flag = false})          
            end)
        end)
        inst:DoTaskInTime(1,function()
            inst.components.mcoda_com_rpc_event:PushEvent("moonlightcoda_ghost_tag_for_coord",{flag = inst:HasTag("playerghost")}) 
        end)

    --------------------------------------------------------------------------------------------------------------------
    ---- respawn_from_ghost_by_coord
        inst:ListenForEvent("ms_respawnedfromghost",function(inst,data)
            if inst.components.mcoda_com_tag_sys:HasTag("respawn_from_ghost_by_coord") then
                inst.components.mcoda_com_tag_sys:RemoveTag("respawn_from_ghost_by_coord")
                ---- sanity
                    inst.components.sanity.penalty = 0
                    inst.components.sanity:SetPercent(1,true)
                ---- health
                    inst.components.health.penalty = 0
                    inst.components.health:SetPercent(1,true)
                ---- hunger
                    inst.components.hunger:SetPercent(1,true)
            end
        end)
    --------------------------------------------------------------------------------------------------------------------
    -----------------------------
    -- doer:PushEvent("respawnfromghost", { source = self.inst })

end