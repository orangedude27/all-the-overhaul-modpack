local atom_util = require("_data-util")
local Recipe = require('__jalm__/stdlib/data/recipe')


-- Fix Portable fusion reactor recipe
if mods["space-exploration"] then
    Recipe("fusion-reactor-equipment"):remove_ingredient("se-fusion-test-data")
    Recipe("fusion-reactor-equipment"):add_ingredient({ "fusion-stable-data", 50 })
    if mods["RampantArsenal"] then
        -- Portable Fusion Reactor MK2
        Recipe("mk3-generator-rampant-arsenal"):add_ingredient({ "fusion-speed-data", 50 })
        -- Portable Nuclear Reactor
        Recipe("nuclear-generator-rampant-arsenal"):add_ingredient({ "fusion-accuracy-data", 50 })
    end
end

if mods["Krastorio2"] then 
    Recipe("kr-filtration-plant"):remove_ingredient("automation-core")
    atom_util.replace_or_add_ingredient("kr-filtration-plant", "basic-chemical-plant", "t0-filtration-plant", 1, false)
    atom_util.replace_or_add_ingredient("kr-filtration-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
    Recipe("kr-filtration-plant"):add_ingredient({ "tungsten-carbide", 5 })
    Recipe("kr-filtration-plant"):add_ingredient({ "tungsten-plate", 20 })

    Recipe("kr-electrolysis-plant"):remove_ingredient("automation-core")
    atom_util.replace_or_add_ingredient("kr-electrolysis-plant", "graphite", "t0-electrolysis-plant", 1, false)
    atom_util.replace_or_add_ingredient("kr-electrolysis-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
    Recipe("kr-electrolysis-plant"):add_ingredient({ "tungsten-carbide", 5 })
    Recipe("kr-electrolysis-plant"):add_ingredient({ "hv-power-regulator", 20 })

    Recipe("electronic-circuit"):change_category("crafting")
    Recipe("processing-unit"):change_category("crafting-with-fluid")
    Recipe("rocket-control-unit"):change_category("crafting")
end