local config = atom.processing.util.prepareConfig({
    name = "silver",
    order = "j",
    itemNames = {
        ore = "silver-ore",
        plate = "silver-plate",
        dust = "atom-silver-dust",
        ingot = "silver-ingot",
        molten = "molten-silver",
        enriched = "enriched-silver",
        pure = "atom-silver-pure",
        pellets = "atom-silver-pellets"
    },
    icons = {
        ore = { icon = "__bzgold__/graphics/icons/silver-ore.png", icon_size = 128 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToPlate = "silver-processing",
    },
    energy = {
        oreToPlate = 4.8,
        dustToPlate = 4.8,
        moltenToIngot = 25,
        ingotToPlate = 5
    },
    effectiveness = 3,
    hardness = 3
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.silver = config