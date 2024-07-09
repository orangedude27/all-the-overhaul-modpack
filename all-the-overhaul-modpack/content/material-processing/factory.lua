local Recipe = atom.util.Recipe

-- Factory to create recipes and icons for a given material
-- Uses the config as described in util.lua
atom.processing.create = function(config)
    local create = {
        oreToPlateRecipe = function()
            -- -50%
            local results = config.additionalResults.oreToPlate or {}
            local energy = (config.energy and config.energy.oreToPlate) or 9.6
            table.insert(results, { name = config.itemNames.plate, amount = 3 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate",
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.ore),
                },
                category = "smelting",
                energy_required = energy,
                ingredients = {
                    { config.itemNames.ore, 6 }
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
            local energy = (config.energy and config.energy.oreToPlate) or 9.6
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-dust",
                icons = { config.icons.dust },
                category = "mashering",
                energy_required = energy,
                ingredients = {
                    { config.itemNames.ore, 6 }
                },
                results = {
                    { name = config.itemNames.dust, amount = 12 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.oreToDust or "5d-masher-1")
            return recipe
        end,

        dustToPlateRecipe = function()
            -- -36%
            local energy = (config.energy and config.energy.dustToPlate) or 9.6
            local results = config.additionalResults.dustToPlate or {}
            table.insert(results, { name = config.itemNames.plate, amount = 4 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate-dust",
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.dust),
                },
                category = "smelting",
                energy_required = energy,
                ingredients = {
                    { config.itemNames.dust, 12 }
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
            local energy = (config.energy and config.energy.dustToIngot) or 24
            local additionalIngredient = config.additionalIngredient.dustToIngot or nil
            local results = config.additionalResults.dustToIngot or {}
            table.insert(results, { name = config.itemNames.ingot, amount = 2 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot",
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.dust)
                },
                category = "smelting",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.dust, amount = 40 },
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
            local energy = (config.energy and config.energy.ingotToPlate) or 12
            table.insert(results, { name = config.itemNames.plate, amount = 10 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-plate-ingot",
                icons = {
                    config.icons.plate,
                    atom.util.icon.createSmallIcon(config.icons.ingot)
                },
                category = "el_caster_category",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.ingot, amount = 1 },
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

        -- ingotToMoltenRecipe = function()
        --     -- +33%
        --     local recipe = Recipe({
        --         type = "recipe",
        --         name = "atom-" .. config.name .. "-molten",
        --         icons = {
        --             config.icons.molten,
        --             atom.util.icon.createSmallIcon(config.icons.ingot)
        --         },
        --         category = "el_arc_furnace_category",
        --         energy_required = 6.4,
        --         ingredients = {
        --             { name = config.itemNames.ingot, amount = 2 },
        --             { type = "fluid", name = "se-pyroflux", amount = 0.25 }
        --         },
        --         results = {
        --             { type = "fluid", name = config.itemNames.molten, amount = 400 },
        --         },
        --         subgroup = config.subgroup,
        --         enabled = false
        --     })
        --     recipe.unlockedByTechnology(config.unlockedBy.ingotToMolten or "atom-advanced-ore-processing-2")
        --     return recipe
        -- end,

        -- moltenToPlateRecipe = function()
        --     local recipe = Recipe({
        --         type = "recipe",
        --         name = "atom-" .. config.name .. "-plate-molten",
        --         icons = {
        --             config.icons.plate,
        --             atom.util.icon.createSmallIcon(config.icons.molten)
        --         },
        --         category = "casting",
        --         energy_required = 2.4,
        --         ingredients = {
        --             { type = "fluid", name = config.itemNames.molten, amount = 300 }
        --         },
        --         results = {
        --             { name = config.itemNames.plate, amount = 6 },
        --         },
        --         subgroup = config.subgroup,
        --         enabled = false
        --     })
        --     recipe.unlockedByTechnology(config.unlockedBy.moltenToPlate or "atom-advanced-ore-processing-2")
        --     return recipe
        -- end,

        moltenToIngotRecipe = function()
            local energy = (config.energy and config.energy.moltenToIngot) or 6
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot-molten",
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.molten)
                },
                category = "casting",
                energy_required = energy,
                ingredients = {
                    { type = "fluid", name = config.itemNames.molten, amount = 300 }
                },
                results = {
                    { name = config.itemNames.ingot, amount = 1 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.moltenToPlate or "atom-advanced-ore-processing-2")
            return recipe
        end,

        dustToEnrichedRecipe = function()
            local results = config.additionalResults.dustToEnriched or {}
            local energy = (config.energy and config.energy.dustToEnriched) or 4.8
            table.insert(results, { name = config.itemNames.enriched, amount = 6 })
            table.insert(results, { type = "fluid", name = "dirty-water", amount = 333, catalyst_amount = 333 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-enrichment",
                icons = {
                    config.icons.enriched,
                    atom.util.icon.createSmallIcon(config.icons.dust)
                },
                category = "fluid-filtration",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.dust, amount = 16 },
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
            local energy = (config.energy and config.energy.enrichedToIngot) or 24
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot-enriched",
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.enriched)
                },
                category = "smelting",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.enriched, amount = 15 },
                    additionalIngredient
                },
                results = {
                    { name = config.itemNames.ingot, amount = 2 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.enrichedToIngot or "atom-advanced-ore-processing-2")
            return recipe
        end,

        enrichedToMoltenRecipe = function()
            -- +33%
            local energy = (config.energy and config.energy.enrichedToMolten) or 6.4
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-enriched-molten",
                icons = {
                    config.icons.molten,
                    atom.util.icon.createSmallIcon(config.icons.enriched)
                },
                category = "el_arc_furnace_category",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.enriched, amount = 3 },
                    { type = "fluid", name = "se-pyroflux", amount = 0.25 }
                },
                results = {
                    { type = "fluid", name = config.itemNames.molten, amount = 160 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.ingotToMolten or "atom-advanced-ore-processing-2")
            return recipe
        end,

        dustToPureRecipe = function()
            local additionalIngredient = config.additionalIngredient.dustToPure or { type = "fluid", name = "sulfuric-acid", amount = 4 }
            local results = config.additionalResults.dustToPure or {}
            local energy = (config.energy and config.energy.dustToPure) or 9.6
            table.insert(results, { name = config.itemNames.pure, amount = 6 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-slurry",
                icons = {
                    config.icons.dust,
                    atom.util.icon.createSmallIcon(config.icons.pure),
                },
                category = "el_purifier_category",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.dust, amount = 12 },
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
            local energy = (config.energy and config.energy.pureToEnriched) or 4.8
            table.insert(results, { name = config.itemNames.enriched, amount = 4 })
            table.insert(results, { name = config.itemNames.enriched, amount = 1, probability = 0.50 })
            table.insert(results, { type = "fluid", name = "dirty-water", amount = 333, catalyst_amount = 333 })
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-enriched-pure",
                icons = {
                    config.icons.enriched,
                    atom.util.icon.createSmallIcon(config.icons.pure)
                },
                category = "fluid-filtration",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.pure, amount = 6 },
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
            local energy = (config.energy and config.energy.enrichedToPellets) or 9.6
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-pellets",
                icons = {
                    config.icons.pellets,
                    atom.util.icon.createSmallIcon(config.icons.enriched)
                },
                category = "el_caster_category",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.enriched, amount = 7 },
                    additionalIngredient
                },
                results = {
                    { name = config.itemNames.pellets, amount = 6 },
                    { name = config.itemNames.pellets, amount = 1, probability = 0.222 }
                },
                subgroup = config.subgroup,
                main_product = config.itemNames.pellets,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.enrichedToPellets or "atom-advanced-ore-processing-4")
            return recipe
        end,

        pelletsToIngotRecipe = function()
            local additionalIngredient = config.additionalIngredient.pelletsToIngot or { name = "quicklime", amount = 1 }
            local energy = (config.energy and config.energy.pelletsToIngot) or 24
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-ingot-pellets",
                icons = {
                    config.icons.ingot,
                    atom.util.icon.createSmallIcon(config.icons.pellets)
                },
                category = "smelting",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.pellets, amount = 15 },
                    additionalIngredient
                },
                results = {
                    { name = config.itemNames.ingot, amount = 2 }
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.allowProductivity()
            recipe.unlockedByTechnology(config.unlockedBy.pelletsToIngot or "atom-advanced-ore-processing-4")
            return recipe
        end,

        pelletsToMoltenRecipe = function()
            -- +33%
            local energy = (config.energy and config.energy.pelletsToMolten) or 6.4
            local recipe = Recipe({
                type = "recipe",
                name = "atom-" .. config.name .. "-pellets-molten",
                icons = {
                    config.icons.molten,
                    atom.util.icon.createSmallIcon(config.icons.pellets)
                },
                category = "el_arc_furnace_category",
                energy_required = energy,
                ingredients = {
                    { name = config.itemNames.pellets, amount = 2 },
                    { type = "fluid", name = "se-pyroflux", amount = 0.25 }
                },
                results = {
                    { type = "fluid", name = config.itemNames.molten, amount = 120 },
                },
                subgroup = config.subgroup,
                enabled = false
            })
            recipe.unlockedByTechnology(config.unlockedBy.ingotToMolten or "atom-advanced-ore-processing-2")
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