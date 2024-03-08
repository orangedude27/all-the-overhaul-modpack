local config = atom.processing.util.prepareConfig({
    name = "zinc",
    order = "e",
    enableAtStart = true,
    itemNames = {
        ore = "zinc-ore",
        plate = "zinc-plate",
        dust = "atom-zinc-dust",
        ingot = "zinc-ingot",
        molten = "molten-zinc",
        enriched = "enriched-zinc",
        pure = "atom-zinc-pure",
        pellets = "atom-zinc-pellets"
    },
    icons = {
        ore = { icon = "__BrassTacks__/graphics/icons/zinc-ore.png", icon_size = 64, icon_mipmaps = 4 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalResults = {
        oreToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.05 },
            { name = "bismuth-plate", amount = 1, probability = 0.05 }
        },
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.125 },
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToIngot = {
            { name = "silver-ore", amount = 1, probability = 0.33 },
            { name = "bismuth-ore", amount = 1, probability = 0.25 }
        }
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.zinc = config