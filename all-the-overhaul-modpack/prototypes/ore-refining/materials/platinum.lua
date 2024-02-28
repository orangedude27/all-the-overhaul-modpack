local config = {
    name = "platinum",
    order = "u",
    itemNames = {
        dust = "platinum-powder",
        ingot = "platinum-ingot",
        enriched = "atom-platinum-enriched"
    },
    icons = {
        dust = { icon = "__bzgold__/graphics/icons/platinum-powder.png", icon_size = 64 },
        ingot = { icon = "__bzgold__/graphics/icons/platinum-ingot.png", icon_size = 128 },
        enriched = { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64, icon_mipmaps = 3 } -- TODO
    },
    additionalIngredient = {},
    additionalResults = {
        dustToIngot = {
            { name = "sulfur", amount = 1, probability = 0.4 }
        },
        dustToEnriched = {
            { name = "sulfur", amount = 1, probability = 0.16 }
        }
    },
    unlockedBy = {
        dustToIngot = "platinum-processing"
    }
}

local _dustToIngotRecipe = dustToIngotRecipe(config)
_dustToIngotRecipe.results[2].amount = 6

local _dustToEnrichedRecipe = dustToEnrichedRecipe(config)
_dustToEnrichedRecipe.ingredients[1].amount = 10

local _enrichedToIngotRecipe = enrichedToIngotRecipe(config)
_enrichedToIngotRecipe.results[1].amount = 6

data:extend({
    _dustToIngotRecipe,
    _dustToEnrichedRecipe,
    _enrichedToIngotRecipe,
    item(config, "enriched")
})

setStackSizes(config)
setSubGroup(config)