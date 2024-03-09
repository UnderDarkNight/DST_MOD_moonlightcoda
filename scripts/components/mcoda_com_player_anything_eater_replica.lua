----------------------------------------------------------------------------------------------------------------------------------
--[[

     test 函数挂到 replica
     
     
]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_player_anything_eater = Class(function(self, inst)
    self.inst = inst

    self._item_test_fns = {}
    self._item_fast_eat_list = {}
end,
nil,
{

})
----------------------------------------------------------------------------------------------------------------------------------
---- Test
    function mcoda_com_player_anything_eater:AddItemTestFn(item_prefab,fn,fast_eat)
        if type(item_prefab) == "string" and type(fn) == "function" then
            self._item_test_fns[item_prefab] = fn
            self._item_fast_eat_list[item_prefab] = fast_eat or false
        end
    end
    function mcoda_com_player_anything_eater:TestItem(item)
        local test_ret_flag = false
        local fast_eat_flag = false
        if type(item) == "table" then

            if not item.replica.inventoryitem:IsGrandOwner(self.inst) then  --- 强制在背包里
                return false,false
            end

            local item_prefab = tostring(item.prefab)
            if self._item_test_fns[item_prefab] then
                test_ret_flag = self._item_test_fns[item_prefab](item,self.inst)
            end
            if self._item_fast_eat_list[item_prefab] then
                fast_eat_flag = self._item_fast_eat_list[item_prefab]
            end
        end
        return test_ret_flag,fast_eat_flag
    end
----------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------
return mcoda_com_player_anything_eater