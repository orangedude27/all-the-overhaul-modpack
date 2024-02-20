local config = {
    name = "manganese",
    itemNames = {
        ore = "manganese-ore",
        plate = "manganese-plate",
        dust = "atom-manganese-dust",
        ingot = "manganese-ingot",
        molten = "molten-manganese",
        enriched = "enriched-manganese",
        pure = "crushed-manganese",
        pellets = "atom-manganese-pellets"
    },
    icons = {
        plate = { icon = "__manganese__/graphics/icons/manganese-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-dust.png", icon_size = 32 },
        ingot = { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128 },
        molten = { icon = "__manganese__/graphics/icons/molten-manganese.png", icon_size = 128 },
        enriched = { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64 },
        pure = { icon = "__manganese__/graphics/icons/crushed-manganese.png", icon_size = 128 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {
        dustToIngot = { name = "atom-carbon", amount = 6 },
        enrichedToIngot = { type = "fluid", name = "sulfuric-acid", amount = 10 },
        pelletsToIngot = { type = "fluid", name = "gas", amount = 30 }
    }
}

data:extend(createRefiningData(config))

data:extend({
    oreToDustRecipe(config),
    item(config, "dust"),
    item(config, "pure")
})