local Recipe = atom.util.Recipe
local energys = {
    hardness3 = {
        oreToPlate = 6,
        oreToDust = 8,
        dustToPlate = 10,
        dustToIngot = 28,
        dustToEnriched = 3,
        enrichedToMolten = 10,
        moltenToIngot = 20,
        dustToPure = 5,
        pureToEnriched = 3,
        enrichedToPellets = 25,
        pelletsToMolten = 3.5
    },
    hardness5 = {
        oreToPlate = 10,
        oreToDust = 12,
        dustToPlate = 8,
        dustToIngot = 22,
        dustToEnriched = 3,
        enrichedToMolten = 8,
        moltenToIngot = 20,
        dustToPure = 4,
        pureToEnriched = 3,
        enrichedToPellets = 20,
        pelletsToMolten = 3.5
    },
    hardness8 = {
        oreToPlate = 16,
        oreToDust = 12,
        dustToPlate = 8,
        dustToIngot = 22,
        dustToEnriched = 3,
        enrichedToMolten = 8,
        moltenToIngot = 20,
        dustToPure = 3,
        pureToEnriched = 3,
        enrichedToPellets = 11,
        pelletsToMolten = 3.5
    }
}
local ratios = {
    effectivenes2 = {
        oreToPlate = {
            ingredients = 6,
            results = 3
        },
        dustToPlate = {
            ingredients = 12,
            results = 4
        },
        dustToIngot = {
            ingredients = 20,
            results = 1
        },
        dustToEnriched = {
            ingredients = 16,
            results = 6
        },
        enrichedToMolten = {
            ingredients = 3,
            results = 160
        },
        dustToPure = {
            ingredients = 12,
            results = 6
        },
        pureToEnriched = {
            ingredients = 12,
            results = 9
        },
        enrichedToPellets = {
            ingredients = 7,
            results = 6
        },
        pelletsToMolten = {
            ingredients = 2,
            results = 180
        }
    },
    effectivenes3 = {
        oreToPlate = {
            ingredients = 6,
            results = 2
        },
        dustToPlate = {
            ingredients = 18,
            results = 4
        },
        dustToIngot = {
            ingredients = 30,
            results = 1
        },
        dustToEnriched = {
            ingredients = 16,
            results = 4
        },
        enrichedToMolten = {
            ingredients = 3,
            results = 160
        },
        dustToPure = {
            ingredients = 12,
            results = 4
        },
        pureToEnriched = {
            ingredients = 12,
            results = 6
        },
        enrichedToPellets = {
            ingredients = 7,
            results = 4
        },
        pelletsToMolten = {
            ingredients = 2,
            results = 120
        }
    },
    effectivenes4 = {
        oreToPlate = {
            ingredients = 8,
            results = 2
        },
        dustToPlate = {
            ingredients = 12,
            results = 2
        },
        dustToIngot = {
            ingredients = 40,
            results = 1
        },
        dustToEnriched = {
            ingredients = 16,
            results = 3
        },
        enrichedToMolten = {
            ingredients = 3,
            results = 160
        },
        dustToPure = {
            ingredients = 12,
            results = 3
        },
        pureToEnriched = {
            ingredients = 24,
            results = 9
        },
        enrichedToPellets = {
            ingredients = 7,
            results = 3
        },
        pelletsToMolten = {
            ingredients = 2,
            results = 90
        }
    }
}
-- Factory to create recipes and icons for a given material
-- Uses the config as described in util.lua
atom.processing.create = function(config)
    
    local energyTable = (config.hardness == 3 and energys.hardness3) or
                   (config.hardness == 5 and energys.hardness5) or
                   (config.hardness == 8 and energys.hardness8) or
                   false
    local ratio = (config.effectiveness == 2 and ratios.effectivenes2) or
                  (config.effectiveness == 3 and ratios.effectivenes3) or
                  (config.effectiveness == 4 and ratios.effectivenes4) or
                  false

    local create = {
        oreToPlateRecipe = function()
            -- -50%
            local results = config.additionalResults.oreToPlate or {}
            local energy = (energyTable and energyTable.oreToPlate) or 9.6
            local resultAmount = (ratio and ratio.oreToPlate.results) or 3
            local ingredientAmount = (ratio and ratio.oreToPlate.ingredients) or 6
            table.insert(results, { name = config.itemNames.plate, amount = resultAmount })
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
                    { config.itemNames.ore, ingredientAmount }
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
            local energy = (energyTable and energyTable.oreToDust) or 9.6

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
            local results = config.additionalResults.dustToPlate or {}
            local energy = (energyTable and energyTable.dustToPlate) or 9.6
            local resultAmount = (ratio and ratio.dustToPlate.results) or 4
            local ingredientAmount = (ratio and ratio.dustToPlate.ingredients) or 12
            table.insert(results, { name = config.itemNames.plate, amount = resultAmount })
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
                    { config.itemNames.dust, ingredientAmount }
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
            local energy = (energyTable and energyTable.dustToIngot) or 24
            local resultAmount = (ratio and ratio.dustToIngot.results) or 1
            local ingredientAmount = (ratio and ratio.dustToIngot.ingredients) or 40
            local additionalIngredient = config.additionalIngredient.dustToIngot or nil
            local results = config.additionalResults.dustToIngot or {}
            table.insert(results, { name = config.itemNames.ingot, amount = resultAmount })
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
                    { name = config.itemNames.dust, amount = ingredientAmount },
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
            local energy = (energyTable and energyTable.oreToPlate) or 6
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
            local energy = (energyTable and energyTable.dustToEnriched) or 4.8
            local resultAmount = (ratio and ratio.dustToEnriched.results) or 3
            local ingredientAmount = (ratio and ratio.dustToEnriched.ingredients) or 6
            table.insert(results, { name = config.itemNames.enriched, amount = resultAmount })
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
                    { name = config.itemNames.dust, amount = ingredientAmount },
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
            local energy = (energyTable and energyTable.enrichedToMolten) or 6.4
            local resultAmount = (ratio and ratio.enrichedToMolten.results) or 160
            local ingredientAmount = (ratio and ratio.enrichedToMolten.ingredients) or 3
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
                    { name = config.itemNames.enriched, amount = ingredientAmount },
                    { type = "fluid", name = "se-pyroflux", amount = 0.25 }
                },
                results = {
                    { type = "fluid", name = config.itemNames.molten, amount = resultAmount },
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
            local energy = (energyTable and energyTable.dustToPure) or 9.6
            local resultAmount = (ratio and ratio.dustToPure.results) or 6
            local ingredientAmount = (ratio and ratio.dustToPure.ingredients) or 12
            table.insert(results, { name = config.itemNames.pure, amount = resultAmount })
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
                    { name = config.itemNames.dust, amount = ingredientAmount },
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
            local energy = (energyTable and energyTable.pureToEnriched) or 4.8
            local resultAmount = (ratio and ratio.pureToEnriched.results) or 4.5
            local ingredientAmount = (ratio and ratio.pureToEnriched.ingredients) or 6
            table.insert(results, { name = config.itemNames.enriched, amount = resultAmount })
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
                    { name = config.itemNames.pure, amount = ingredientAmount },
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
            
            local energy = (energyTable and energyTable.enrichedToPellets) or 9.6
            local resultAmount = (ratio and ratio.enrichedToPellets.results) or 6.22
            local ingredientAmount = (ratio and ratio.enrichedToPellets.ingredients) or 7
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
                    { name = config.itemNames.enriched, amount = ingredientAmount },
                    additionalIngredient
                },
                results = {
                    { name = config.itemNames.pellets, amount = resultAmount },
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

            
            local energy = (energyTable and energyTable.pelletsToMolten) or 6.4
            local resultAmount = (ratio and ratio.pelletsToMolten.results) or 2
            local ingredientAmount = (ratio and ratio.pelletsToMolten.ingredients) or 120
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
                    { name = config.itemNames.pellets, amount = ingredientAmount },
                    { type = "fluid", name = "se-pyroflux", amount = 0.25 }
                },
                results = {
                    { type = "fluid", name = config.itemNames.molten, amount = resultAmount  },
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