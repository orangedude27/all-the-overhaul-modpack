local Recipe = require('__jalm__/stdlib/data/recipe')

-- Fix Portable fusion reactor recipe
atom.util.Recipe("fission-reactor-equipment").removeIngredient("se-fusion-test-data")
atom.util.Recipe("fission-reactor-equipment").addIngredient("fusion-stable-data", 50)
if mods["RampantArsenal"] then
    -- Portable Fusion Reactor MK2
    atom.util.Recipe("mk3-generator-rampant-arsenal").addIngredient("fusion-speed-data", 50)
    -- Portable Nuclear Reactor
    atom.util.Recipe("nuclear-generator-rampant-arsenal").addIngredient("fusion-accuracy-data", 50)
end

atom.util.Recipe("kr-filtration-plant").removeIngredient("kr-automation-core")
atom.util.Recipe("kr-filtration-plant").replaceOrAddIngredient("basic-chemical-plant", "t0-filtration-plant", 1)
atom.util.Recipe("kr-filtration-plant").replaceOrAddIngredient("flow-controller", "advanced-multi-cylinder-engine", 2)
atom.util.Recipe("kr-filtration-plant").replaceOrAddIngredient(nil, "tungsten-carbide", 5)
atom.util.Recipe("kr-filtration-plant").replaceOrAddIngredient(nil, "tungsten-plate", 20)

atom.util.Recipe("kr-electrolysis-plant").removeIngredient("kr-automation-core")
atom.util.Recipe("kr-electrolysis-plant").replaceOrAddIngredient("graphite", "t0-electrolysis-plant", 1)
atom.util.Recipe("kr-electrolysis-plant").replaceOrAddIngredient("flow-controller", "advanced-multi-cylinder-engine", 2)
atom.util.Recipe("kr-electrolysis-plant").replaceOrAddIngredient(nil, "tungsten-carbide", 5)
atom.util.Recipe("kr-electrolysis-plant").replaceOrAddIngredient(nil, "hv-power-regulator", 5)

Recipe("electronic-circuit"):change_category("crafting")
Recipe("processing-unit"):change_category("crafting-with-fluid")
Recipe("rocket-control-unit"):change_category("crafting")