data:extend(
    createRefiningData({
        name = "copper",
        itemNames = {
            ingot = "se-copper-ingot",
            dust = "5d-copper-dust",
            molten = "se-molten-copper",
            plate = "copper-plate",
            enriched = "enriched-copper",
            pure = "el_materials_pure_copper",
            pellets = "atom-copper-pellets"
        },
        icons = {
            ingot = { icon = "__space-exploration-graphics__/graphics/icons/copper-ingot.png", icon_size = 64, icon_mipmaps = 3 },
            dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32, icon_mipmaps = 3 },
            molten = { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-copper.png", icon_size = 64, icon_mipmaps = 3 },
            plate = { icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64, icon_mipmaps = 3 },
            enriched = { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png", icon_size = 64, icon_mipmaps = 3 },
            pure = { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_copper.png", icon_size = 64 },
            pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-copper-pellets.png", icon_size = 128, icon_mipmaps = 3 }
        },
        additionalResults = {
            dustToEnriched = {
                { name = "indite-ore", probability = 0.2, amount = 1 },
                { name = "bismuth-ore", probability = 0.5, amount = 1 }
            },
            dustToPure = {
                { name = "silver-ore", amount = 1 }
            },
            pureToEnriched = {
                { name = "indite-ore", probability = 0.5, amount = 1 },
                { name = "bismuth-ore", amount = 1 },
            }
        },
        additionalIngredient = {
            enrichedToIngot = { type = "fluid", name = "carbon-dioxide", amount = 20 },
            pelletsToIngot = { type = "fluid", name = "carbon-dioxide", amount = 20 }
        }
    })
)