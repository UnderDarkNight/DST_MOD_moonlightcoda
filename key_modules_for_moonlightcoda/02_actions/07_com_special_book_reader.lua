--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

     所有物品挂上 交互组件，触发交互 函数。
     玩家身上挂上 检查组件和函数。
     
     
]]--
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- hook 官方 book 组件。 官方BOOK 组件默认玩家有  reader 组件
    AddComponentPostInit("book", function(self)

        local old_OnRead = self.OnRead
        self.OnRead = function(self,reader,...)
            local crash_flag,success, reason = pcall(old_OnRead,self,reader,...)
            if crash_flag then
                return success, reason
            else
                    if reader then
                        local replica_com = reader.replica.mcoda_com_special_book_reader or reader.replica._.mcoda_com_special_book_reader
                        if replica_com and replica_com:BookTest(self.inst) then
                            return true
                        end
                    end
            end
        end
    end)
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




local MCODA_COM_SPECIAL_BOOK_READER = Action({priority = 10})   --- 距离 和 目标物体的 碰撞体积有关，为 0 也没法靠近。
MCODA_COM_SPECIAL_BOOK_READER.id = "MCODA_COM_SPECIAL_BOOK_READER"
MCODA_COM_SPECIAL_BOOK_READER.strfn = function(act) --- 客户端检查是否通过,同时返回显示字段
    return "DEFAULT"
end

MCODA_COM_SPECIAL_BOOK_READER.fn = function(act)    --- 只在服务端执行~
    local item = act.invobject
    local target = act.target
    local doer = act.doer

    local book = target or item

    local replica_com = doer.replica.mcoda_com_special_book_reader or doer.replica._.mcoda_com_special_book_reader
    if book and replica_com and replica_com:BookTest(book) then
        return doer.components.mcoda_com_special_book_reader:OnRead(book)        
    end
    return false
end
AddAction(MCODA_COM_SPECIAL_BOOK_READER)

--- 【重要笔记】AddComponentAction 函数有陷阱，一个MOD只能对一个组件添加一个动作。
--- 【重要笔记】例如AddComponentAction("USEITEM", "inventoryitem", ...) 在整个MOD只能使用一次。
--- 【重要笔记】modname 参数伪装也不能绕开。


-- AddComponentAction("EQUIPPED", "npng_com_book" , function(inst, doer, target, actions, right)    --- 装备后多个技能
-- AddComponentAction("USEITEM", "inventoryitem", function(inst, doer, target, actions, right) -- -- 一个物品对另外一个目标用的技能，物品身上有 这个com 就能触发
-- AddComponentAction("SCENE", "npng_com_book" , function(inst, doer, actions, right)-------    建筑一类的特殊交互使用
-- AddComponentAction("INVENTORY", "npng_com_book", function(inst, doer, actions, right)   ---- 拖到玩家自己身上就能用
-- AddComponentAction("POINT", "complexprojectile", function(inst, doer, pos, actions, right)   ------ 指定坐标位置用。

-- 在后续注册了，这里暂时注释掉。


AddComponentAction("INVENTORY", "book" , function(item, doer, actions, right) 
    if item and doer then
        local replica_com = doer.replica.mcoda_com_special_book_reader or doer.replica._.mcoda_com_special_book_reader
        if replica_com and replica_com:BookTest(item) then
                table.insert(actions, ACTIONS.MCODA_COM_SPECIAL_BOOK_READER)            
        end
    end
end)


local handler_fn = function(player)
    return "book"
end

AddStategraphActionHandler("wilson",ActionHandler(MCODA_COM_SPECIAL_BOOK_READER,function(player)
    return handler_fn(player)
end))
AddStategraphActionHandler("wilson_client",ActionHandler(MCODA_COM_SPECIAL_BOOK_READER, function(player)
    return handler_fn(player)
end))


STRINGS.ACTIONS.MCODA_COM_SPECIAL_BOOK_READER = STRINGS.ACTIONS.MCODA_COM_SPECIAL_BOOK_READER or {
    DEFAULT = STRINGS.ACTIONS.READ
}

