--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

     所有物品挂上 交互组件，触发交互 函数。
     玩家身上挂上 检查组件和函数。
     
     
]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




local MCODA_COM_EQUIPMENT_REFUSER = Action({priority = 999})   --- 距离 和 目标物体的 碰撞体积有关，为 0 也没法靠近。
MCODA_COM_EQUIPMENT_REFUSER.id = "MCODA_COM_EQUIPMENT_REFUSER"
MCODA_COM_EQUIPMENT_REFUSER.strfn = function(act) --- 客户端检查是否通过,同时返回显示字段
    return "DEFAULT"
end

MCODA_COM_EQUIPMENT_REFUSER.fn = function(act)    --- 只在服务端执行~
    local item = act.invobject
    -- local target = act.target
    local doer = act.doer
    local replica_com = doer.replica.mcoda_com_equipment_refuser or doer.replica._.mcoda_com_equipment_refuser
    if replica_com and replica_com:IsRefuse(item)   then
        local str = doer.components.mcoda_com_equipment_refuser:GetRefuseReason(item)
        doer.components.talker:Say(str)
    end
    return true
end
AddAction(MCODA_COM_EQUIPMENT_REFUSER)

--- 【重要笔记】AddComponentAction 函数有陷阱，一个MOD只能对一个组件添加一个动作。
--- 【重要笔记】例如AddComponentAction("USEITEM", "inventoryitem", ...) 在整个MOD只能使用一次。
--- 【重要笔记】modname 参数伪装也不能绕开。


-- AddComponentAction("EQUIPPED", "npng_com_book" , function(inst, doer, target, actions, right)    --- 装备后多个技能
-- AddComponentAction("USEITEM", "inventoryitem", function(inst, doer, target, actions, right) -- -- 一个物品对另外一个目标用的技能，物品身上有 这个com 就能触发
-- AddComponentAction("SCENE", "npng_com_book" , function(inst, doer, actions, right)-------    建筑一类的特殊交互使用
-- AddComponentAction("INVENTORY", "npng_com_book", function(inst, doer, actions, right)   ---- 拖到玩家自己身上就能用
-- AddComponentAction("POINT", "complexprojectile", function(inst, doer, pos, actions, right)   ------ 指定坐标位置用。

-- 在后续注册了，这里暂时注释掉。


AddComponentAction("INVENTORY", "equippable" , function(item, doer, actions, right) 
    if item and doer then
        local replica_com = doer.replica.mcoda_com_equipment_refuser or doer.replica._.mcoda_com_equipment_refuser
        if replica_com and replica_com:IsRefuse(item) then
            table.insert(actions, ACTIONS.MCODA_COM_EQUIPMENT_REFUSER)

        end
    end
end)


local handler_fn = function(player)

    -- return "give"
    return "moonlightcoda_sg_action_refuse"
end

AddStategraphActionHandler("wilson",ActionHandler(MCODA_COM_EQUIPMENT_REFUSER,function(player)
    return handler_fn(player)
end))
AddStategraphActionHandler("wilson_client",ActionHandler(MCODA_COM_EQUIPMENT_REFUSER, function(player)
    return handler_fn(player)
end))


STRINGS.ACTIONS.MCODA_COM_EQUIPMENT_REFUSER = STRINGS.ACTIONS.MCODA_COM_EQUIPMENT_REFUSER or {
    DEFAULT = STRINGS.ACTIONS.EQUIP
}



