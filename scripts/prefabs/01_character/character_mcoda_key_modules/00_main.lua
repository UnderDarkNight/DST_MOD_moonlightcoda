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
        "prefabs/01_character/character_mcoda_key_modules/14_new_spawn_gift",                       ---- 角色新入存档，进行礼物赠送
        "prefabs/01_character/character_mcoda_key_modules/15_animstate_hook",                       ---- 修改动画组件，屏蔽一些动画/装备
        "prefabs/01_character/character_mcoda_key_modules/16_sound_hook",                           ---- 修改声音播放组件
        "prefabs/01_character/character_mcoda_key_modules/17_heavylifting",                         ---- 搬重物减速处理
        "prefabs/01_character/character_mcoda_key_modules/18_level_sys_widget",                     ---- 等级显示界面
        "prefabs/01_character/character_mcoda_key_modules/19_death_event",                          ---- 死亡触发月相变换
        "prefabs/01_character/character_mcoda_key_modules/20_coord_and_once_again",                 ---- 【标点】【再生】相关的交互
        "prefabs/01_character/character_mcoda_key_modules/21_custom_skeleton",                      --- 客制化 死亡骷髅 配置


    }
    for k, lua_addr in pairs(modules) do
        local temp_fn = require(lua_addr)
        if type(temp_fn) == "function" then
            temp_fn(inst)
        end
    end


    inst:AddTag("moonlightcoda")

    inst.customidleanim = "moonlightcoda_funny_idle"  -- 闲置站立动画
    inst.talksoundoverride = "moonlightcoda_sound/moonlightcoda_sound/talk"
    -- inst.customidleanim = "idle_wendy"  -- 闲置站立动画
    inst.soundsname = "wendy"           -- 角色声音


    inst.AnimState:OverrideSymbol("wendy_idle_flower","moonlightcoda_idle_flower","wendy_idle_flower")
    inst.AnimState:OverrideSymbol("wood_splinter","moonlightcoda_hand_glass","wood_splinter")

    if not TheWorld.ismastersim then
        return
    end



end