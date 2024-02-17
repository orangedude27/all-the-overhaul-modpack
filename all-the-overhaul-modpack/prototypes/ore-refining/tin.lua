require('refining')

local config = {
    name = "tin",
    itemNames = {
        ingot = "tin-ingot",
        dust = "atom-tin-dust",
        molten = "molten-tin",
        plate = "tin-plate",
        enriched = "enriched-tin",
        pure = "atom-tin-pure",
        pellets = "atom-tin-pellets"
    },
    icons = {
        ingot = { icon = "__bztin__/graphics/icons/tin-ingot.png", icon_size = 128 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-tin-dust.png", icon_size = 32 },
        molten = { icon = "__bztin__/graphics/icons/molten-tin.png", icon_size = 128 },
        plate = { icon = "__bztin__/graphics/icons/tin-plate.png", icon_size = 128, icon_mipmaps = 3 },
        enriched = { icon = "__bztin__/graphics/icons/enriched-tin.png", icon_size = 128 },
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pure.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {
        pelletsToIngot = { name = "atom-carbon", amount = 2 }
    }
}

data:extend(createRefiningData(config))

data:extend({
    item(config, "pure")
})