--[[
config: {
    -- Base name of the material (e.g. "copper")
    name: string,

    -- Names of the indermediate and end result items (e.g. "5d-copper-dust", "se-copper-ingot")
    itemNames: {
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
        dustToEnriched: array[ProductPrototype],
        pureToEnriched: array[ProductPrototype],
        dustToPure: array[ProductPrototype]
    }

    -- Optional additional ingredients (replaces the default ones)
    additionalIngredient: {
        -- Defaults to { name = "coke", amount = 2 }
        enrichedToIngot: ProductPrototype

        -- Defaults to { type = "fluid", name = "sulfuric-acid", amount = 5 }
        dustToPure: ProductPrototype
        
        -- Defaults to { name = "quicklime", amount = 2 }
        pelletsToIngot: ProductPrototype
    }
}
--]]
function createRefiningData(config)
    return {
        dustToIngotRecipe(config),
        ingotToMoltenRecipe(config),
        moltenToPlateRecipe(config),
        dustToEnrichedRecipe(config),
        enrichedToIngotRecipe(config),
        dustToPureRecipe(config),
        pureToEnrichedRecipe(config),
        enrichedToPelletsRecipe(config),
        pelletsToIngotRecipe(config),
        pelletsItem(config)
    }
end

function createSmallIcon(icon)
    local smallIcon = table.deepcopy(icon)
    smallIcon.scale = 16 / smallIcon.icon_size
    smallIcon.shift = {-8, -8}
    return smallIcon
end

function dustToIngotRecipe(config)
    return {
        type = "recipe",
        name = "atom-"..config.name.."-ingot",
        icons = {
            config.icons.ingot,
            createSmallIcon(config.icons.dust)
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = config.itemNames.dust, amount = 20 }
        },
        results = {
            { name = config.itemNames.ingot, amount = 4 },
        },
    }
end

function ingotToMoltenRecipe(config)
    return {
        type = "recipe",
        name = "atom-"..config.name.."-molten",
        icons = {
            config.icons.molten,
            createSmallIcon(config.icons.ingot)
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = config.itemNames.ingot, amount = 4 }
        },
        results = {
            { type = "fluid", name = config.itemNames.molten, amount = 400 },
        },
    }
end

function moltenToPlateRecipe(config)
    return {
        type = "recipe",
        name = "atom-"..config.name.."-plate",
        icons = {
            config.icons.plate,
            createSmallIcon(config.icons.molten)
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = config.itemNames.molten, amount = 400 }
        },
        results = {
            { name = config.itemNames.plate, amount = 20 },
        }
    }
end

function dustToEnrichedRecipe(config)
    local results = config.additionalResults.dustToEnriched or {}
    table.insert(results, { name = config.itemNames.enriched, amount = 2 })
    table.insert(results, { type = "fluid", name = "dirty-water", amount = 50 })

    return {
        type = "recipe",
        name = "atom-"..config.name.."-enrichment",
        icons = {
            config.icons.enriched,
            createSmallIcon(config.icons.dust)
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = config.itemNames.dust, amount = 20 },
            { type = "fluid", name = "water", amount = 50 }
        },
        results = results,
        main_product = config.itemNames.enriched
    }
end

function enrichedToIngotRecipe(config)
    local additionalIngredient = config.additionalIngredient.enrichedToIngot or { name = "coke", amount = 2 }
    return {
        type = "recipe",
        name = "atom-"..config.name.."-ingot-enriched",
        icons = {
            config.icons.ingot,
            createSmallIcon(config.icons.enriched)
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = config.itemNames.enriched, amount = 2 },
            additionalIngredient
        },
        results = {
            { name = config.itemNames.ingot, amount = 6 },
        }
    }
end

function dustToPureRecipe(config)
    local additionalIngredient = config.additionalIngredient.dustToPure or { type = "fluid", name = "sulfuric-acid", amount = 5 }
    local results = config.additionalResults.dustToPure or {}
    table.insert(results, { name = config.itemNames.pure, amount = 1 })

    return {
        type = "recipe",
        name = "atom-"..config.name.."-slurry",
        icons = {
            config.icons.dust,
            createSmallIcon(config.icons.pure),
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = config.itemNames.dust, amount = 20 },
            additionalIngredient
        },
        results = results,
        main_product = config.itemNames.pure,
    }
end

function pureToEnrichedRecipe(config)
    local results = config.additionalResults.pureToEnriched or {}
    table.insert(results, { name = config.itemNames.enriched, amount = 3 })
    table.insert(results, { type = "fluid", name = "dirty-water", amount = 75 })

    return {
        type = "recipe",
        name = "atom-"..config.name.."-enriched-pure",
        icons = {
            config.icons.enriched,
            createSmallIcon(config.icons.pure)
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = config.itemNames.pure, amount = 1 },
            { type = "fluid", name = "water", amount = 75 }
        },
        results = results,
        main_product = config.itemNames.enriched
    }
end

function enrichedToPelletsRecipe(config) 
    return {
        type = "recipe",
        name = "atom-"..config.name.."-pellets",
        icons = {
            config.icons.pellets,
            createSmallIcon(config.icons.enriched)
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = config.itemNames.enriched, amount = 3 }
        },
        results = {
            { name = config.itemNames.pellets, amount = 4 }
        }
    }
end

function pelletsToIngotRecipe(config)
    local additionalIngredient = config.additionalIngredient.pelletsToIngot or { name = "quicklime", amount = 2 }
    return {
        type = "recipe",
        name = "atom-"..config.name.."-ingot-pellets",
        icons = {
            config.icons.ingot,
            createSmallIcon(config.icons.pellets)
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = config.itemNames.pellets, amount = 2 },
            additionalIngredient
        },
        results = {
            { name = config.itemNames.ingot, amount = 5 }
        }
    }
end

function pelletsItem(config)
    return {
        type = "item",
        name = "atom-"..config.name.."-pellets",
        icons = {
            config.icons.pellets
        },
        order = "a["..config.name.."-pellet]",
        stack_size = 50,
        subgroup = config.name
    }
end