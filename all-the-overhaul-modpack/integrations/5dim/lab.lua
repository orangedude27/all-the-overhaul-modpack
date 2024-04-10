local util = require("_data-util")

-- Entities
data.raw["lab"]["5d-lab-03"].module_specification = {
    module_slots = 3, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}

-- SE
for i = 4, 10 do
    local lab_name = "5d-lab-" .. (i < 10 and "0" or "") .. i
    data.raw.lab[lab_name].se_allow_in_space = true
end


-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

local recipe02 = Recipe("5d-lab-02")
local recipe03 = Recipe("5d-lab-03")
local recipe04 = Recipe("5d-lab-04")
local recipe05 = Recipe("5d-lab-05")
local recipe06 = Recipe("5d-lab-06")
local recipe07 = Recipe("5d-lab-07")
local recipe08 = Recipe("5d-lab-08")
local recipe09 = Recipe("5d-lab-09")
local recipe10 = Recipe("5d-lab-10")

recipe02:replace_ingredient("transport-belt", { "glass", 10 })
recipe02:replace_ingredient("bakelite", { "zircaloy-4", 10 })

recipe03:add_ingredient({ "scanner", 5 })
recipe03:replace_ingredient("transport-belt", { "fi_materials_glass", 10 })
recipe03:replace_ingredient("bakelite", { "nitinol-plate", 10 })
recipe03:replace_ingredient("electronic-circuit", { "processing-unit", 10 })

recipe04:add_ingredient({ "scanner", 5 })
recipe04:replace_ingredient("fast-transport-belt", { "fi_materials_glass", 10 })
recipe04:replace_ingredient("steel-plate", { "imersium-plate", 10 })
recipe04:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 10 })
recipe04:replace_ingredient("5d-lab-03", { "biusart-lab", 1 })

recipe05:replace_ingredient("fast-transport-belt", { "fi_materials_glass", 10 })
recipe05:replace_ingredient("steel-plate", { "se-heavy-girder", 10 })
recipe05:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 10 })
recipe05:replace_ingredient("speed-module", { "scanner", 5 })

recipe06:replace_ingredient("fast-transport-belt", { "fi_materials_glass", 10 })
recipe06:replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 10 })
recipe06:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 10 })
recipe06:replace_ingredient("productivity-module", { "scanner", 5 })

recipe07:replace_ingredient("express-transport-belt", { "fi_materials_glass", 10 })
recipe07:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 10 })
recipe07:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 10 })
recipe07:replace_ingredient("speed-module-2", { "scanner", 5 })

recipe08:replace_ingredient("low-density-structure", { "ai-core", 1 })
recipe08:replace_ingredient("express-transport-belt", { "fi_materials_glass", 10 })
recipe08:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 10 })
recipe08:replace_ingredient("advanced-circuit", { "gr_materials_circuit", 10 })
recipe08:replace_ingredient("productivity-module-2", { "scanner", 5 })

recipe09:replace_ingredient("low-density-structure", { "ai-core", 1 })
recipe09:replace_ingredient("express-transport-belt", { "se-heavy-assembly", 10 })
recipe09:replace_ingredient("steel-plate", { "se-nanomaterial", 10 })
recipe09:replace_ingredient("advanced-circuit", { "gr_materials_circuit", 10 })
recipe09:replace_ingredient("speed-module-3", { "se-dynamic-emitter", 5 })

recipe10:replace_ingredient("low-density-structure", { "ai-core", 1 })
recipe10:replace_ingredient("express-transport-belt", { "se-heavy-assembly", 10 })
recipe10:replace_ingredient("steel-plate", { "se-nanomaterial", 10 })
recipe10:replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
recipe10:replace_ingredient("productivity-module-3", { "se-naquium-cube", 1 })

-- K2
util.replace_or_add_ingredient("biusart-lab", "lab", "5d-lab-03", 1, false)
bobmods.lib.recipe.add_new_ingredient("kr-singularity-lab", { "5d-lab-09", 10 })

-- SE
util.replace_or_add_ingredient("se-space-science-lab", "biusart-lab", "5d-lab-04", 10, false)
bobmods.lib.recipe.add_new_ingredient("se-nexus", { "5d-lab-10", 10 })

