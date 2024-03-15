--- --- hook  掉 inst.SoundEmitter  不依赖mod加载优先级，方便和其他MOD兼容

TUNING["moonlightcoda.SoundEmitterFn"]= {}

----------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------
------ 可以上线使用的模块
modimport("key_modules_for_moonlightcoda/07_SoundEmitter_Hook/01_playsound.lua")    --- 更新 PlayAnimation 和 PushAnimation 

---------------------------------------------------------------------------------------------------------------
local function theSoundEmitter_fn_Upgrade(theSoundEmitter)
    for fn_name, fn in pairs(TUNING["moonlightcoda.SoundEmitterFn"]) do
        if fn and type(fn) == "function" then
            fn(theSoundEmitter)
        end
    end
end


local function Hook_Player_SoundEmitter(inst)

    if type(inst.SoundEmitter) == "userdata" then            ----- 只能转变一次，重复的操作 会导致  __index 函数错误
        --------------------------------------------------------------------------------------------------------------------------------
            inst.__SoundEmitter_userdata_moonlightcoda = inst.SoundEmitter      ----- 转移复制原有 userdata
            inst.SoundEmitter = {inst = inst , name = "SoundEmitter"}   ----- name 是必须的，用于 从 _G  里 得到目标, 玩家 inst 也是从这里进入
            ------ 逻辑上复现棱镜模组的代码：

            setmetatable( inst.SoundEmitter , {
                __index = function(_table,fn_name)
                            if _table and _table.inst and _table.name then

                                    if _G[_table.name][fn_name] then    ---- 从_G全局里得到原函数？？这句并不好理解。   ---- lua 会往_G 里自动挂载所有要运行的 userdata ？？
                                        local _table_name = _table.name
                                        local fn = function(temp_table,...)
                                            return _G[_table_name][fn_name](temp_table.inst.__SoundEmitter_userdata_moonlightcoda,...)
                                        end
                                        rawset(_table,fn_name,fn)
                                        return fn
                                    end

                            end
                end,
            })
        --------------------------------------------------------------------------------------------------------------------------------
    else
        print("warning : ThePlayer.SoundEmitter is already a table ")    
    end

    ------- 成功把  inst.SoundEmitter 从  userdata 变成 table
    --------------------- 挂载函数
    if inst.SoundEmitter.inst ~= inst then
        inst.SoundEmitter.inst = inst
    end
    ---------------------
    theSoundEmitter_fn_Upgrade(inst.SoundEmitter)
    print("moonlightcoda hook player SoundEmitter finish")
end

AddPlayerPostInit(function(inst)
    ------------ 为了处理棱镜的兼容问题，只能 DoTaskInTime 0 的时候执行了,棱镜的HOOK API 并没有考虑 其他MOD也同样原理 hook。
    ------------ 目标是把 SoundEmitter 从  userdata 转为  table ，哪个MOD优先转换不重要。

    -- if not TheWorld.ismastersim then    ------ hook 服务端足够了
    --     return
    -- end
    inst:DoTaskInTime(0,Hook_Player_SoundEmitter)    
end)






























---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------ 下面这些用来备份留档说明。  --- 看不懂棱镜逻辑的时候过来看这里
--[[
local function Hook_Player_SoundEmitter(inst)

    if type(inst.SoundEmitter) == "userdata" then            ----- 只能转变一次，重复的操作 会导致  __index 函数错误
        inst.__SoundEmitter_userdata_moonlightcoda = inst.SoundEmitter      ----- 转移复制原有 userdata
        inst.__SoundEmitter_new_fns_moonlightcoda = {}                ----- 新的函数在这里面， __index 里挂进去

        inst.SoundEmitter = {inst = inst,name = "SoundEmitter"}   ----- name 是必须的，用于 从 _G  里 得到目标, 玩家 inst 也是从这里进入
        ----------------------------------- 这里复现了 棱镜 hook userdata 的代码，有些 东西可能用不上。
        setmetatable(inst.SoundEmitter,{
            __index = function(_table,fn_name)
                        if _table and _table.inst and _table.name then
                            ------ 逻辑上复现棱镜模组的代码：

                                -- 下面这段【大概】是棱镜里 给多个 userdata hook 时候用的，方便统一的路径寻找。
                                if _table.inst.__SoundEmitter_new_fns_moonlightcoda[fn_name] then                       ----- 如果有hook过的函数，直接调用
                                    rawset(_table,fn_name,_table.inst.__SoundEmitter_new_fns_moonlightcoda[fn_name])
                                    return _table.inst.__SoundEmitter_new_fns_moonlightcoda[fn_name]
                                end

                                if _G[_table.name][fn_name] then    ---- 从_G全局里得到原函数？？这句并不好理解。   ---- lua 会往_G 里自动挂载所有要运行的 userdata ？？
                                    local _table_name = _table.name
                                    local fn = function(temp_table,...)
                                        return _G[_table_name][fn_name](temp_table.inst.__SoundEmitter_userdata_moonlightcoda,...)
                                    end
                                    _table.inst.__SoundEmitter_new_fns_moonlightcoda[fn_name] = fn      -- 缓存生成的镜像函数
                                    rawset(_table,fn_name,fn)
                                    return fn
                                end

                        end
            end,
        })
        ---------------- 成功把  inst.SoundEmitter 从  userdata 变成 table
    end

    --------------------- 挂载函数
    if inst.SoundEmitter.inst ~= inst then
        inst.SoundEmitter.inst = inst
    end
    ---------------------
    theSoundEmitter_fn_Upgrade(inst.SoundEmitter)

end
]]----