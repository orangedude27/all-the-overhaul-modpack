-- Entities

data.raw["assembling-machine"]["5d-electric-furnace-02"].crafting_speed = 3


-- Recipes

local Recipe = require('__jalm__/stdlib/data/recipe')

local recipe02 = Recipe("5d-electric-furnace-02")
local recipe03 = Recipe("5d-electric-furnace-03")
local recipe04 = Recipe("5d-electric-furnace-04")
local recipe05 = Recipe("5d-electric-furnace-05")
local recipe06 = Recipe("5d-electric-furnace-06")
local recipe07 = Recipe("5d-electric-furnace-07")
local recipe08 = Recipe("5d-electric-furnace-08")
local recipe09 = Recipe("5d-electric-furnace-09")
local recipe10 = Recipe("5d-electric-furnace-10")

recipe02:add_ingredient({ "solder", 8 })
recipe02:add_ingredient({ "temperature-sensor", 1 })
recipe02:add_ingredient({ "hv-power-regulator", 1 })
recipe02:replace_ingredient("advanced-circuit", { "se-heat-shielding", 10 })

recipe03:add_ingredient({ "solder", 8 })
recipe03:add_ingredient({ "temperature-sensor", 1 })
recipe03:add_ingredient({ "hv-power-regulator", 1 })
recipe03:add_ingredient({ "el_energy_crystal_charged", 1 })
recipe03:replace_ingredient("steel-plate", { "kr-imersium-plate", 9 })
recipe03:replace_ingredient("advanced-circuit", { "se-heat-shielding", 10 })

recipe04:add_ingredient({ "solder", 8 })
recipe04:add_ingredient({ "temperature-sensor", 1 })
recipe04:add_ingredient({ "hv-power-regulator", 1 })
recipe04:add_ingredient({ "fi_energy_crystal_charged", 1 })
recipe04:replace_ingredient("steel-plate", { "se-heavy-girder", 9 })
recipe04:replace_ingredient("advanced-circuit", { "se-heat-shielding", 10 })

recipe05:add_ingredient({ "solder", 8 })
recipe05:add_ingredient({ "temperature-sensor", 1 })
recipe05:add_ingredient({ "hv-power-regulator", 1 })
recipe05:add_ingredient({ "fu_energy_charged_crystal", 1 })
recipe05:replace_ingredient("speed-module", { "fu_TIM", 5 })
recipe05:replace_ingredient("steel-plate", { "se-heavy-girder", 9 })
recipe05:replace_ingredient("advanced-circuit", { "se-heat-shielding", 10 })

recipe06:add_ingredient({ "solder", 8 })
recipe06:add_ingredient({ "temperature-sensor", 1 })
recipe06:add_ingredient({ "hv-power-regulator", 1 })
recipe06:add_ingredient({ "fu_energy_charged_crystal", 1 })
recipe06:replace_ingredient("productivity-module", { "fu_TIM", 5 })
recipe06:replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 10 })
recipe06:replace_ingredient("advanced-circuit", { "se-heat-shielding", 10 })

recipe07:add_ingredient({ "solder", 8 })
recipe07:add_ingredient({ "temperature-sensor", 1 })
recipe07:add_ingredient({ "hv-power-regulator", 1 })
recipe07:add_ingredient({ "fu_energy_charged_crystal", 1 })
recipe07:replace_ingredient("speed-module-2", { "fu_TIM", 5 })
recipe07:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 10 })
recipe07:replace_ingredient("advanced-circuit", { "se-heat-shielding", 10 })

recipe08:add_ingredient({ "solder", 8 })
recipe08:add_ingredient({ "temperature-sensor", 1 })
recipe08:add_ingredient({ "kr-ai-core", 1 })
recipe08:add_ingredient({ "fu_energy_charged_crystal", 1 })
recipe08:replace_ingredient("productivity-module-2", { "fu_TIM", 5 })
recipe08:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 10 })
recipe08:replace_ingredient("low-density-structure", { "se-heat-shielding", 10 })

