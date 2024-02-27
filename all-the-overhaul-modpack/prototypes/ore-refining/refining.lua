--[[
config: {
    -- Base name of the material (e.g. "copper")
    name: string,

    -- Order string for the item subgroup (e.g. "a")
    order: string,

    -- Whether to enable the plate recipe at the start of the game
    enableAtStart: boolean,

    -- Names of the indermediate and end result items (e.g. "5d-copper-dust", "se-copper-ingot")
    itemNames: {
        ore: string,
        ingot: string,
        dust: string,
        molten: string,
        plate: string,
        enriched: string,
        pure: string,
        pellets: string
    },

    -- Icon tables (only the large icons, not the small ones in the corner)
    icons: {
        ingot: IconData,
        dust: IconData,
        molten: IconData,
        plate: IconData,
        enriched: IconData,
        pure: IconData,
        pellets: IconData
    },

    -- Optional additional results from the enrichment processes
    additionalResults: {
        oreToPlate: array[ProductPrototype],
        dustToPlate: array[ProductPrototype],
        dustToIngot: array[ProductPrototype],
        dustToEnriched: array[ProductPrototype],
        dustToPure: array[ProductPrototype],
        pureToEnriched: array[ProductPrototype]
    }

    -- Optional additional ingredients (replaces the default ones)
    additionalIngredient: {
        -- Defaults to none
        dustToIngot: ProductPrototype

        -- Defaults to { type = "fluid", name = "sulfuric-acid", amount = 4 }
        dustToPure: ProductPrototype

        -- Defaults to { name = "coke", amount = 1 }
        enrichedToIngot: ProductPrototype

        -- Defaults to { name = "coke", amount = 1 }
        enrichedToPellets: ProductPrototype

        -- Defaults to { name = "quicklime", amount = 1 }
        pelletsToIngot: ProductPrototype
    }

    -- Technology name that unlocks the recipe
    unlockedBy: {
        oreToPlate,
        oreToDust,
        dustToPlate,
        dustToIngot,
        ingotToMolten,
        moltenToPlate,
        dustToEnriched,
        enrichedToIngot,
        dustToPure,
        pureToEnriched,
        enrichedToPellets,
        pelletsToIngot,
    }
}
--]]
function createRefiningData(config)
    config.additionalResults = config.additionalResults or {}
    config.additionalIngredient = config.additionalIngredient or {}
    config.unlockedBy = config.unlockedBy or {}

    return {
        oreToPlateRecipe(config),
        oreToDustRecipe(config),
        dustToPlateRecipe(config),
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
        item(config, "dust"),
        item(config, "pure"),
        item(config, "pellets")
    }
end

function createSmallIcon(icon)
    local smallIcon = table.deepcopy(icon)
    smallIcon.scale = 16 / smallIcon.icon_size
    smallIcon.shift = { -8, -8 }
    return smallIcon
end

function createSmallIconRight(icon)
    local smallIcon = table.deepcopy(icon)
    smallIcon.scale = 16 / smallIcon.icon_size
    smallIcon.shift = { 8, -8 }
    return smallIcon
end

local productivityModules = {}
for _, module in pairs(data.raw["module"]) do
    if string.find(module.name, "productivity", 1, true) then
        table.insert(productivityModules, module)
    end
end

function allowProductivity(recipeName)
    for _, module in pairs(productivityModules) do
        if (module.limitation) then
            table.insert(module.limitation, recipeName)
        end
    end
end

function setSubGroup(config)
    if not data.raw["item-subgroup"][config.name] then
        data:extend({
            {
                type = "item-subgroup",
                name = config.name,
                group = "resources",
                order = "0-ore-" .. (config.order or "z")
            }
        })
    else
        data.raw["item-subgroup"][config.name].group = "resources"
        data.raw["item-subgroup"][config.name].order = "0-ore-" .. (config.order or "z")
    end
    for _, item in pairs(config.itemNames) do
        if (data.raw.item[item]) then
            data.raw.item[item].subgroup = config.name
        end
    end
end

