local Recipe = atom.util.Recipe

local config = atom.processing.util.prepareConfig({
    name = "palladium",
    order = "v",
    itemNames = {
        ore = "kr-rare-metal-ore",
        dust = "palladium-powder",
        ingot = "palladium-ingot",
        enriched = "atom-palladium-enriched"
    },
    icons = {
        dust = { icon = "__bzgold2__/graphics/icons/palladium-powder.png", icon_size = 64 },
        "ingot", "enriched"
    },
    additionalResults = {
        dustToIngot = {
            { type = "item", name = "sulfur", amount = 1, probability = 0.15 }
        },
        dustToEnriched = {
            { type = "item", name = "sulfur", amount = 1, probability = 0.075 }
        }
    },
    unlockedBy = {
        oreToDust = "palladium-processing",
        dustToIngot = "palladium-processing"
    }
})

local create = atom.processing.create(config)

-- Raw rare metals to palladium powder
local oreToDustRecipe = Recipe({
    type = "recipe",
    name = "atom-" .. config.name .. "-dust",
    localised_name = { "item-name." .. config.itemNames.dust },
    icons = {
        config.icons.dust,
        atom.util.icon.createSmallIcon(atom.processing.materials.rareMetals.icons.ore),
    },
    category = "core-fragment-processing",
    energy_required = 9.6,
    ingredients = {
        { type = "item", name = config.itemNames.ore, amount = 6 },
        { type = "fluid", name = "aqua-regia", amount = 3 }
    },
    results = {
        { type = "item", name = config.itemNames.dust, amount = 6 },
        data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 3 } or nil
    },
    main_product = config.itemNames.dust,
    enabled = false
})
oreToDustRecipe.unlockedByTechnology(config.unlockedBy.oreToDust)

local dustToIngotRecipe = create.dustToIngotRecipe()
dustToIngotRecipe.prototype.results[2].amount = 6

local dustToEnrichedRecipe = create.dustToEnrichedRecipe()
dustToEnrichedRecipe.prototype.ingredients[1].amount = 10

local enrichedToIngotRecipe = create.enrichedToIngotRecipe()
enrichedToIngotRecipe.prototype.results[1].amount = 6

atom.util.applyAll({
    oreToDustRecipe,
    dustToIngotRecipe,
    dustToEnrichedRecipe,
    enrichedToIngotRecipe,
    create.item("enriched")
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.palladium = config