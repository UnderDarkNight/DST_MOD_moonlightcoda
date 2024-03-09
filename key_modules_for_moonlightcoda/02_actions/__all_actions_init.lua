-- -- 这个文件是给 modmain.lua 调用的总入口
-- -- 本lua 和 modmain.lua 平级
-- -- 子分类里有各自的入口
-- -- 注意文件路径


modimport("key_modules_for_moonlightcoda/02_actions/01_sg_special_quick_eat_action.lua") --- 快速吃东西 sg
modimport("key_modules_for_moonlightcoda/02_actions/02_sg_special_eat_action.lua") --- 慢速吃东西 sg
modimport("key_modules_for_moonlightcoda/02_actions/03_com_anything_eater.lua") --- 任意吃东西的交互