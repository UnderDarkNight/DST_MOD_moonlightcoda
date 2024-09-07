


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
        { Ingredient(CHARACTER_INGREDIENT.HEALTH, 60)  }, 
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
        { Ingredient("moonglass", 2)  }, 
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
---- 唤月者魔杖
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_opalstaff_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_opalstaff_maker",            --  --  inst.prefab  实体名字
        { Ingredient("opalpreciousgem", 1),Ingredient("spear", 1), }, 
        TECH.NONE, 
        {
            -- no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/moonlightcoda_item_moon_island_detector.xml",
            atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "opalstaff.tex",
        },
        {"CHARACTER","WEAPONS","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_opalstaff_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 传送魔杖
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_teleport_staff","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_teleport_staff",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 3),Ingredient("moonrocknugget", 1),Ingredient("spear", 1), }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_teleport_staff.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_teleport_staff.tex",
        },
        {"CHARACTER","WEAPONS","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_teleport_staff","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月光的礼仪
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_liturgy","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_liturgy",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 3),Ingredient("spear", 1), }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_liturgy.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_liturgy.tex",
        },
        {"CHARACTER","WEAPONS","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_liturgy","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月光的刺痛
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_laser_staff","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_laser_staff",            --  --  inst.prefab  实体名字
        { Ingredient("moonglass", 3), Ingredient("purebrilliance", 1),Ingredient(CHARACTER_INGREDIENT.HEALTH, 35), }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_laser_staff.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_laser_staff.tex",
        },
        {"CHARACTER","WEAPONS","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_laser_staff","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月能铲
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_hole_shovel","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_hole_shovel",            --  --  inst.prefab  实体名字
        { Ingredient("shovel", 1),Ingredient("moonglass", 3),Ingredient("moonrocknugget", 3), }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_hole_shovel.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_hole_shovel.tex",
        },
        {"CHARACTER","WEAPONS","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_hole_shovel","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月光的议论
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_debate","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_debate",            --  --  inst.prefab  实体名字
        { Ingredient("moonglass", 1),Ingredient("purebrilliance", 3),Ingredient(CHARACTER_INGREDIENT.HEALTH, 35) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_debate.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_debate.tex",
        },
        {"CHARACTER","WEAPONS","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_debate","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月之加护
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_guard_from_moon","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_guard_from_moon",            --  --  inst.prefab  实体名字
        { Ingredient("moonglass", 6),Ingredient(CHARACTER_INGREDIENT.HEALTH, 15), }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_guard_from_moon.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_guard_from_moon.tex",
        },
        {"CHARACTER","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_guard_from_moon","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 月之指引
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_guidance_from_moon","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_guidance_from_moon",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 6),Ingredient(CHARACTER_INGREDIENT.HEALTH, 35), }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_guidance_from_moon.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_guidance_from_moon.tex",
        },
        {"CHARACTER","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_guidance_from_moon","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 献身月光
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_equipment_moonlightdedication","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_equipment_moonlightdedication",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 3),Ingredient("moonglass", 3),Ingredient("opalpreciousgem", 1) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_equipment_moonlightdedication.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_equipment_moonlightdedication.tex",
        },
        {"CHARACTER","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_equipment_moonlightdedication","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 前路
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_building_light_the_way","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_building_light_the_way",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 1),Ingredient("moonrocknugget", 2),Ingredient(CHARACTER_INGREDIENT.HEALTH, 10) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            placer = "moonlightcoda_building_light_the_way_placer",
            atlas = "images/map_icons/moonlightcoda_building_light_the_way.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_building_light_the_way.tex",
        },
        {"CHARACTER","LIGHT","STRUCTURES","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_building_light_the_way","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 标点
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_building_coord","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_building_coord",            --  --  inst.prefab  实体名字
        { Ingredient("moonglass", 3),Ingredient("moonrocknugget", 1),Ingredient(CHARACTER_INGREDIENT.HEALTH, 35) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            placer = "moonlightcoda_building_coord_placer",
            atlas = "images/map_icons/moonlightcoda_building_coord.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_building_coord.tex",
            build_distance = 2,
        },
        {"CHARACTER","STRUCTURES","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_building_coord","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 唱片
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_item_record","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_item_record",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 6) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            atlas = "images/inventoryimages/moonlightcoda_item_record.xml",
            -- atlas = GetInventoryItemAtlas("opalstaff.tex"),
            image = "moonlightcoda_item_record.tex",
        },
        {"CHARACTER","MAGIC"}
    )
    RemoveRecipeFromFilter("moonlightcoda_item_record","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 辉煌铁匠铺
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_lunar_forge_kit_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_lunar_forge_kit_maker",            --  --  inst.prefab  实体名字
        { Ingredient("moonrocknugget", 3),Ingredient("moonglass", 3),Ingredient("purebrilliance", 1) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda",
            -- atlas = "images/inventoryimages/lunar_forge_kit.xml",
            atlas = GetInventoryItemAtlas("lunar_forge_kit.tex"),
            image = "lunar_forge_kit.tex",
        },
        {"CHARACTER"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_lunar_forge_kit_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。
--------------------------------------------------------------------------------------------------------------------------------------------
---- 启迪之冠
--------------------------------------------------------------------------------------------------------------------------------------------
    AddRecipeToFilter("moonlightcoda_spell_alterguardianhat_maker","CHARACTER")     ---- 添加物品到目标标签
    AddRecipe2(
        "moonlightcoda_spell_alterguardianhat_maker",            --  --  inst.prefab  实体名字
        { Ingredient("purebrilliance", 10),Ingredient("moonglass", 35),Ingredient(CHARACTER_INGREDIENT.HEALTH, 100) }, 
        TECH.NONE, 
        {
            no_deconstruction=true,
            -- numtogive = 3,
            -- sg_state="moonlightcoda_sg_form_log",
            builder_tag = "moonlightcoda_alterguardianhat_maker",
            -- atlas = "images/inventoryimages/lunar_forge_kit.xml",
            atlas = GetInventoryItemAtlas("alterguardianhat.tex"),
            image = "alterguardianhat.tex",
        },
        {"CHARACTER"}
    )
    RemoveRecipeFromFilter("moonlightcoda_spell_alterguardianhat_maker","MODS")                       -- -- 在【模组物品】标签里移除这个。

--------------------------------------------------------------------------------------------------------------------------------------------
