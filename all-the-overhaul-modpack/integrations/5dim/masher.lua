-- Recipes

local Recipe = require('__jalm__/stdlib/data/recipe')

local recipe01 = Recipe("5d-masher-01")
local recipe02 = Recipe("5d-masher-02")
local recipe03 = Recipe("5d-masher-03")
local recipe04 = Recipe("5d-masher-04")
local recipe05 = Recipe("5d-masher-05")
local recipe06 = Recipe("5d-masher-06")
local recipe07 = Recipe("5d-masher-07")
local recipe08 = Recipe("5d-masher-08")
local recipe09 = Recipe("5d-masher-09")
local recipe10 = Recipe("5d-masher-10")

recipe01:replace_ingredient("electronic-circuit", { "electric-motor", 2 })
recipe01:replace_ingredient("steel-plate", { "articulated-mechanism", 5 })
recipe01:replace_ingredient("lead-plate", { "invar-plate", 2 })
recipe01:add_ingredient({ "aluminum-plate", 4 })
recipe01:add_ingredient({ "stone-brick", 4 })

recipe02:replace_ingredient("steel-plate", { "motorized-articulator", 5 })
recipe02:replace_ingredient("iron-gear-wheel", { "kr-steel-gear-wheel", 10 })
recipe02:add_ingredient({ "gearbox", 2 })
recipe02:add_ingredient({ "diamond", 8 })
recipe02:add_ingredient({ "stone-brick", 4 })

recipe03:replace_ingredient("advanced-circuit", { "processing-unit", 4 })
recipe03:replace_ingredient("steel-plate", { "motorized-articulator", 5 })
recipe03:replace_ingredient("iron-gear-wheel", { "kr-steel-gear-wheel", 10 })
recipe03:add_ingredient({ "advanced-gearbox", 2 })
recipe03:add_ingredient({ "nitinol-plate", 4 })
recipe03:add_ingredient({ "concrete", 4 })

recipe04:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 4 })
recipe04:replace_ingredient("steel-plate", { "complex-joint", 5 })
recipe04:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe04:add_ingredient({ "advanced-gearbox", 2 })
recipe04:add_ingredient({ "kr-imersium-plate", 4 })
recipe04:add_ingredient({ "concrete", 4 })

recipe05:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 4 })
recipe05:replace_ingredient("steel-plate", { "complex-joint", 5 })
recipe05:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe05:replace_ingredient("speed-module", { "advanced-gearbox", 2 })
recipe05:add_ingredient({ "se-heavy-girder", 4 })
recipe05:add_ingredient({ "concrete", 4 })

recipe06:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 4 })
recipe06:replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 5 })
recipe06:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe06:replace_ingredient("productivity-module", { "elite-gearbox", 2 })
recipe06:add_ingredient({ "se-heavy-girder", 4 })
recipe06:add_ingredient({ "concrete", 4 })

recipe07:replace_ingredient("processing-unit", { "advanced-processing-unit", 4 })
recipe07:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 5 })
recipe07:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe07:replace_ingredient("speed-module-2", { "elite-gearbox", 2 })
recipe07:add_ingredient({ "se-heavy-girder", 4 })
recipe07:add_ingredient({ "concrete", 4 })

recipe08:replace_ingredient("processing-unit", { "gr_materials_circuit", 4 })
recipe08:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 5 })
recipe08:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe08:replace_ingredient("productivity-module-2", { "elite-gearbox", 2 })
recipe08:add_ingredient({ "kr-ai-core", 1 })
recipe08:add_ingredient({ "se-heavy-girder", 4 })
recipe08:add_ingredient({ "concrete", 4 })

recipe09:replace_ingredient("processing-unit", { "gr_materials_circuit", 4 })
recipe09:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 5 })
recipe09:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe09:replace_ingredient("speed-module-3", { "se-heavy-assembly", 2 })
recipe09:replace_ingredient("low-density-structure", { "se-nanomaterial", 4 })
recipe09:add_ingredient({ "kr-ai-core", 1 })
recipe09:add_ingredient({ "concrete", 4 })

recipe10:replace_ingredient("processing-unit", { "gr_materials_circuit", 4 })
recipe10:replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 5 })
recipe10:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe10:replace_ingredient("productivity-module-3", { "se-heavy-assembly", 2 })
recipe10:replace_ingredient("low-density-structure", { "se-nanomaterial", 4 })
recipe10:add_ingredient({ "kr-ai-core", 1 })
recipe10:add_ingredient({ "se-naquium-cube", 1 })


