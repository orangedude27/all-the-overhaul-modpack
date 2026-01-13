local Recipe = require('__jalm__/stdlib/data/recipe')

-- Fix Portable fusion reactor recipe
bobmods.lib.recipe.remove_ingredient("fission-reactor-equipment", "se-fusion-test-data")
bobmods.lib.recipe.add_new_ingredient("fission-reactor-equipment", { "fusion-stable-data", 50 })
if mods["RampantArsenal"] then
    -- Portable Fusion Reactor MK2
    bobmods.lib.recipe.add_new_ingredient("mk3-generator-rampant-arsenal", { "fusion-speed-data", 50 })
    -- Portable Nuclear Reactor
    bobmods.lib.recipe.add_new_ingredient("nuclear-generator-rampant-arsenal", { "fusion-accuracy-data", 50 })
end

bobmods.lib.recipe.remove_ingredient("kr-filtration-plant", "kr-automation-core")
atom.util.Recipe("kr-filtration-plant").replaceOrAddIngredient("basic-chemical-plant", "t0-filtration-plant", 1)
atom.util.Recipe("kr-filtration-plant").replaceOrAddIngredient("flow-controller", "advanced-multi-cylinder-engine", 2)
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-carbide", 5 })
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-plate", 20 })

bobmods.lib.recipe.remove_ingredient("kr-electrolysis-plant", "kr-automation-core")
atom.util.Recipe("kr-electrolysis-plant").replaceOrAddIngredient("graphite", "t0-electrolysis-plant", 1)
atom.util.Recipe("kr-electrolysis-plant").replaceOrAddIngredient("flow-controller", "advanced-multi-cylinder-engine", 2)
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "tungsten-carbide", 5 })
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "hv-power-regulator", 5 })

Recipe("electronic-circuit"):change_category("crafting")
Recipe("processing-unit"):change_category("crafting-with-fluid")
Recipe("rocket-control-unit"):change_category("crafting")