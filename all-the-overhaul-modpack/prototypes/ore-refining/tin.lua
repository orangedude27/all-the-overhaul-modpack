local config = {
    name = "tin",
    enableAtStart = true,
    itemNames = {
        ore = "tin-ore",
        plate = "tin-plate",
        dust = "atom-tin-dust",
        ingot = "tin-ingot",
        molten = "molten-tin",
        enriched = "enriched-tin",
        pure = "atom-tin-pure",
        pellets = "atom-tin-pellets"
    },
    icons = {
        ore = { icon = "__bztin__/graphics/icons/tin-ore.png", icon_size = 64, icon_mipmaps = 3 },
        plate = { icon = "__bztin__/graphics/icons/tin-plate.png", icon_size = 128, icon_mipmaps = 3 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-tin-dust.png", icon_size = 32 },
        ingot = { icon = "__bztin__/graphics/icons/tin-ingot.png", icon_size = 128 },
        molten = { icon = "__bztin__/graphics/icons/molten-tin.png", icon_size = 128 },
        enriched = { icon = "__bztin__/graphics/icons/enriched-tin.png", icon_size = 128 },
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pure.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {
        pelletsToIngot = { name = "atom-carbon", amount = 2 }
    },
    additionalResults = {
        oreToPlate = {
            { name = "bismuth-plate", amount = 1, probability = 0.5 }
        },
        dustToPlate = {
            { name = "bismuth-plate", amount = 1, probability = 0.5 }
        },
        dustToIngot = {
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        dustToEnriched = {
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        dustToPure = {
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        }
    }
}

data:extend(createRefiningData(config))

return config