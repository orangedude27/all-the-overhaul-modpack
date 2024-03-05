local config = {
    name = "platinum",
    order = "u",
    itemNames = {
        ore = "raw-rare-metals",
        dust = "platinum-powder",
        ingot = "platinum-ingot",
        enriched = "atom-platinum-enriched"
    },
    icons = {
        dust = { icon = "__bzgold__/graphics/icons/platinum-powder.png", icon_size = 64 },
        "ingot", "enriched"
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
        oreToDust = "platinum-processing",
        dustToIngot = "platinum-processing"
    }
}

createIcons(config)

-- Raw rare metals to platinum powder
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