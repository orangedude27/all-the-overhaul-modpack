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
        pelletsToIngot = { type = "item", name = "graphite", amount = 1 }
    },
    additionalResults = {
        oreToPlate = {
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.25 }
        },
        dustToPlate = {
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToIngot = {
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToEnriched = {
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        pureToEnriched = {
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.125 }
        }
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.tin = config