local config = atom.processing.util.prepareConfig({
    name = "gold",
    order = "l",
    itemNames = {
        ore = "gold-ore",
        plate = "fi_materials_gold",
        dust = "atom-gold-dust",
        ingot = "gold-ingot",
        molten = "molten-gold",
        enriched = "gold-powder",
        pure = "fi_materials_pure_gold",
        pellets = "atom-gold-pellets"
    },
    icons = {
        ore = { icon = "__ThemTharHills__/graphics/icons/gold-ore.png", icon_size = 64, icon_mipmaps = 4 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {
        dustToPure = {
            type = "fluid", name = "chlorine", amount = 4
        }
    },
    unlockedBy = {
        oreToPlate = "gold-processing",
        oreToDust = "gold-processing",
        dustToPlate = "gold-processing"
    },
    effectiveness = 2,
    hardness = 3
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.gold = config