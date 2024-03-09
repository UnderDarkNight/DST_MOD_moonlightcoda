-- -- -- 这个文件是给 modmain.lua 调用的总入口
-- -- -- 本lua 和 modmain.lua 平级
-- -- -- 子分类里有各自的入口
-- -- -- 注意文件路径


modimport("key_modules_for_moonlightcoda/00_others/__all_others_modules_init.lua") 
-- 难以归类的杂乱东西

modimport("key_modules_for_moonlightcoda/01_character/__all_character_modules_init.lua") 
-- 角色模块

modimport("key_modules_for_moonlightcoda/02_actions/__all_actions_init.lua") 
-- sg com交互 等注册

modimport("key_modules_for_moonlightcoda/03_origin_components_upgrade/__all_com_init.lua") 
-- 官方的 component 修改


