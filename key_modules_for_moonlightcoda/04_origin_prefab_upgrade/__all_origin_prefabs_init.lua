-- -- 这个文件是给 modmain.lua 调用的总入口
-- -- 本lua 和 modmain.lua 平级
-- -- 子分类里有各自的入口
-- -- 注意文件路径


modimport("key_modules_for_moonlightcoda/04_origin_prefab_upgrade/00_world_upgrade.lua")  --- TheWorld 组件

modimport("key_modules_for_moonlightcoda/04_origin_prefab_upgrade/01_player_com.lua")  --- 玩家组件

modimport("key_modules_for_moonlightcoda/04_origin_prefab_upgrade/02_moon_island_marker.lua")  --- 月岛标记组件

modimport("key_modules_for_moonlightcoda/04_origin_prefab_upgrade/03_reviver.lua")  --- 告密的心拒绝组件

modimport("key_modules_for_moonlightcoda/04_origin_prefab_upgrade/04_lunar_aligned_animals.lua")  --- 月亮阵营的生物hook
