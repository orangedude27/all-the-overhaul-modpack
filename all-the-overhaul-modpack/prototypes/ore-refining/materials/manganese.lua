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
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
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

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config