recipe09:add_ingredient({ "solder", 8 })
recipe09:add_ingredient({ "temperature-sensor", 1 })
recipe09:add_ingredient({ "kr-ai-core", 1 })
recipe09:add_ingredient({ "fu_energy_charged_crystal", 1 })
recipe09:replace_ingredient("speed-module-3", { "se-nanomaterial", 5 })
recipe09:replace_ingredient("steel-plate", { "se-heavy-assembly", 10 })
recipe09:replace_ingredient("low-density-structure", { "se-heat-shielding", 10 })

recipe10:add_ingredient({ "solder", 8 })
recipe10:add_ingredient({ "temperature-sensor", 1 })
recipe10:add_ingredient({ "kr-ai-core", 1 })
recipe10:add_ingredient({ "se-naquium-cube", 1 })
recipe10:replace_ingredient("productivity-module-3", { "se-nanomaterial", 5 })
recipe10:replace_ingredient("steel-plate", { "se-heavy-assembly", 10 })
recipe10:replace_ingredient("low-density-structure", { "se-heat-shielding", 10 })

-- K2
atom.util.Recipe("kr-advanced-furnace").addIngredient("5d-electric-furnace-03", 1)


-- Technologies

-- 02
atom.util.Technology("advanced-material-processing-3").addIngredient({ "productivity-science-pack" })
-- 03
data.raw.technology["advanced-material-processing-4"].unit.count = 300
atom.util.Technology("advanced-material-processing-4").removePrerequisite({ "production-science-pack" })
atom.util.Technology("advanced-material-processing-4").addPrerequisite("kr-optimization-tech-card")
atom.util.Technology("advanced-material-processing-4").addIngredient({ "kr-optimization-tech-card" })
-- 04
data.raw.technology["advanced-material-processing-5"].unit.count = 400
atom.util.Technology("advanced-material-processing-5").addPrerequisite({ "se-heavy-girder", "se-energy-science-pack-1" })
atom.util.Technology("advanced-material-processing-5").addIngredient({ "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" })
-- 05
data.raw.technology["advanced-material-processing-6"].unit.count = 500
atom.util.Technology("advanced-material-processing-6").addPrerequisite("fu_TIM_tech")
atom.util.Technology("advanced-material-processing-6").addIngredient({ "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1", "fusion-science-pack-1" })
-- 06
data.raw.technology["advanced-material-processing-7"].unit.count = 600
atom.util.Technology("advanced-material-processing-7").addPrerequisite({ "se-aeroframe-scaffold", "se-material-science-pack-2", "se-energy-science-pack-2", "space-fusion-science-pack-2" })
atom.util.Technology("advanced-material-processing-7").addIngredient({ "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "fusion-science-pack-2", "se-astronomic-science-pack-2" })
-- 07
data.raw.technology["advanced-material-processing-8"].unit.count = 700
atom.util.Technology("advanced-material-processing-8").addPrerequisite({ "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-energy-science-pack-3", "space-fusion-science-pack-3" })
atom.util.Technology("advanced-material-processing-8").removeIngredient({ "se-material-science-pack-1" })
atom.util.Technology("advanced-material-processing-8").addIngredient({ "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "fusion-science-pack-3", "se-astronomic-science-pack-3" })
-- 08
data.raw.technology["advanced-material-processing-9"].unit.count = 800
atom.util.Technology("advanced-material-processing-9").removePrerequisite({ "utility-science-pack" })
atom.util.Technology("advanced-material-processing-9").addPrerequisite({ "kr-ai-core", "hcp-circuit" })
atom.util.Technology("advanced-material-processing-9").removeIngredient({ "se-material-science-pack-2" })
atom.util.Technology("advanced-material-processing-9").addIngredient({ "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-energy-science-pack-3", "fusion-science-pack-3", "se-astronomic-science-pack-3" })
-- 09
data.raw.technology["advanced-material-processing-10"].unit.count = 900
atom.util.Technology("advanced-material-processing-10").addPrerequisite({ "se-nanomaterial", "space-fusion-science-pack-4", "se-heavy-assembly" })
atom.util.Technology("advanced-material-processing-10").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-4", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "fusion-science-pack-4" })
-- 10
data.raw.technology["advanced-material-processing-11"].unit.count = 1000
atom.util.Technology("advanced-material-processing-11").addPrerequisite("se-naquium-cube")
atom.util.Technology("advanced-material-processing-11").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "fusion-science-pack-4", "se-deep-space-science-pack-1" })