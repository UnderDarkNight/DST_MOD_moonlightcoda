--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

     所有物品挂上 交互组件，触发交互 函数。
     玩家身上挂上 检查组件和函数。
     
     
]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




local MCODA_COM_PLAYER_ANYTHING_EATER = Action({priority = 999})   --- 距离 和 目标物体的 碰撞体积有关，为 0 也没法靠近。
MCODA_COM_PLAYER_ANYTHING_EATER.id = "MCODA_COM_PLAYER_ANYTHING_EATER"
MCODA_COM_PLAYER_ANYTHING_EATER.strfn = function(act) --- 客户端检查是否通过,同时返回显示字段
    return "DEFAULT"
end

MCODA_COM_PLAYER_ANYTHING_EATER.fn = function(act)    --- 只在服务端执行~
    local item = act.invobject
    -- local target = act.target
    local doer = act.doer
    local replica_com = doer.replica.mcoda_com_player_anything_eater or doer.replica._.mcoda_com_player_anything_eater
    if replica_com  then
        local test,fasteat = replica_com:TestItem(item,doer)
        if test then
            return doer.components.mcoda_com_player_anything_eater:OnEat(item)
        end
    end
    return false
end
AddAction(MCODA_COM_PLAYER_ANYTHING_EATER)

--- 【重要笔记】AddComponentAction 函数有陷阱，一个MOD只能对一个组件添加一个动作。
--- 【重要笔记】例如AddComponentAction("USEITEM", "inventoryitem", ...) 在整个MOD只能使用一次。
--- 【重要笔记】modname 参数伪装也不能绕开。


-- AddComponentAction("EQUIPPED", "npng_com_book" , function(inst, doer, target, actions, right)    --- 装备后多个技能
-- AddComponentAction("USEITEM", "inventoryitem", function(inst, doer, target, actions, right) -- -- 一个物品对另外一个目标用的技能，物品身上有 这个com 就能触发
-- AddComponentAction("SCENE", "npng_com_book" , function(inst, doer, actions, right)-------    建筑一类的特殊交互使用
-- AddComponentAction("INVENTORY", "npng_com_book", function(inst, doer, actions, right)   ---- 拖到玩家自己身上就能用
-- AddComponentAction("POINT", "complexprojectile", function(inst, doer, pos, actions, right)   ------ 指定坐标位置用。

-- 在后续注册了，这里暂时注释掉。


AddComponentAction("INVENTORY", "mcoda_com_anything_can_eat_com_for_item" , function(item, doer, actions, right) 
    if item and doer then
        local replica_com = doer.replica.mcoda_com_player_anything_eater or doer.replica._.mcoda_com_player_anything_eater
        if replica_com  then
            local test,fasteat = replica_com:TestItem(item,doer)
            if test then
                table.insert(actions, ACTIONS.MCODA_COM_PLAYER_ANYTHING_EATER)
            end
        end
    end
end)


local handler_fn = function(player)
    local creash_flag , ret = pcall(function()
        -- local target = player.bufferedaction.target
        local item = player.bufferedaction.invobject
        local replica_com = player.replica.mcoda_com_player_anything_eater or player.replica._.mcoda_com_player_anything_eater
        if replica_com  then
            local test,fasteat = replica_com:TestItem(item,player)
            if fasteat then
                return "moonlightcoda_special_quick_eat"
            else
                return "moonlightcoda_special_eat"
            end
        end
        return "moonlightcoda_special_eat"
    end)
    if creash_flag == true then
        return ret
    else
        print("error in MCODA_COM_PLAYER_ANYTHING_EATER ActionHandler")
        print(ret)
    end
    return "moonlightcoda_special_eat"
end

AddStategraphActionHandler("wilson",ActionHandler(MCODA_COM_PLAYER_ANYTHING_EATER,function(player)
    return handler_fn(player)
end))
AddStategraphActionHandler("wilson_client",ActionHandler(MCODA_COM_PLAYER_ANYTHING_EATER, function(player)
    return handler_fn(player)
end))


STRINGS.ACTIONS.MCODA_COM_PLAYER_ANYTHING_EATER = STRINGS.ACTIONS.MCODA_COM_PLAYER_ANYTHING_EATER or {
    DEFAULT = STRINGS.ACTIONS.EAT
}



