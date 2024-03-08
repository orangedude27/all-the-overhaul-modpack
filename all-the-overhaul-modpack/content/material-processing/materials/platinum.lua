local config = atom.processing.util.prepareConfig({
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
})

local create = atom.processing.create(config)

-- Raw rare metals to platinum powder
local oreToDustRecipe = {
    type = "recipe",
    name = "atom-" .. config.name .. "-dust",
    icons = {
        config.icons.dust,
        atom.util.icon.createSmallIcon(atom.processing.materials.rareMetals.icons.ore),
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

local dustToIngotRecipe = create.dustToIngotRecipe()
dustToIngotRecipe.results[2].amount = 6

local dustToEnrichedRecipe = create.dustToEnrichedRecipe()
dustToEnrichedRecipe.ingredients[1].amount = 10

local enrichedToIngotRecipe = create.enrichedToIngotRecipe()
enrichedToIngotRecipe.results[1].amount = 6

data:extend({
    oreToDustRecipe,
    dustToIngotRecipe,
    dustToEnrichedRecipe,
    enrichedToIngotRecipe,
    create.item("enriched")
})

atom.util.recipe.unlockedByTechnology(oreToDustRecipe.name, config.unlockedBy.oreToDust)

atom.processing.util.finalizeConfig(config)

atom.processing.materials.platinum = config