local config = {
    name = "bismuth",
    order = "i",
    itemNames = {
        ore = "bismuth-ore",
        plate = "bismuth-plate",
        dust = "atom-bismuth-dust",
        ingot = "bismuth-ingot",
        molten = "molten-bismuth",
        enriched = "enriched-bismuth",
        pure = "atom-bismuth-pure",
        pellets = "atom-bismuth-pellets"
    },
    icons = {
        ore = { icon = "__bismuth__/graphics/icons/bismuth-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "plate",
        "dust",
        "ingot",
        "molten",
        enriched = { icon_size = 64, icon = "__bismuth__/graphics/icons/enriched-bismuth.png", icon_mipmaps = 3 },
        pure = { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64, icon_mipmaps = 3 }, -- TODO
        "pellets"
    },
    unlockedBy = {
        oreToPlate = "bismanol"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config