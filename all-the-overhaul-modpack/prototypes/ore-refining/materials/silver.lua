local config = {
    name = "silver",
    order = "j",
    itemNames = {
        ore = "silver-ore",
        plate = "silver-plate",
        dust = "atom-silver-dust",
        ingot = "silver-ingot",
        molten = "molten-silver",
        enriched = "enriched-silver",
        pure = "atom-silver-pure",
        pellets = "atom-silver-pellets"
    },
    icons = {
        ore = { icon = "__bzgold__/graphics/icons/silver-ore.png", icon_size = 128 },
        "plate",
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-dust.png", icon_size = 32 }, -- TODO
        "ingot",
        "molten",
        "enriched",
        pure = { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64 }, -- TODO
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-pellets.png", icon_size = 128, icon_mipmaps = 3 } -- TODO
    },
    unlockedBy = {
        oreToPlate = "silver-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config