local config = atom.processing.util.prepareConfig({
    name = "tin",
    order = "g",
    enableAtStart = true,
    itemNames = {
        ore = "tin-ore",
        plate = "tin-plate",
        dust = "atom-tin-dust",
        ingot = "tin-ingot",
        molten = "molten-tin",
        enriched = "enriched-tin",
        pure = "atom-tin-pure",
        pellets = "atom-tin-pellets"
    },
    icons = {
        ore = { icon = "__bztin__/graphics/icons/tin-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {
        pelletsToIngot = { name = "atom-carbon", amount = 1 }
    },
    additionalResults = {
        oreToPlate = {
            { name = "bismuth-plate", amount = 1, probability = 0.25 }
        },
        dustToPlate = {
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToIngot = {
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToEnriched = {
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        pureToEnriched = {
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        }
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.tin = config