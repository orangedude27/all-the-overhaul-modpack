local config = atom.processing.util.prepareConfig({
    name = "copper",
    order = "d",
    enableAtStart = false,
    itemNames = {
        ore = "copper-ore",
        plate = "copper-plate",
        dust = "5d-copper-dust",
        ingot = "se-copper-ingot",
        molten = "se-molten-copper",
        enriched = "kr-enriched-copper",
        pure = "el_materials_pure_copper",
        pellets = "atom-copper-pellets"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, icon_mipmaps = 4 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {
        enrichedToIngot = { type = "fluid", name = "carbon-dioxide", amount = 6 },
        enrichedToPellets = { type = "fluid", name = "carbon-dioxide", amount = 6 }
    },
    additionalResults = {
        oreToPlate = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.1 },
            { type = "item", name = "cobaltite-ore", amount = 1, probability = 0.5 },
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.05 }
        },
        dustToPlate = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.25 },
            { type = "item", name = "cobaltite-ore", amount = 1, probability = 0.1 },
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.3125 }
        },
        dustToIngot = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.33 },
            { type = "item", name = "bismuth-ore", amount = 1, probability = 0.25 }
        },
        dustToEnriched = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.5 },
        },
        pureToEnriched = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.5 }
        }
    },
    unlockedBy = {
        oreToPlate = "copper-processing"
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.copper = config