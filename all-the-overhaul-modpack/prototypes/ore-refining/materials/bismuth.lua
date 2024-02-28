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
        plate = { icon = "__bismuth__/graphics/icons/bismuth-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-bismuth-dust.png", icon_size = 32 },
        ingot = { icon = "__bismuth__/graphics/icons/bismuth-ingot.png", icon_size = 128 },
        molten = { icon = "__bismuth__/graphics/icons/molten-bismuth.png", icon_size = 128 },
        enriched = { icon_size = 64, icon = "__bismuth__/graphics/icons/enriched-bismuth.png", icon_mipmaps = 3 },
        pure = { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64, icon_mipmaps = 3 }, -- TODO
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-bismuth-pellets.png", icon_size = 128 }
    },
    unlockedBy = {
        oreToPlate = "bismanol"
    }
}

data:extend(createRefiningData(config))

setStackSizes(config)
setSubGroup(config)

return config