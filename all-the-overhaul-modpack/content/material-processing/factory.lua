local Recipe = atom.util.Recipe

-- Factory to create recipes and icons for a given material
-- Uses the config as described in util.lua
atom.processing.create = function(config)
    local create = {
        oreToPlateRecipe = function()
            -- -50%
            local results = config.additionalResults.oreToPlate or {}
            table.insert(results, { type = "item", name = config.itemNames.plate, amount = 3 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate",
                localised_name = { "item-name." .. config.itemNames.plate },
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.ore),
                },
                category = "smelting",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.ore, amount = 6 }
                },
                results = results,
                subgroup = config.subgroup,
                main_product = config.itemNames.plate,
                enabled = config.enableAtStart or false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.oreToPlate)
            return recipe
        end,

        oreToDustRecipe = function()
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-dust",
                localised_name = { "item-name." .. config.itemNames.dust },
                icons = { config.icons.dust },
                category = "mashering",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.ore, amount = 6 }
                },
                results = {
                    { type = "item", name = config.itemNames.dust, amount = 12 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.oreToDust or "5d-masher-1")
            return recipe
        end,

        dustToPlateRecipe = function()
            -- -36%
            local results = config.additionalResults.dustToPlate or {}
            table.insert(results, { type = "item", name = config.itemNames.plate, amount = 3 })
            table.insert(results, { type = "item", name = config.itemNames.plate, amount = 1, probability = 0.84 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate-dust",
                localised_name = { "item-name." .. config.itemNames.plate },
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.dust),
                },
                category = "smelting",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.dust, amount = 12 }
                },
                results = results,
                main_product = config.itemNames.plate,
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.dustToPlate or "5d-masher-1")
            return recipe
        end,

        dustToIngotRecipe = function()
            local additionalIngredient = config.additionalIngredient.dustToIngot or nil
            local results = config.additionalResults.dustToIngot or {}
            table.insert(results, { type = "item", name = config.itemNames.ingot, amount = 2 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot",
                localised_name = { "item-name." .. config.itemNames.ingot },
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.dust)
                },
                category = "smelting",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.dust, amount = 12 },
                    additionalIngredient
                },
                results = results,
                main_product = config.itemNames.ingot,
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.dustToIngot or "atom-advanced-ore-processing-1")
            return recipe
        end,

        ingotToPlateRecipe = function()
            -- -11%
            local additionalIngredient = config.additionalIngredient.ingotToPlate or nil
            local results = config.additionalResults.ingotToPlate or {}
            table.insert(results, { type = "item", name = config.itemNames.plate, amount = 5 })
            table.insert(results, { type = "item", name = config.itemNames.plate, amount = 1, probability = 0.34 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate-ingot",
                localised_name = { "item-name." .. config.itemNames.plate },
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.ingot)
                },
                category = "el_caster_category",
                energy_required = 4.8,
                ingredients = {
                    { type = "item", name = config.itemNames.ingot, amount = 2 },
                    additionalIngredient
                },
                results = results,
                main_product = config.itemNames.plate,
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.ingotToPlate or "atom-advanced-ore-processing-1")
            return recipe
        end,

        ingotToMoltenRecipe = function()
            -- +33%
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-molten",
                localised_name = { "item-name." .. config.itemNames.molten },
                icons = {
                    config.icons.molten,
                    atom.util.icon.createSmallIcon(config.icons.ingot)
                },
                category = "el_arc_furnace_category",
                energy_required = 6.4,
                ingredients = {
                    { type = "item", name = config.itemNames.ingot, amount = 2 },
                    { type = "fluid", name = "se-pyroflux", amount = 0.25 }
                },
                results = {
                    { type = "fluid", name = config.itemNames.molten, amount = 400 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.ingotToMolten or "atom-advanced-ore-processing-2")
            return recipe
        end,

        moltenToPlateRecipe = function()
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate-molten",
                localised_name = { "item-name." .. config.itemNames.plate },
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.molten)
                },
                category = "casting",
                energy_required = 2.4,
                ingredients = {
                    { type = "fluid", name = config.itemNames.molten, amount = 300 }
                },
                results = {
                    { type = "item", name = config.itemNames.plate, amount = 6 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.moltenToPlate or "atom-advanced-ore-processing-2")
            return recipe
        end,

        dustToEnrichedRecipe = function()
            local results = config.additionalResults.dustToEnriched or {}
            table.insert(results, { type = "item", name = config.itemNames.enriched, amount = 6 })
            table.insert(results, { type = "fluid", name = "kr-dirty-water", amount = 333, ignored_by_productivity = 333, ignored_by_stats = 333 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-enrichment",
                localised_name = { "item-name." .. config.itemNames.enriched },
                icons = {
                    config.icons.enriched,
                    atom.util.icon.createSmallIcon(config.icons.dust)
                },
                category = "kr-fluid-filtration",
                energy_required = 4.8,
                ingredients = {
                    { type = "item", name = config.itemNames.dust, amount = 12 },
                    { type = "fluid", name = "water", amount = 370 }
                },
                results = results,
                main_product = config.itemNames.enriched,
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.dustToEnriched or "atom-advanced-ore-processing-2")
            return recipe
        end,

        enrichedToIngotRecipe = function()
            local additionalIngredient = config.additionalIngredient.enrichedToIngot or nil
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot-enriched",
                localised_name = { "item-name." .. config.itemNames.ingot },
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.enriched)
                },
                category = "smelting",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.enriched, amount = 6 },
                    additionalIngredient
                },
                results = {
                    { type = "item", name = config.itemNames.ingot, amount = 2 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.enrichedToIngot or "atom-advanced-ore-processing-2")
            return recipe
        end,

        dustToPureRecipe = function()
            local additionalIngredient = config.additionalIngredient.dustToPure or { type = "fluid", name = "sulfuric-acid", amount = 4 }
            local results = config.additionalResults.dustToPure or {}
            table.insert(results, { type = "item", name = config.itemNames.pure, amount = 6 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-slurry",
                localised_name = { "item-name." .. config.itemNames.pure },
                icons = {
                    config.icons.dust,
                    atom.util.icon.createSmallIcon(config.icons.pure),
                },
                category = "el_purifier_category",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.dust, amount = 12 },
                    additionalIngredient
                },
                results = results,
                main_product = config.itemNames.pure,
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.dustToPure or "atom-advanced-ore-processing-3")
            return recipe
        end,

        pureToEnrichedRecipe = function()
            local results = config.additionalResults.pureToEnriched or {}
            table.insert(results, { type = "item", name = config.itemNames.enriched, amount = 6 })
            table.insert(results, { type = "fluid", name = "kr-dirty-water", amount = 333, ignored_by_productivity = 333, ignored_by_stats = 333 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-enriched-pure",
                localised_name = { "item-name." .. config.itemNames.enriched },
                icons = {
                    config.icons.enriched,
                    atom.util.icon.createSmallIcon(config.icons.pure)
                },
                category = "kr-fluid-filtration",
                energy_required = 4.8,
                ingredients = {
                    { type = "item", name = config.itemNames.pure, amount = 6 },
                    { type = "fluid", name = "water", amount = 370 }
                },
                results = results,
                main_product = config.itemNames.enriched,
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.pureToEnriched or "atom-advanced-ore-processing-3")
            return recipe
        end,

        enrichedToPelletsRecipe = function()
            local additionalIngredient = config.additionalIngredient.enrichedToPellets or nil
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-pellets",
                localised_name = { "item-name." .. config.itemNames.pellets },
                icons = {
                    config.icons.pellets,
                    atom.util.icon.createSmallIcon(config.icons.enriched)
                },
                category = "el_caster_category",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.enriched, amount = 6 },
                    additionalIngredient
                },
                results = {
                    { type = "item", name = config.itemNames.pellets, amount = 6 }
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.enrichedToPellets or "atom-advanced-ore-processing-4")
            return recipe
        end,

        pelletsToIngotRecipe = function()
            local additionalIngredient = config.additionalIngredient.pelletsToIngot or { type = "item", name = "quicklime", amount = 1 }
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot-pellets",
                localised_name = { "item-name." .. config.itemNames.ingot },
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.pellets)
                },
                category = "smelting",
                energy_required = 9.6,
                ingredients = {
                    { type = "item", name = config.itemNames.pellets, amount = 6 },
                    additionalIngredient
                },
                results = {
                    { type = "item", name = config.itemNames.ingot, amount = 2 }
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.pelletsToIngot or "atom-advanced-ore-processing-4")
            return recipe
        end,

        item = function(category)
            if atom.stage ~= "data" then
                return data.raw.item[config.itemNames[category]]
            end
            return {
                type = "item",
                name = config.itemNames[category],
                icons = { config.icons[category] },
                order = "a[" .. config.name .. "-" .. category .. "]",
                stack_size = 50,
            }
        end
    }

    return create
end