local config = {
    name = "aluminum",
    itemNames = {
        ore = "aluminum-ore",
        plate = "aluminum-plate",
        dust = "atom-aluminum-dust",
        ingot = "aluminum-ingot",
        molten = "molten-aluminum",
        enriched = "enriched-aluminum",
        pure = "el_materials_pure_aluminum",
        pellets = "atom-aluminum-pellets"
    },
    icons = {
        plate = { icon = "__bzaluminum__/graphics/icons/aluminum-plate.png", icon_size = 128, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-aluminium-dust.png", icon_size = 32 },
        ingot = { icon = "__bzaluminum__/graphics/icons/aluminum-ingot.png", icon_size = 128 },
        molten = { icon = "__bzaluminum__/graphics/icons/molten-aluminum.png", icon_size = 128 },
        enriched = { icon = "__bzaluminum__/graphics/icons/enriched-aluminum.png", icon_size = 128 },
        pure = { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_aluminum.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-aluminium-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {},
    additionalResults = {
        dustToIngot = {
            { name = "alumina", amount = 1 },
            { name = "silica", amount = 1, probability = 0.25 }
        },
        dustToEnriched = {
            { name = "alumina", amount = 1 },
            { name = "silica", amount = 1, probability = 0.25 }
        },
        dustToPure = {
            { name = "alumina", amount = 1 },
            { name = "silica", amount = 1, probability = 0.25 }
        }
    }
}

local function dustToAlumina()
    return {
        type = "recipe",
        name = "atom-alumina-dust",
        icons = {
            { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128 },
            createSmallIcon(config.icons.dust),
        },
        category = "smelting",
        energy_required = 48,
        ingredients = {
            { config.itemNames.dust, 22 }
        },
        results = {
            { name = "alumina", amount = 15 },
            { name = "silica", amount = 1, probability = 0.25 }
        },
    }
end

data:extend({
    dustToAlumina(),
    oreToDustRecipe(config),
    dustToIngotRecipe(config),
    ingotToMoltenRecipe(config),
    moltenToPlateRecipe(config),
    dustToEnrichedRecipe(config),
    enrichedToIngotRecipe(config),
    dustToPureRecipe(config),
    pureToEnrichedRecipe(config),
    enrichedToPelletsRecipe(config),
    pelletsToIngotRecipe(config),
    item(config, "pellets"),
    item(config, "dust")
})

--aluminum-ingot-to-plate