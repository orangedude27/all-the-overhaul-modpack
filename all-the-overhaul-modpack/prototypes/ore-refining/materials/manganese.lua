local config = {
    name = "manganese",
    order = "n",
    itemNames = {
        ore = "manganese-ore",
        plate = "manganese-plate",
        dust = "atom-manganese-dust",
        ingot = "manganese-ingot",
        molten = "molten-manganese",
        enriched = "enriched-manganese",
        pure = "atom-manganese-pure",
        pellets = "atom-manganese-pellets"
    },
    icons = {
        ore = { icon = "__manganese__/graphics/icons/manganese-ore.png", icon_size = 64, icon_mipmaps = 4 },
        plate = { icon = "__manganese__/graphics/icons/manganese-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-dust.png", icon_size = 32 },
        ingot = { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128 },
        molten = { icon = "__manganese__/graphics/icons/molten-manganese.png", icon_size = 128 },
        enriched = { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64 },
        pure = { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64 }, -- TODO
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {
        dustToIngot = { name = "atom-carbon", amount = 1 },
        enrichedToIngot = { type = "fluid", name = "sulfuric-acid", amount = 4 },
        pelletsToIngot = { type = "fluid", name = "gas", amount = 10 }
    },
    unlockedBy = {
        oreToPlate = "manganese-smelting"
    }
}

data:extend(createRefiningData(config))

setStackSizes(config)
setSubGroup(config)

return config