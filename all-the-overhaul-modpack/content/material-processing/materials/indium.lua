local config = atom.processing.util.prepareConfig({
    name = "indium",
    order = "q",
    itemNames = {
        ore = "indite-ore",
        plate = "indium-plate",
        dust = "atom-indium-dust",
        ingot = "indium-ingot",
        molten = "molten-indium",
        enriched = "enriched-indium",
        pure = "atom-indium-pure",
        pellets = "atom-indium-pellets"
    },
    icons = {
        ore = { icon = "__Indium2__/graphics/icons/indite-ore.png", icon_size = 64 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToDust = "indium-processing",
        dustToPlate = "indium-processing"
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.indium = config