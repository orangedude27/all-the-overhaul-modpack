local config = {
    name = "gold",
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
        plate = { icon = "__ThemTharHills__/graphics/icons/gold-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-gold-dust.png", icon_size = 32 },
        ingot = { icon = "__ThemTharHills__/graphics/icons/gold-ingot.png", icon_size = 64 },
        molten = { icon = "__ThemTharHills__/graphics/icons/molten-gold.png", icon_size = 64 },
        enriched = { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64 },
        pure = { icon = "__248k__/ressources/fission/fi_materials/fi_materials_pure_gold.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-gold-pellets.png", icon_size = 128 }
    }
}

data:extend(createRefiningData(config))