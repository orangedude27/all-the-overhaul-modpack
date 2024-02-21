local config = {
    name = "cobalt",
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
        ore = { icon = "__Cobalt__/graphics/icons/cobaltite-ore.png", icon_size = 64 },
        plate = { icon = "__Cobalt__/graphics/icons/cobalt-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-dust.png", icon_size = 32 },
        ingot = { icon = "__Cobalt__/graphics/icons/cobalt-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    }
}

data:extend(createRefiningData(config))