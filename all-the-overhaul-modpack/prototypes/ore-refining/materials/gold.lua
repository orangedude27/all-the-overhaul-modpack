local config = {
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
        "plate",
        "dust",
        "ingot",
        "molten",
        enriched = { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64 },
        "pure",
        "pellets"
    },
    unlockedBy = {
        oreToPlate = "gold-processing",
        oreToDust = "gold-processing",
        dustToPlate = "gold-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config