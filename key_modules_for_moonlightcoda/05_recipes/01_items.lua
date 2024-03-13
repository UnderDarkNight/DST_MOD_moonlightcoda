


--------------------------------------------------------------------------------------------------------------------------------------------
---- 月岛探测仪
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_item_moon_island_detector","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_item_moon_island_detector",            --  --  inst.prefab  实体名字
        { Ingredient("moonrocknugget", 3) }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            -- atlas = GetInventoryItemAtlas("moonlightcoda_item_blissful_memory.tex"),
            image = "moonlightcoda_item_moon_island_detector.tex",
        },
        {"CHARACTER","TOOLS"}
    )
    RemoveRecipeFromFilter("moonlightcoda_item_moon_island_detector","MODS")                       -- -- 在【模组物品】标签里移除这个。


--------------------------------------------------------------------------------------------------------------------------------------------
---- 码头套装
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_dock_kit_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_dock_kit_maker",            --  --  inst.prefab  实体名字
        { Ingredient("boards", 4) ,Ingredient("cutstone", 2) , Ingredient("rope", 1), Ingredient("stinger", 1) }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("dock_kit.tex"),
            image = "dock_kit.tex",
        },
        {"CHARACTER","SEAFARING"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_dock_kit_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。

--------------------------------------------------------------------------------------------------------------------------------------------
---- 月之魔典
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_book_moon_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_book_moon_maker",            --  --  inst.prefab  实体名字
        { Ingredient("papyrus", 3) ,Ingredient("opalpreciousgem", 1) }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("book_moon.tex"),
            image = "book_moon.tex",
        },
        {"CHARACTER","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_book_moon_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月岩
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_moonrocknugget_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_moonrocknugget_maker",            --  --  inst.prefab  实体名字
        { Ingredient(CHARACTER_INGREDIENT.HEALTH, 5)  }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("moonrocknugget.tex"),
            image = "moonrocknugget.tex",
        },
        {"CHARACTER","REFINE","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_moonrocknugget_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 玻璃
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_moonglass_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_moonglass_maker",            --  --  inst.prefab  实体名字
        { Ingredient(CHARACTER_INGREDIENT.HEALTH, 30)  }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("moonglass.tex"),
            image = "moonglass.tex",
        },
        {"CHARACTER","REFINE","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_moonglass_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 纯粹辉煌
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_purebrilliance_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_purebrilliance_maker",            --  --  inst.prefab  实体名字
        { Ingredient(CHARACTER_INGREDIENT.HEALTH, 30)  }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("purebrilliance.tex"),
            image = "purebrilliance.tex",
        },
        {"CHARACTER","REFINE","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_purebrilliance_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 玻璃 转 纯粹辉煌
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_moonglass_trans_2_purebrilliance_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_moonglass_trans_2_purebrilliance_maker",            --  --  inst.prefab  实体名字
        { Ingredient("moonglass", 1)  }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("purebrilliance.tex"),
            image = "purebrilliance.tex",
        },
        {"CHARACTER","REFINE","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_moonglass_trans_2_purebrilliance_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 彩虹宝石生成
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_opalpreciousgem_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_opalpreciousgem_maker",            --  --  inst.prefab  实体名字
        { Ingredient("redgem", 1),Ingredient("orangegem", 1),Ingredient("yellowgem", 1),Ingredient("greengem", 1),Ingredient("bluegem", 1),Ingredient("purplegem", 1),  }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("opalpreciousgem.tex"),
            image = "opalpreciousgem.tex",
        },
        {"CHARACTER","REFINE","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_opalpreciousgem_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 消耗三维 生成 彩虹宝石生成
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_opalpreciousgem_maker_by_value","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_opalpreciousgem_maker_by_value",            --  --  inst.prefab  实体名字
        { Ingredient(CHARACTER_INGREDIENT.HEALTH, 180), Ingredient(CHARACTER_INGREDIENT.SANITY, 155)  }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("opalpreciousgem.tex"),
            image = "opalpreciousgem.tex",
        },
        {"CHARACTER","REFINE","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_opalpreciousgem_maker_by_value","MODS")                       -- -- 在【模组物品】标签里移除这个。

--------------------------------------------------------------------------------------------------------------------------------------------
