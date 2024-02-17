require('refining')

local config = {
    name = "lead",
    itemNames = {
        ore = "lead-ore",
        ingot = "lead-ingot",
        dust = "atom-lead-dust",
        molten = "molten-lead",
        plate = "lead-plate",
        enriched = "enriched-lead",
        pure = "fu_materials_pure_lead",
        pellets = "atom-lead-pellets"
    },
    icons = {
        ingot = { icon = "__bzlead__/graphics/icons/lead-ingot.png", icon_size = 128, icon_mipmaps = 3 },
        dust = { icon = "__bzlead__/graphics/icons/lead-powder.png", icon_size = 64 },
        molten = { icon = "__bzlead__/graphics/icons/molten-lead.png", icon_size = 128 },
        plate = { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__bzlead__/graphics/icons/enriched-lead.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__248k__/ressources/fusion/fu_materials/fu_materials_pure_lead.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-lead-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    },
    additionalResults = {
        dustToPure = {
            { name = "silver-ore", amount = 1 }
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1 }
        }
    },
    additionalIngredient = {
        dustToPure = { type = "fluid", name = "oxygen", amount = 5 }
    }
}

-- Because lead is different
data:extend({
    oreToDustRecipe(config),
    dustToIngotRecipe(config),
    ingotToMoltenRecipe(config),
    moltenToPlateRecipe(config),
    -- Lead already has a way to make enriched ores
    -- dustToEnrichedRecipe(config),
    enrichedToIngotRecipe(config),
    dustToPureRecipe(config),
    pureToEnrichedRecipe(config),
    enrichedToPelletsRecipe(config),
    pelletsToIngotRecipe(config),
    item(config, "dust"),
    item(config, "pellets")
})

data:extend({
    {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate-dust",
        icons = {
            config.icons.plate,
            createSmallIcon(config.icons.dust),
        },
        category = "smelting",
        energy_required = 16,
        ingredients = {
            { config.itemNames.dust, 12 }
        },
        results = {
            { name = config.itemNames.plate, amount_min = 4, amount_max = 5 },
            { name = "silver-ore", amount_min = 1, amount_max = 2 },
            { name = "bismuth-plate", amount = 1, probability = 0.16 },
        }
    }
})