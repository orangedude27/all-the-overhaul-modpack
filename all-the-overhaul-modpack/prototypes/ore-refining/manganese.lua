data:extend(
    createRefiningData({
        name = "manganese",
        itemNames = {
            ingot = "manganese-ingot",
            dust = "atom-manganese-dust",
            molten = "molten-manganese",
            plate = "manganese-plate",
            enriched = "enriched-manganese",
            pure = "crushed-manganese",
            pellets = "atom-manganese-pellets"
        },
        icons = {
            ingot = { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128 },
            dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-dust.png", icon_size = 32 },
            molten = { icon = "__manganese__/graphics/icons/molten-manganese.png", icon_size = 128 },
            plate = { icon = "__manganese__/graphics/icons/manganese-plate.png", icon_size = 64, icon_mipmaps = 3 },
            enriched = { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64 },
            pure = { icon = "__manganese__/graphics/icons/crushed-manganese.png", icon_size = 128 },
            pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-pellets.png", icon_size = 128 }
        },
        additionalIngredient = {
            dustToIngot = { name = "atom-carbon", amount = 6 },
            enrichedToIngot = { type = "fluid", name = "sulfuric-acid", amount = 10 },
            pelletsToIngot = { type = "fluid", name = "gas", amount = 30 }
        }
    })
)