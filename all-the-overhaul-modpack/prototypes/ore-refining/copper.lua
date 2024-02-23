local config = {
    name = "copper",
    enableAtStart = false,
    itemNames = {
        ore = "copper-ore",
        plate = "copper-plate",
        dust = "5d-copper-dust",
        ingot = "se-copper-ingot",
        molten = "se-molten-copper",
        enriched = "enriched-copper",
        pure = "el_materials_pure_copper",
        pellets = "atom-copper-pellets"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, icon_mipmaps = 4 },
        plate = { icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32, icon_mipmaps = 3 },
        ingot = { icon = "__space-exploration-graphics__/graphics/icons/copper-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        molten = { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-copper.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_copper.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-copper-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    },
    additionalIngredient = {
        enrichedToIngot = { type = "fluid", name = "carbon-dioxide", amount = 30 },
        enrichedToPellets = { type = "fluid", name = "carbon-dioxide", amount = 30 }
    },
    additionalResults = {
        oreToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "cobaltite-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-plate", amount = 1, probability = 0.5 }
        },
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "cobaltite-ore", amount = 1, probability = 0.1 },
            { name = "bismuth-plate", amount = 1, probability = 0.5 }
        },
        dustToIngot = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        dustToEnriched = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        dustToPure = {
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1, probability = 0.5 }
        }
    }
}

data:extend(createRefiningData(config))

return config