function unlockedBy(recipe, technology)
    if not technology then
        return
    end
    for _, effect in pairs(data.raw.technology[technology].effects) do
        if effect.type == "unlock-recipe" and effect.recipe == recipe then
            return
        end
    end
    table.insert(data.raw.technology[technology].effects, { type = "unlock-recipe", recipe = recipe })
end

function oreToPlateRecipe(config)-- -50%
    local results = config.additionalResults.oreToPlate or {}
    table.insert(results, { name = config.itemNames.plate, amount = 6 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate",
        icons = {
            config.icons.plate,
            createSmallIcon(config.icons.ore),
        },
        category = "smelting",
        energy_required = 19.2,
        ingredients = {
            { config.itemNames.ore, 12 }
        },
        results = results,
        main_product = config.itemNames.plate,
        enabled = true--config.enableAtStart or false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.oreToPlate)
    return recipe
end

function oreToDustRecipe(config)
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-dust",
        icons = { config.icons.dust },
        category = "mashering",
        energy_required = 3.2,
        ingredients = {
            { config.itemNames.ore, 1 }
        },
        results = {
            { name = config.itemNames.dust, amount = 2 },
        },
        enabled = false
    }
    unlockedBy(recipe.name, config.unlockedBy.oreToDust)
    return recipe
end

function dustToPlateRecipe(config)-- -33%
    local results = config.additionalResults.dustToPlate or {}
    table.insert(results, { name = config.itemNames.plate, amount = 6 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate-dust",
        icons = {
            config.icons.plate,
            createSmallIcon(config.icons.dust),
        },
        category = "smelting",
        energy_required = 13.2,
        ingredients = {
            { config.itemNames.dust, 18 }
        },
        results = results,
        main_product = config.itemNames.plate,
        enabled = false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.dustToPlate)
    return recipe
end

function dustToIngotRecipe(config)
    local additionalIngredient = config.additionalIngredient.dustToIngot or nil
    local results = config.additionalResults.dustToIngot or {}
    table.insert(results, { name = config.itemNames.ingot, amount = 6 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-ingot",
        icons = {
            config.icons.ingot,
            createSmallIcon(config.icons.dust)
        },
        category = "smelting",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.dust, amount = 12 },
            additionalIngredient
        },
        results = results,
        main_product = config.itemNames.ingot,
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.dustToIngot)
    return recipe
end

function ingotToPlateRecipe(config)
    local additionalIngredient = config.additionalIngredient.dustToIngot or nil
    local results = config.additionalResults.ingotToPlate or {}
    table.insert(results, { name = config.itemNames.plate, amount = 6 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate-ingot",
        icons = {
            config.icons.plate,
            createSmallIcon(config.icons.ingot)
        },
        category = "el_caster_category",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.ingot, amount = 6 },
            additionalIngredient
        },
        results = results,
        main_product = config.itemNames.plate,
        enabled = true--false
    }
    unlockedBy(recipe.name, config.unlockedBy.ingotToPlate)
    return recipe
end

function ingotToMoltenRecipe(config)-- +33%
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-molten",
        icons = {
            config.icons.molten,
            createSmallIcon(config.icons.ingot)
        },
        category = "el_arc_furnace_category",
        energy_required = 3.2,
        ingredients = {
            { name = config.itemNames.ingot, amount = 3 },
            { type = "fluid", name = "se-pyroflux", amount = 0.125 }
        },
        results = {
            { type = "fluid", name = config.itemNames.molten, amount = 200 },
        },
        enabled = true--false
    }
    unlockedBy(recipe.name, config.unlockedBy.ingotToMolten)
    return recipe
end

function moltenToPlateRecipe(config)
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate-molten",
        icons = {
            config.icons.plate,
            createSmallIcon(config.icons.molten)
        },
        category = "casting",
        energy_required = 1.6,
        ingredients = {
            { type = "fluid", name = config.itemNames.molten, amount = 100 }
        },
        results = {
            { name = config.itemNames.plate, amount = 2 },
        },
        enabled = true--false
    }
    unlockedBy(recipe.name, config.unlockedBy.moltenToPlate)
    return recipe
