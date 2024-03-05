local config = {
    name = "palladium",
    order = "v",
    itemNames = {
        ore = "raw-rare-metals",
        dust = "palladium-powder",
        ingot = "palladium-ingot",
        enriched = "atom-palladium-enriched"
    },
    icons = {
        dust = { icon = "__bzgold__/graphics/icons/palladium-powder.png", icon_size = 64 },
        "ingot", "enriched"
    },
    additionalIngredient = {},
    additionalResults = {
        dustToIngot = {
            { name = "sulfur", amount = 1, probability = 0.15 }
        },
        dustToEnriched = {
            { name = "sulfur", amount = 1, probability = 0.075 }
        }
    },
    unlockedBy = {
        oreToDust = "palladium-processing",
        dustToIngot = "palladium-processing"
    }
}

createIcons(config)

-- Raw rare metals to palladium powder
local _oreToDustRecipe = {
    type = "recipe",
    name = "atom-" .. config.name .. "-dust",
    icons = {
        config.icons.dust,
        createSmallIcon(atom.refining.config.metals.icons.ore),
    },
    category = "core-fragment-processing",
    energy_required = 9.6,
    ingredients = {
        { config.itemNames.ore, 6 },
        { type = "fluid", name = "aqua-regia", amount = 3 }
    },
    results = {
        { name = config.itemNames.dust, amount = 6 },
        data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 3 } or nil
    },
    main_product = config.itemNames.dust,
    enabled = false
}
unlockedBy(_oreToDustRecipe.name, config.unlockedBy.oreToDust)

local _dustToIngotRecipe = dustToIngotRecipe(config)
_dustToIngotRecipe.results[2].amount = 6

local _dustToEnrichedRecipe = dustToEnrichedRecipe(config)
_dustToEnrichedRecipe.ingredients[1].amount = 10

local _enrichedToIngotRecipe = enrichedToIngotRecipe(config)
_enrichedToIngotRecipe.results[1].amount = 6

data:extend({
    _oreToDustRecipe,
    _dustToIngotRecipe,
    _dustToEnrichedRecipe,
    _enrichedToIngotRecipe,
    item(config, "enriched")
})

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)