local config = atom.processing.util.prepareConfig({
    name = "cobalt",
    order = "s",
    itemNames = {
        ore = "cobaltite-ore",
        plate = "cobalt-plate",
        dust = "atom-cobalt-dust",
        ingot = "cobalt-ingot",
        molten = "molten-cobalt",
        enriched = "enriched-cobalt",
        pure = "fi-materials-pure-cobalt",
        pellets = "atom-cobalt-pellets"
    },
    icons = {
        ore = { icon = "__MetalsForYou2-snogard__/graphics/icons/cobaltite-ore.png", icon_size = 64 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToPlate = "cobalt-refining",
        oreToDust = "cobalt-refining",
        dustToPlate = "cobalt-refining"
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.cobalt = config