local config = {
    name = "indium",
    order = "q",
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
        "plate",
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-dust.png", icon_size = 32 },
        ingot = { icon = "__Indium__/graphics/icons/indium-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        "molten",
        "enriched",
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pure.png", icon_size = 64, icon_mipmaps = 3 },
        "pellets"
    },
    unlockedBy = {
        oreToDust = "indium-processing",
        dustToPlate = "indium-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config