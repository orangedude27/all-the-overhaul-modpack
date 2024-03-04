local config = {
    name = "copper",
    order = "d",
    enableAtStart = false,
    itemNames = {
        ore = "copper-ore",
        plate = "copper-plate",
        dust = "5d-copper-dust",
        ingot = "se-copper-ingot",
        molten = "se-molten-copper",
        enriched = "enriched-copper",
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
            { name = "silver-ore", amount = 1, probability = 0.1 },
            { name = "cobaltite-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-plate", amount = 1, probability = 0.05 }
        },
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.25 },
            { name = "cobaltite-ore", amount = 1, probability = 0.1 },
            { name = "bismuth-plate", amount = 1, probability = 0.3125 }
        },
        dustToIngot = {
            { name = "silver-ore", amount = 1, probability = 0.33 },
            { name = "bismuth-ore", amount = 1, probability = 0.25 }
        },
        dustToEnriched = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1, probability = 0.5 }
        }
    },
    unlockedBy = {
        oreToPlate = "copper-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config