------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

    角色基础初始化

]]--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



local function Language_check()
    local language = "en"
    if type(TUNING["moonlightcoda.Language"]) == "function" then
        language = TUNING["moonlightcoda.Language"]()
    elseif type(TUNING["moonlightcoda.Language"]) == "string" then
        language = TUNING["moonlightcoda.Language"]
    end
    return language
end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 角色立绘大图
    GLOBAL.PREFAB_SKINS["moonlightcoda"] = {
        "moonlightcoda_none",
    }
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 角色选择时候都文本
    if Language_check() == "ch" then
        -- The character select screen lines  --人物选人界面的描述
        STRINGS.CHARACTER_TITLES["moonlightcoda"] = "月光终曲"
        STRINGS.CHARACTER_NAMES["moonlightcoda"] = "MOONLIGHTCODA"
        STRINGS.CHARACTER_DESCRIPTIONS["moonlightcoda"] = "月光永恒 终曲回响"
        STRINGS.CHARACTER_QUOTES["moonlightcoda"] = "我们只需要扮演好自己的角色。"

        -- Custom speech strings  ----人物语言文件  可以进去自定义
        STRINGS.CHARACTERS[string.upper("moonlightcoda")] = require("speech_moonlightcoda_ch")

        -- The character's name as appears in-game  --人物在游戏里面的名字
        STRINGS.NAMES[string.upper("moonlightcoda")] = "月光终曲"
        STRINGS.SKIN_NAMES["moonlightcoda_none"] = "月光终曲"  --检查界面显示的名字

        --生存几率
        STRINGS.CHARACTER_SURVIVABILITY["moonlightcoda"] = "简单"
    else
        -- The character select screen lines  --人物选人界面的描述
        STRINGS.CHARACTER_TITLES["moonlightcoda"] = "Coda"
        STRINGS.CHARACTER_NAMES["moonlightcoda"] = "MOONLIGHTCODA"
        STRINGS.CHARACTER_DESCRIPTIONS["moonlightcoda"] = "The moonlight is eternal. The final song echoes"
        STRINGS.CHARACTER_QUOTES["moonlightcoda"] = "We just need to play our part."

        -- Custom speech strings  ----人物语言文件  可以进去自定义
        -- STRINGS.CHARACTERS[string.upper("moonlightcoda")] = require "speech_moonlightcoda"

        -- The character's name as appears in-game  --人物在游戏里面的名字
        STRINGS.NAMES[string.upper("moonlightcoda")] = "Coda"
        STRINGS.SKIN_NAMES["moonlightcoda_none"] = "Coda"  --检查界面显示的名字

        --生存几率
        STRINGS.CHARACTER_SURVIVABILITY["moonlightcoda"] = "easy"

    end

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
------增加人物到mod人物列表的里面 性别为女性（ MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL）
    AddModCharacter("moonlightcoda", "FEMALE")

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----选人界面人物三维显示
    TUNING[string.upper("moonlightcoda").."_HEALTH"] = 185
    TUNING[string.upper("moonlightcoda").."_HUNGER"] = 120
    TUNING[string.upper("moonlightcoda").."_SANITY"] = 160
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----选人界面初始物品显示，物品相关的prefab
    TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT[string.upper("moonlightcoda")] = {"moonglass","purebrilliance"}

----------------------------------------------------------------------------------------------------------------------------------------------------------------------
