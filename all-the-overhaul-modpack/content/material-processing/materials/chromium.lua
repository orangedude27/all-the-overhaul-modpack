local config = atom.processing.util.prepareConfig({
    name = "chromium",
    order = "t",
    itemNames = {
        ore = "chromite-ore",
        plate = "chromium-plate",
        dust = "atom-chromium-dust",
        ingot = "chromium-ingot",
        molten = "molten-chromium",
        enriched = "enriched-chromium",
        pure = "fi-materials-pure-chrome",
        pellets = "atom-chromium-pellets"
    },
    icons = {
        ore = { icon = "__Chromium__/graphics/icons/chromite-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToPlate = "stainless-steel-processing",
        oreToDust = "stainless-steel-processing",
        dustToPlate = "stainless-steel-processing"
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.chromium = config