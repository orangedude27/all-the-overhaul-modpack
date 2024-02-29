local config = {
    name = "aluminum",
    order = "b",
    enableAtStart = true,
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
        ore = { icon = "__bzaluminum__/graphics/icons/aluminum-ore.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_aluminum.png", icon_size = 64 },
        "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {},
    additionalResults = {
        dustToIngot = {
            { name = "alumina", amount = 1, probability = 0.26 }
        },
        dustToEnriched = {
            { name = "alumina", amount = 1, probability = 0.26 }
        },
        dustToPure = {
            { name = "alumina", amount = 1, probability = 0.26 }
        }
    },
    unlockedBy = {}
}

createIcons(config)

local aluminaIcon = { icon = "__bzaluminum__/graphics/icons/alumina.png", icon_size = 128 }

local function oreToAluminaRecipe()
    local recipe = {
        type = "recipe",
        name = "atom-alumina-ore",
        icons = {
            aluminaIcon,
            createSmallIcon(config.icons.ore),
        },
        category = "smelting",
        energy_required = 3.2,
        ingredients = {
            { config.itemNames.ore, 2 }
        },
        results = {
            { name = "alumina", amount = 1 },
            { name = "silica", amount = 1, probability = 0.05 }
        },
        main_product = "alumina",
        enabled = config.enableAtStart or false
    }
    return recipe
end

local function aluminaToPlateRecipe()
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate",
        icons = {
            config.icons.plate,
            createSmallIcon(aluminaIcon),
        },
        category = "smelting",
        energy_required = 19.2,
        ingredients = {
            { "alumina", 6 }
        },
        results = { { name = config.itemNames.plate, amount = 6 } },
        enabled = config.enableAtStart or false
    }
    allowProductivity(recipe.name)
    return recipe
end

local function dustToAluminaRecipe()
    local recipe = {
        type = "recipe",
        name = "atom-alumina-dust",
        icons = {
            aluminaIcon,
            createSmallIcon(config.icons.dust),
        },
        category = "smelting",
        energy_required = 3.2,
        ingredients = {
            { config.itemNames.dust, 3 }
        },
        results = {
            { name = "alumina", amount = 1 },
            { name = "silica", amount = 1, probability = 0.0167 }
        },
        main_product = "alumina",
        enabled = false
    }
    unlockedBy(recipe.name, "5d-masher-1")
    return recipe
end

data:extend({
    oreToAluminaRecipe(),
    aluminaToPlateRecipe(),
    dustToAluminaRecipe(),
    oreToDustRecipe(config),
    dustToIngotRecipe(config),
    ingotToPlateRecipe(config),
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

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)
data.raw.item.alumina.subgroup = "aluminum"

return config