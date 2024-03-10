----------------------------------------------------------------------------------------------------------------------------------
--[[

     test 函数挂到 replica
     
]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_special_book_reader = Class(function(self, inst)
    self.inst = inst

    self._book_test_list = {}
end,
nil,
{

})


----------------------------------------------------------------------------------------------------------------------------------
---- 通用书 test / pretest
    function mcoda_com_special_book_reader:AddCommonBookTestFn(fn)
        if type(fn) == "function" then
            self._common_book_test_fn = fn
        end
    end

    function mcoda_com_special_book_reader:AddCommonBookPreTestFn(fn)
        if type(fn) == "function" then
            self._common_book_pre_test_fn = fn
        end
    end
    function mcoda_com_special_book_reader:BookPreTest(book_item)
        if self._common_book_pre_test_fn then
            return self._common_book_pre_test_fn(book_item,self.inst)
        end
        return true
    end
----------------------------------------------------------------------------------------------------------------------------------
---- 单本书 test
    function mcoda_com_special_book_reader:AddBookTestFn(book_prefab,fn)
        if type(fn) == "function" and type(book_prefab) == "string" then
            self._book_test_list[book_prefab] = fn
        end
    end

    function mcoda_com_special_book_reader:BookTest(book_item)
        if not book_item:HasTag("book") then
            return false
        end

        if not self:BookPreTest(book_item) then
            return false
        end

        local book_prefab = book_item.prefab
        if self._book_test_list[book_prefab] then
            return self._book_test_list[book_prefab](book_item,self.inst)
        end

        if self._common_book_test_fn then
            return self._common_book_test_fn(book_item,self.inst)
        end

        return false
    end
----------------------------------------------------------------------------------------------------------------------------------
return mcoda_com_special_book_reader