-- 248k
util.replace_or_add_ingredient("gr_lab_recipe", "lab", "5d-lab-10", 40, false)
util.replace_or_add_ingredient("fu_fusor_recipe", "lab", "5d-lab-04", 10, false)
util.replace_or_add_ingredient("fu_fusor_recipe", "low-density-structure", "heat-resistant-low-density-structure", 100, false)
util.replace_or_add_ingredient("gr_charger_recipe", "lab", "5d-lab-10", 10, false)
bobmods.lib.recipe.add_new_ingredient("gr_charger_recipe", { "kr-stabilizer-charging-station", 1 })


-- Technologies

-- 02
util.tech_remove_prerequisites("5d-lab-1", { "engine" })
util.tech_add_prerequisites("5d-lab-1", { "zirconia-processing" })
-- 03
data.raw.technology["5d-lab-2"].unit.count = 300
util.tech_add_prerequisites("5d-lab-2", { "nitinol-processing", "advanced-electronics-2", "scanner" })
util.tech_add_ingredients("5d-lab-2", { "chemical-science-pack" }, false)
-- 04
data.raw.technology["5d-lab-3"].unit.count = 400
util.tech_remove_prerequisites("5d-lab-3", { "chemical-science-pack", "5d-lab-2" })
util.tech_add_prerequisites("5d-lab-3", "kr-optimization-tech-card")
util.tech_add_ingredients("5d-lab-3", { "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card" }, false)
-- 05
data.raw.technology["5d-lab-4"].unit.count = 500
util.tech_add_prerequisites("5d-lab-4", { "se-heavy-girder", "se-energy-science-pack-1" })
util.tech_add_ingredients("5d-lab-4", { "se-rocket-science-pack", "space-science-pack", "utility-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" }, false)
-- 06
data.raw.technology["5d-lab-5"].unit.count = 600
util.tech_remove_prerequisites("5d-lab-5", { "production-science-pack" })
util.tech_add_prerequisites("5d-lab-5", { "se-aeroframe-scaffold", "se-material-science-pack-2", "se-energy-science-pack-2" })
util.tech_add_ingredients("5d-lab-5", { "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "se-astronomic-science-pack-2" }, false)
-- 07
data.raw.technology["5d-lab-6"].unit.count = 700
util.tech_add_prerequisites("5d-lab-6", { "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-energy-science-pack-3" })
util.tech_remove_ingredients("5d-lab-6", { "se-material-science-pack-1" })
util.tech_add_ingredients("5d-lab-6", { "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 08
data.raw.technology["5d-lab-7"].unit.count = 800
util.tech_remove_prerequisites("5d-lab-7", { "utility-science-pack" })
util.tech_add_prerequisites("5d-lab-7", { "kr-ai-core", "hcp-circuit" })
util.tech_remove_ingredients("5d-lab-7", { "se-material-science-pack-2" })
util.tech_add_ingredients("5d-lab-7", { "kr-optimization-tech-card", "se-biological-science-pack-3", "se-material-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 09
data.raw.technology["5d-lab-8"].unit.count = 900
util.tech_add_prerequisites("5d-lab-8", { "se-nanomaterial", "se-heavy-assembly" })
util.tech_remove_ingredients("5d-lab-8", { "se-material-science-pack-3" })
util.tech_add_ingredients("5d-lab-8", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-material-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" }, false)
-- 10
data.raw.technology["5d-lab-9"].unit.count = 1000
util.tech_add_prerequisites("5d-lab-9", "se-naquium-cube")
util.tech_add_ingredients("5d-lab-9", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" }, false)

-- SE
util.tech_add_prerequisites("se-space-science-lab", "5d-lab-3")
util.tech_add_prerequisites("se-nexus", "5d-lab-9")

-- 248K
util.tech_add_prerequisites("gr_lab_tech", "5d-lab-9")

-- K2
util.tech_add_prerequisites("kr-advanced-lab", "5d-lab-2")
util.tech_add_prerequisites("kr-singularity-lab", "5d-lab-8")