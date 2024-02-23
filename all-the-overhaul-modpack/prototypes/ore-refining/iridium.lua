local config = {
    name = "iridium",
    itemNames = {
        ore = "iridium-ore",
        plate = "se-iridium-plate",
        dust = "iridium-powder",
        ingot = "se-iridium-ingot",
        molten = "molten-tin",
        enriched = "enriched-iridium",
        pure = "se-iridium-blastcake",
        pellets = "atom-iridium-pellets"
    },
    icons = {
        plate = { icon = "__space-exploration-graphics__/graphics/icons/iridium-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__space-exploration-graphics__/graphics/icons/iridium-powder.png", icon_size = 64 },
        ingot = { icon = "__space-exploration-graphics__/graphics/icons/iridium-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__space-exploration-graphics__/graphics/icons/iridium-blastcake.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__space-exploration-graphics__/graphics/icons/iridium-ore-crushed.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    }
}

data:extend(createRefiningData(config))

setSubGroup(config)

return config