end

function dustToEnrichedRecipe(config)-- +50%
    local results = config.additionalResults.dustToEnriched or {}
    table.insert(results, { name = config.itemNames.enriched, amount = 6 })
    table.insert(results, { type = "fluid", name = "dirty-water", amount = 480 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-enrichment",
        icons = {
            config.icons.enriched,
            createSmallIcon(config.icons.dust)
        },
        category = "fluid-filtration",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.dust, amount = 8 },
            { type = "fluid", name = "water", amount = 480 }
        },
        results = results,
        main_product = config.itemNames.enriched,
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.dustToEnriched)
    return recipe
end

function enrichedToIngotRecipe(config)
    local additionalIngredient = config.additionalIngredient.enrichedToIngot or { name = "coke", amount = 1 }
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-ingot-enriched",
        icons = {
            config.icons.ingot,
            createSmallIcon(config.icons.enriched)
        },
        category = "smelting",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.enriched, amount = 6 },
            additionalIngredient
        },
        results = {
            { name = config.itemNames.ingot, amount = 6 },
        },
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.enrichedToIngot)
    return recipe
end

function dustToPureRecipe(config)-- +50%
    local additionalIngredient = config.additionalIngredient.dustToPure or { type = "fluid", name = "sulfuric-acid", amount = 4 }
    local results = config.additionalResults.dustToPure or {}
    table.insert(results, { name = config.itemNames.pure, amount = 6 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-slurry",
        icons = {
            config.icons.dust,
            createSmallIcon(config.icons.pure),
        },
        category = "el_purifier_category",
        energy_required = 4.8,
        ingredients = {
            { name = config.itemNames.dust, amount = 8 },
            additionalIngredient
        },
        results = results,
        main_product = config.itemNames.pure,
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.dustToPure)
    return recipe
end

function pureToEnrichedRecipe(config)-- +50%
    local results = config.additionalResults.pureToEnriched or {}
    table.insert(results, { name = config.itemNames.enriched, amount = 6 })
    table.insert(results, { type = "fluid", name = "dirty-water", amount = 480 })
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-enriched-pure",
        icons = {
            config.icons.enriched,
            createSmallIcon(config.icons.pure)
        },
        category = "fluid-filtration",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.pure, amount = 4 },
            { type = "fluid", name = "water", amount = 480 }
        },
        results = results,
        main_product = config.itemNames.enriched,
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.pureToEnriched)
    return recipe
end

function enrichedToPelletsRecipe(config)-- +33%
    local additionalIngredient = config.additionalIngredient.enrichedToPellets or { name = "coke", amount = 1 }
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-pellets",
        icons = {
            config.icons.pellets,
            createSmallIcon(config.icons.enriched)
        },
        category = "el_caster_category",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.enriched, amount = 6 },
            additionalIngredient
        },
        results = {
            { name = config.itemNames.pellets, amount = 8 }
        },
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.enrichedToPellets)
    return recipe
end

function pelletsToIngotRecipe(config)
    local additionalIngredient = config.additionalIngredient.pelletsToIngot or { name = "quicklime", amount = 1 }
    local recipe = {
        type = "recipe",
        name = "atom-" .. config.name .. "-ingot-pellets",
        icons = {
            config.icons.ingot,
            createSmallIcon(config.icons.pellets)
        },
        category = "smelting",
        energy_required = 9.6,
        ingredients = {
            { name = config.itemNames.pellets, amount = 6 },
            additionalIngredient
        },
        results = {
            { name = config.itemNames.ingot, amount = 6 }
        },
        enabled = true--false
    }
    allowProductivity(recipe.name)
    unlockedBy(recipe.name, config.unlockedBy.pelletsToIngot)
    return recipe
end

function item(config, category, stackSize)
    return {
        type = "item",
        name = "atom-" .. config.name .. "-" .. category,
        icons = { config.icons[category] },
        order = "a[" .. config.name .. "-" .. category .. "]",
        stack_size = stackSize or 100,
    }
end