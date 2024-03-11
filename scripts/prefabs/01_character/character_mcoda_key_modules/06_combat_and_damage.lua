--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    function Combat:CalcDamage(target, weapon, multiplier)  官方 计算伤害的函数

    对暗影生物(包括暗影联盟生物)伤害为1.5
    受到暗影生物(包括暗影联盟生物)伤害为0.8

   
    击败任何暗影生物恢复15月能值   attacker:PushEvent("killed", { victim = self.inst, attacker = attacker })

]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

return function(inst)
    if not TheWorld.ismastersim then
        return
    end


    ---------------------------------------------------------------------------------------------
    ---- 对暗影阵营 增伤。不知道为什么，不能直接加，得延时添加
        inst:AddComponent("damagetypebonus")
        inst:DoTaskInTime(0,function()
            inst.components.damagetypebonus:AddBonus("shadow_aligned", inst, TUNING.MOONLIGHTCODA_DEBUGGING_MODE and 20 or 1.5)
        end)
    ---------------------------------------------------------------------------------------------
    ---- 对来自暗影阵营的伤害减少。
        inst:AddComponent("damagetyperesist")
        inst:DoTaskInTime(0,function()
            inst.components.damagetyperesist:AddResist("shadow_aligned", inst, TUNING.MOONLIGHTCODA_DEBUGGING_MODE and 0.01 or 0.8)
        end)
    ---------------------------------------------------------------------------------------------

    ---------------------------------------------------------------------------------------------
    ---- 击败任何暗影生物恢复15月能值
        inst:ListenForEvent("killed", function(_,_table)
            local monster = _table and _table.victim
            if not monster then
                return
            end
            if monster:HasOneOfTags({"shadow_aligned","shadow"}) then
                inst.components.health:DoDelta(15)
            end
        end)
        
    ---------------------------------------------------------------------------------------------




end