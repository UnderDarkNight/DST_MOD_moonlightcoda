----------------------------------------------------------------------------------------------------------------------------------
--[[

     test 函数挂到 replica
     
]]--
----------------------------------------------------------------------------------------------------------------------------------
local mcoda_com_special_book_reader = Class(function(self, inst)
    self.inst = inst


end,
nil,
{

})


----------------------------------------------------------------------------------------------------------------------------------
---- 
    function mcoda_com_special_book_reader:OnRead(book_item)
        if book_item.components.book then
                local success, reason = book_item.components.book:OnRead(self.inst)
                -- print("info",success,reason)
                if success then
                    self.inst:PushEvent("mcoda_com_special_book_reader",book_item)  
                    print("fake error mcoda_com_special_book_reader  OnRead ")
                    return true
                end
                return success,reason
        end
        return false
    end
----------------------------------------------------------------------------------------------------------------------------------
return mcoda_com_special_book_reader
