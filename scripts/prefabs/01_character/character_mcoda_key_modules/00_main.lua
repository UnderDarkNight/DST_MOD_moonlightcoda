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
    end

    local modules = {
        "prefabs/01_character/character_mcoda_key_modules/01_hud_change",                    ---- 修改官方的HUD
        "prefabs/01_character/character_mcoda_key_modules/02_anything_eater",                    ---- 吃东西 的组件
        "prefabs/01_character/character_mcoda_key_modules/03_book_reader",                    ---- 特殊读书组件
        "prefabs/01_character/character_mcoda_key_modules/04_talker_hook",                    ---- 某些特殊的说话文本替换


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