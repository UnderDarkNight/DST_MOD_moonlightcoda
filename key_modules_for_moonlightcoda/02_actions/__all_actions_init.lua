-- -- 这个文件是给 modmain.lua 调用的总入口
-- -- 本lua 和 modmain.lua 平级
-- -- 子分类里有各自的入口
-- -- 注意文件路径


modimport("key_modules_for_moonlightcoda/02_actions/01_sg_special_quick_eat_action.lua") --- 快速吃东西 sg
modimport("key_modules_for_moonlightcoda/02_actions/02_sg_special_eat_action.lua") --- 慢速吃东西 sg
modimport("key_modules_for_moonlightcoda/02_actions/03_com_anything_eater.lua") --- 任意吃东西的交互

modimport("key_modules_for_moonlightcoda/02_actions/04_com_action_workable.lua") --- 通用 右键交互组件
modimport("key_modules_for_moonlightcoda/02_actions/05_com_item_acceptable.lua") --- 通用 物品接受组件
modimport("key_modules_for_moonlightcoda/02_actions/06_com_action_item_use_to.lua") --- 通用 物品给予组件

modimport("key_modules_for_moonlightcoda/02_actions/07_com_special_book_reader.lua") --- 特殊读书组件

modimport("key_modules_for_moonlightcoda/02_actions/08_com_equipment_refuser.lua") --- 装备拒绝组件
modimport("key_modules_for_moonlightcoda/02_actions/09_sg_refuse_action.lua") --- 拒绝sg动作
