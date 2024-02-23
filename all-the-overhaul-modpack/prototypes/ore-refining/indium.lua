local config = {
    name = "indium",
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
        ore = { icon = "__Indium__/graphics/icons/indite-ore.png", icon_size = 64 },
        plate = { icon = "__Indium__/graphics/icons/indium-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-dust.png", icon_size = 32 },
        ingot = { icon = "__Indium__/graphics/icons/indium-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        molten = { icon = "__Indium__/graphics/icons/molten-indium.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__Indium__/graphics/icons/enriched-indium.png", icon_size = 64 },
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pure.png", icon_size = 64, icon_mipmaps = 3 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pellets.png", icon_size = 128 }
    }
}

data:extend(createRefiningData(config))

setSubGroup(config)

return config