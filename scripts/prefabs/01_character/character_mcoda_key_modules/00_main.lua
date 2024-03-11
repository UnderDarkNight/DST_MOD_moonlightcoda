--------------------------------------------------------------------------------------------------------------------------------------------------
---- 模块总入口，使用 common_postinit 进行嵌入初始化，注意 mastersim 区分
--------------------------------------------------------------------------------------------------------------------------------------------------
return function(inst)

    if TheWorld.ismastersim then
        if inst.components.mcoda_com_data == nil then
            inst:AddComponent("mcoda_com_data") --- 通用用数据库
        end
        if inst.components.mcoda_com_rpc_event == nil then
            inst:AddComponent("mcoda_com_rpc_event") --- RPC 信道封装
        end
        if inst.components.mcoda_com_tag_sys == nil then
            inst:AddComponent("mcoda_com_tag_sys") --- 标签系统
        end
    end

    local modules = {
        "prefabs/01_character/character_mcoda_key_modules/01_hud_change",                           ---- 修改官方的HUD
        "prefabs/01_character/character_mcoda_key_modules/02_anything_eater",                       ---- 吃东西 的组件
        "prefabs/01_character/character_mcoda_key_modules/03_book_reader",                          ---- 特殊读书组件
        "prefabs/01_character/character_mcoda_key_modules/04_talker_hook",                          ---- 某些特殊的说话文本替换
        "prefabs/01_character/character_mcoda_key_modules/05_equipment_refuser",                    ---- 装备拒绝器
        "prefabs/01_character/character_mcoda_key_modules/06_combat_and_damage",                    ---- 战斗和伤害组件
        "prefabs/01_character/character_mcoda_key_modules/07_lunar_aligned_animals",                ---- 月亮阵营友好组件
        "prefabs/01_character/character_mcoda_key_modules/08_eater",                                ---- 吃东西相关操作：不能回血等
        "prefabs/01_character/character_mcoda_key_modules/09_moon_and_island",                      ---- 月岛、夜晚 回血事件
        "prefabs/01_character/character_mcoda_key_modules/10_sanity_and_shadow_creatures",          ---- 影怪 和 san
        "prefabs/01_character/character_mcoda_key_modules/11_shadow_creatures_spawner",             ---- 自制影怪刷新器
        "prefabs/01_character/character_mcoda_key_modules/12_item_spawner",                         ---- 血量低的时候丢东西出来
        "prefabs/01_character/character_mcoda_key_modules/13_level_sys",                            ---- 等级系统


    }
    for k, lua_addr in pairs(modules) do
        local temp_fn = require(lua_addr)
        if type(temp_fn) == "function" then
            temp_fn(inst)
        end
    end


    inst:AddTag("moonlightcoda")

    inst.customidleanim = "idle_wendy"  -- 闲置站立动画
    inst.soundsname = "wendy"           -- 角色声音



    if not TheWorld.ismastersim then
        return
    end



end