-- Technologies

-- 01
data.raw.technology["5d-masher-1"].unit.count = 100
atom.util.Technology("5d-masher-1").removePrerequisite({ "advanced-material-processing-2" })
atom.util.Technology("5d-masher-1").addPrerequisite({ "invar-processing" })
atom.util.Technology("5d-masher-1").removeIngredient({ "logistic-science-pack", "chemical-science-pack" })
atom.util.Technology("5d-masher-1").addIngredient({ "kr-basic-tech-card" })
-- 02
data.raw.technology["5d-masher-2"].unit.count = 200
atom.util.Technology("5d-masher-2").removePrerequisite({ "advanced-material-processing-3" })
atom.util.Technology("5d-masher-2").addPrerequisite({ "diamond-processing" })
-- 03
data.raw.technology["5d-masher-3"].unit.count = 300
atom.util.Technology("5d-masher-3").removePrerequisite({ "advanced-material-processing-4" })
atom.util.Technology("5d-masher-3").addPrerequisite({ "nitinol-processing", "processing-unit", "productivity-science-pack" })
atom.util.Technology("5d-masher-3").removeIngredient({ "production-science-pack", "space-science-pack" })
atom.util.Technology("5d-masher-3").addIngredient({ "productivity-science-pack" })
-- 04
data.raw.technology["5d-masher-4"].unit.count = 400
atom.util.Technology("5d-masher-4").removePrerequisite({ "production-science-pack", "advanced-material-processing-5" })
atom.util.Technology("5d-masher-4").addPrerequisite("kr-optimization-tech-card")
atom.util.Technology("5d-masher-4").removeIngredient({ "production-science-pack" })
atom.util.Technology("5d-masher-4").addIngredient({ "space-science-pack", "kr-optimization-tech-card" })
-- 05
data.raw.technology["5d-masher-5"].unit.count = 500
atom.util.Technology("5d-masher-5").removePrerequisite({ "advanced-material-processing-6" })
atom.util.Technology("5d-masher-5").addPrerequisite({ "se-heavy-girder", "se-energy-science-pack-1" })
atom.util.Technology("5d-masher-5").addIngredient({ "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" })
-- 06
data.raw.technology["5d-masher-6"].unit.count = 600
atom.util.Technology("5d-masher-6").removePrerequisite({ "advanced-material-processing-7" })
atom.util.Technology("5d-masher-6").addPrerequisite({ "se-aeroframe-scaffold", "se-heavy-bearing", "se-energy-science-pack-2" })
atom.util.Technology("5d-masher-6").addIngredient({ "utility-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "se-astronomic-science-pack-2" })
-- 07
data.raw.technology["5d-masher-7"].unit.count = 700
atom.util.Technology("5d-masher-7").removePrerequisite({ "utility-science-pack", "advanced-material-processing-8" })
atom.util.Technology("5d-masher-7").addPrerequisite({ "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-energy-science-pack-3" })
atom.util.Technology("5d-masher-7").removeIngredient({ "se-material-science-pack-2" })
atom.util.Technology("5d-masher-7").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" })
-- 08
data.raw.technology["5d-masher-8"].unit.count = 800
atom.util.Technology("5d-masher-8").removePrerequisite({ "advanced-material-processing-9" })
atom.util.Technology("5d-masher-8").addPrerequisite({ "kr-ai-core", "hcp-circuit" })
atom.util.Technology("5d-masher-8").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" })
-- 09
data.raw.technology["5d-masher-9"].unit.count = 900
atom.util.Technology("5d-masher-9").removePrerequisite({ "advanced-material-processing-10" })
atom.util.Technology("5d-masher-9").addPrerequisite({ "se-nanomaterial", "se-heavy-assembly" })
atom.util.Technology("5d-masher-9").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" })
-- 10
data.raw.technology["5d-masher-10"].unit.count = 1000
atom.util.Technology("5d-masher-10").removePrerequisite({ "advanced-material-processing-11" })
atom.util.Technology("5d-masher-10").addPrerequisite("se-naquium-cube")
atom.util.Technology("5d-masher-10").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" })
