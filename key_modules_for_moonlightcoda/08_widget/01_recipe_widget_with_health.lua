------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[

        \scripts\recipe.lua:

        if v.type == CHARACTER_INGREDIENT.HEALTH and owner:HasTag("health_as_oldage") then
			v = Ingredient(CHARACTER_INGREDIENT.OLDAGE, math.ceil(v.amount * TUNING.OLDAGE_HEALTH_SCALE))
		end
        local ing = self.contents:AddChild(IngredientUI(v:GetAtlas(), v:GetImage(), v.amount, amount, has, STRINGS.NAMES[string.upper(v.type)], owner, v.type))

]]--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




-- AddClassPostConstruct("screens/playerhud",function(self)
-- end)

-- Ingredient
--------------------------------------------------------------------
----
    local old_GetAtlas = Ingredient.GetAtlas
    Ingredient.GetAtlas = function(self,...)
        if ThePlayer and ThePlayer:HasTag("moonlightcoda") then
            if self.type == CHARACTER_INGREDIENT.HEALTH then
                return "images/inventoryimages/moonlightcoda_equipment_debate.xml"
            end
            if self.type == CHARACTER_INGREDIENT.SANITY then
                return "images/inventoryimages/moonlightcoda_equipment_debate.xml"
            end
        end
        return old_GetAtlas(self,...)
    end
--------------------------------------------------------------------
----
    local old_GetImage = Ingredient.GetImage
    Ingredient.GetImage = function(self,...)
        if ThePlayer and ThePlayer:HasTag("moonlightcoda") then
            if self.type == CHARACTER_INGREDIENT.HEALTH then
                return "moonlightcoda_equipment_debate.tex"
            end
            if self.type == CHARACTER_INGREDIENT.SANITY then
                return "moonlightcoda_equipment_debate.tex"
            end
        end
        return old_GetImage(self,...)
    end
--------------------------------------------------------------------