


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
            -- atlas = GetInventoryItemAtlas("chemist_yue_ling_item_blissful_memory.tex"),
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
