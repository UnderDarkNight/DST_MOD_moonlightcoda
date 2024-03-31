----------------------------------------------------
--- 本文件单纯返还路径
----------------------------------------------------

-- local function sum(a, b)
--     return a + b
-- end

-- local info = debug.getinfo(sum)

-- for k,v in pairs(info) do
--         print(k,':', info[k])
-- end

--------------------------------------------------------------------------
local addr_test = debug.getinfo(1).source           ---- 找到绝对路径

local temp_str_index = string.find(addr_test, "scripts/prefabs/")
local temp_addr = string.sub(addr_test,temp_str_index,-1)
-- print("fake error 6666666666666:",temp_addr)    ---- 找到本文件所处的相对路径

local temp_str_index2 = string.find(temp_addr,"/__prefabs_list.lua")

local Prefabs_addr_base = string.sub(temp_addr,1,temp_str_index2) .. "/"    --- 得到最终文件夹路径

---------------------------------------------------------------------------
-- local Prefabs_addr_base = "scripts/prefabs/01_moonlightcoda_items/"               --- 文件夹路径
local prefabs_name_list = {


    "01_dock_kit",                                  --- 码头套装
    "02_book_moon",                                 --- 月之魔典
    "03_moonrocknugget_maker",                      --- 月岩
    "04_moonglass_maker",                           --- 玻璃
    "05_purebrilliance_maker",                      --- 纯粹辉煌
    "06_moonglass_trans_2_purebrilliance_maker",    --- 玻璃 转 纯粹辉煌
    "07_opalpreciousgem_maker",                     --- 彩虹宝石合成
    "08_opalpreciousgem_maker_by_value",            --- 消耗三维 做彩虹宝石
    "09_opalstaff_maker",                           --- 唤月者魔杖
    "10_laser",                                     --- 激光

    "11_lunar_forge_kit_maker",                     --- 辉煌铁匠铺套装

}

---------------------------------------------------------------------------
---- 正在测试的物品
if TUNING.UNDERWORLD_HANA_DEBUGGING_MODE == true then
    local debugging_name_list = {



    }
    for k, temp in pairs(debugging_name_list) do
        table.insert(prefabs_name_list,temp)
    end
end
---------------------------------------------------------------------------












local ret_addrs = {}
for i, v in ipairs(prefabs_name_list) do
    table.insert(ret_addrs,Prefabs_addr_base..v..".lua")
end
return ret_addrs