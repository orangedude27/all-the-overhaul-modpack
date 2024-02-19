local config = {
    name = "gold",
    itemNames = {
        ore = "gold-ore",
        ingot = "gold-ingot",
        dust = "atom-gold-dust",
        molten = "molten-gold",
        plate = "fi_materials_gold",
        enriched = "gold-powder",
        pure = "fi_materials_pure_gold",
        pellets = "atom-gold-pellets"
    },
    icons = {
        ingot = { icon = "__ThemTharHills__/graphics/icons/gold-ingot.png", icon_size = 64 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-gold-dust.png", icon_size = 32 },
        molten = { icon = "__ThemTharHills__/graphics/icons/molten-gold.png", icon_size = 64 },
        plate = { icon = "__ThemTharHills__/graphics/icons/gold-plate.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64 },
        pure = { icon = "__248k__/ressources/fission/fi_materials/fi_materials_pure_gold.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-gold-pellets.png", icon_size = 128 }
    }
}

data:extend(createRefiningData(config))

data:extend({
    oreToDustRecipe(config),
    item(config, "dust")
})