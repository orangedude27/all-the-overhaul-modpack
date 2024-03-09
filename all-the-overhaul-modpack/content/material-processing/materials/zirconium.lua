local config = atom.processing.util.prepareConfig({
    name = "zirconium",
    order = "z",
    itemNames = {
        ore = "zircon",
        plate = "zirconium-plate",
        dust = "atom-zirconium-dust",
        ingot = "zirconium-ingot",
        molten = "molten-zirconium",
        enriched = "enriched-zircon",
        pure = "zirconia",
        pellets = "atom-zirconium-pellets"
    },
    icons = {
        ore = { icon = "__bzzirconium__/graphics/icons/zircon.png", icon_size = 64 },
        molten = { icon = "__bzzirconium__/graphics/icons/molten-zirconium.png", icon_size = 128 },
        pure = { icon = "__bzzirconium__/graphics/icons/zirconia.png", icon_size = 128 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/materials/tantalite-dust.png", icon_size = 128},
        "plate", "ingot", "enriched", "pellets"
    },
    unlockedBy = {
        oreToPlate = "zirconia-processing"
    }
})

local create = atom.processing.create(config)

atom.util.applyAll({
    create.oreToDustRecipe(),
    create.dustToIngotRecipe(),
    create.ingotToPlateRecipe(),
    create.ingotToMoltenRecipe(),
    create.moltenToPlateRecipe(),
    create.dustToEnrichedRecipe(),
    create.enrichedToIngotRecipe(),
    create.dustToPureRecipe(),
    create.pureToEnrichedRecipe(),
    create.enrichedToPelletsRecipe(),
    create.pelletsToIngotRecipe(),
    create.item("pellets"),
    create.item("dust"),
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.zirconium = config