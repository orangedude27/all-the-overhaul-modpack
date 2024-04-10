local atom_util = require("_data-util")
local Recipe = require('__stdlib__/stdlib/data/recipe')

-- Fix Portable fusion reactor recipe
bobmods.lib.recipe.remove_ingredient("fusion-reactor-equipment", "se-fusion-test-data")
bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment", { "fusion-stable-data", 50 })
if mods["RampantArsenal"] then
    -- Portable Fusion Reactor MK2
    bobmods.lib.recipe.add_new_ingredient("mk3-generator-rampant-arsenal", { "fusion-speed-data", 50 })
    -- Portable Nuclear Reactor
    bobmods.lib.recipe.add_new_ingredient("nuclear-generator-rampant-arsenal", { "fusion-accuracy-data", 50 })
end

bobmods.lib.recipe.remove_ingredient("kr-filtration-plant", "automation-core")
atom_util.replace_or_add_ingredient("kr-filtration-plant", "basic-chemical-plant", "t0-filtration-plant", 1, false)
atom_util.replace_or_add_ingredient("kr-filtration-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-carbide", 5 })
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-plate", 20 })

bobmods.lib.recipe.remove_ingredient("kr-electrolysis-plant", "automation-core")
atom_util.replace_or_add_ingredient("kr-electrolysis-plant", "graphite", "t0-electrolysis-plant", 1, false)
atom_util.replace_or_add_ingredient("kr-electrolysis-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "tungsten-carbide", 5 })
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "hv-power-regulator", 5 })

Recipe("electronic-circuit"):change_category("crafting")
Recipe("processing-unit"):change_category("crafting-with-fluid")
Recipe("rocket-control-unit"):change_category("crafting")