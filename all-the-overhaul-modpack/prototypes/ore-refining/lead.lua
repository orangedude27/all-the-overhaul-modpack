local config = {
    name = "lead",
    itemNames = {
        ore = "lead-ore",
        plate = "lead-plate",
        dust = "lead-dust",
        ingot = "lead-ingot",
        molten = "molten-lead",
        enriched = "enriched-lead",
        pure = "fu_materials_pure_lead",
        pellets = "atom-lead-pellets"
    },
    icons = {
        plate = { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__bzlead__/graphics/icons/lead-powder.png", icon_size = 64 },
        ingot = { icon = "__bzlead__/graphics/icons/lead-ingot.png", icon_size = 128, icon_mipmaps = 3 },
        molten = { icon = "__bzlead__/graphics/icons/molten-lead.png", icon_size = 128 },
        enriched = { icon = "__bzlead__/graphics/icons/enriched-lead.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__248k__/ressources/fusion/fu_materials/fu_materials_pure_lead.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-lead-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    },
    additionalResults = {
        dustToPlate = {
            { name = "silver-ore", amount_min = 1, amount_max = 2 },
            { name = "bismuth-plate", amount = 1, probability = 0.16 }
        },
        dustToPure = {
            { name = "silver-ore", amount = 1 }
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1 }
        }
    },
    additionalIngredient = {
        dustToPure = { type = "fluid", name = "oxygen", amount = 5 }
    }
}

data:extend(createRefiningData(config))

data:extend({
    item(config, "dust")
})

-- TODO: lead-dust is missing in final-fixes recipe
log(serpent.block(data.raw.recipe["atom-lead-plate-dust"]))
--[[
8.177 Script @__boblibrary__/error-functions.lua:108: Ingredient.name not a valid item of any type.
   8.177 Script @__boblibrary__/recipe-functions.lua:606: Invalid item found on recipe atom-lead-plate-dust.
   8.177 Script @__boblibrary__/item-functions.lua:124: stack traceback:
	__boblibrary__/item-functions.lua:124: in function 'ingredient'
	__boblibrary__/recipe-functions.lua:595: in function 'duplicate_ingredient_check'
	__boblibrary__/recipe-functions.lua:617: in function 'duplicate_ingredient_check_full'
	__boblibrary__/recipe-functions.lua:643: in function 'ingredients_cleanup'
	__boblibrary__/data-final-fixes.lua:5: in main chunk
]]--