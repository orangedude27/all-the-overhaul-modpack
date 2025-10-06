-- Entities

local entity03 = data.raw["assembling-machine"]["assembling-machine-3"]
entity03.next_upgrade = "5d-assembling-machine-04"


-- Recipes

local Recipe = require('__jalm__/stdlib/data/recipe')

local recipe04 = Recipe("5d-assembling-machine-04")
local recipe05 = Recipe("5d-assembling-machine-05")
local recipe06 = Recipe("5d-assembling-machine-06")
local recipe07 = Recipe("5d-assembling-machine-07")
local recipe08 = Recipe("5d-assembling-machine-08")
local recipe09 = Recipe("5d-assembling-machine-09")
local recipe10 = Recipe("5d-assembling-machine-10")

recipe04:add_ingredient({ "solder", 8 })
recipe04:add_ingredient({ "hv-power-regulator", 1 })
recipe04:replace_ingredient("steel-plate", { "nitinol-plate", 9 })
recipe04:replace_ingredient("kr-steel-gear-wheel", { "kr-imersium-gear-wheel", 8 })
recipe04:replace_ingredient("productivity-module", { "cermet", 2 })

recipe05:add_ingredient({ "solder", 8 })
recipe05:add_ingredient({ "hv-power-regulator", 1 })
recipe05:replace_ingredient("titanium-plate", { "se-heavy-girder", 9 })
recipe05:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 8 })
recipe05:replace_ingredient("steel-plate", { "cermet", 2 })
recipe05:replace_ingredient("speed-module-2", { "processing-unit", 5 })
recipe05:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe06:add_ingredient({ "solder", 8 })
recipe06:add_ingredient({ "hv-power-regulator", 1 })
recipe06:replace_ingredient("titanium-plate", { "kr-imersium-beam", 9 })
recipe06:replace_ingredient("iron-gear-wheel", { "se-heavy-bearing", 8 })
recipe06:replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 20 })
recipe06:replace_ingredient("productivity-module-2", { "advanced-processing-unit", 5 })
recipe06:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe07:add_ingredient({ "solder", 8 })
recipe07:add_ingredient({ "hv-power-regulator", 1 })
recipe07:add_ingredient({ "se-heavy-bearing", 8 })
recipe07:add_ingredient({ "se-aeroframe-bulkhead", 10 })
recipe07:replace_ingredient("titanium-plate", { "kr-imersium-beam", 9 })
recipe07:replace_ingredient("speed-module-3", { "advanced-processing-unit", 10 })
recipe07:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe08:add_ingredient({ "solder", 8 })
recipe08:add_ingredient({ "kr-ai-core", 1 })
recipe08:add_ingredient({ "se-heavy-bearing", 8 })
recipe08:add_ingredient({ "se-aeroframe-bulkhead", 10 })
recipe08:replace_ingredient("titanium-plate", { "kr-imersium-beam", 9 })
recipe08:replace_ingredient("productivity-module-3", { "gr_materials_circuit", 10 })
recipe08:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe09:add_ingredient({ "solder", 8 })
recipe09:add_ingredient({ "kr-ai-core", 1 })
recipe09:add_ingredient({ "se-heavy-bearing", 8 })
recipe09:add_ingredient({ "se-aeroframe-bulkhead", 10 })
recipe09:replace_ingredient("speed-module-3", { "se-nanomaterial", 10 })
recipe09:replace_ingredient("low-density-structure", { "se-heavy-assembly", 10 })
recipe09:replace_ingredient("processing-unit", { "gr_materials_circuit", 15 })
recipe09:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe10:add_ingredient({ "solder", 8 })
recipe10:add_ingredient({ "kr-ai-core", 1 })
recipe10:add_ingredient({ "se-heavy-bearing", 8 })
recipe10:add_ingredient({ "se-aeroframe-bulkhead", 10 })
recipe10:replace_ingredient("productivity-module-3", { "se-nanomaterial", 10 })
recipe10:replace_ingredient("low-density-structure", { "se-heavy-assembly", 10 })
recipe10:replace_ingredient("processing-unit", { "gr_materials_circuit", 20 })
recipe10:replace_ingredient("tungsten-carbide", { "se-naquium-cube", 1 })

-- K2
local advancedAssembler = atom.util.Recipe("kr-advanced-assembling-machine")
advancedAssembler.replaceIngredient("assembling-machine-3", "5d-assembling-machine-06", 2)
advancedAssembler.replaceIngredient("electric-furnace", "5d-electric-furnace-03", 2)

-- SE
table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-04"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-05"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-06"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-07"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-08"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-09"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-10"].crafting_categories, "crafting-or-electromagnetics")


-- Technologies

local util = require("_data-util")

-- 04
data.raw.technology["automation-4"].unit.count = 400
util.tech_remove_prerequisites("automation-4", { "production-science-pack" })
util.tech_add_prerequisites("automation-4", "kr-optimization-tech-card")
util.tech_add_ingredients("automation-4", { "space-science-pack", "kr-optimization-tech-card" }, false)
-- 05
data.raw.technology["automation-5"].unit.count = 500
util.tech_add_prerequisites("automation-5", { "se-heavy-girder", "se-energy-science-pack-1" })
util.tech_add_ingredients("automation-5", { "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" }, false)
-- 06
data.raw.technology["automation-6"].unit.count = 600
util.tech_add_prerequisites("automation-6", { "se-aeroframe-scaffold", "se-heavy-bearing", "se-energy-science-pack-2" })
util.tech_remove_ingredients("automation-6", { "se-material-science-pack-1" })
util.tech_add_ingredients("automation-6", { "utility-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "se-astronomic-science-pack-2" }, false)
-- 07
data.raw.technology["automation-7"].unit.count = 700
util.tech_remove_prerequisites("automation-7", { "utility-science-pack" })
util.tech_add_prerequisites("automation-7", { "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-energy-science-pack-3" })
util.tech_remove_ingredients("automation-7", { "se-material-science-pack-2" })
util.tech_add_ingredients("automation-7", { "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 08
data.raw.technology["automation-8"].unit.count = 800
util.tech_add_prerequisites("automation-8", { "kr-ai-core", "hcp-circuit" })
util.tech_add_ingredients("automation-8", { "kr-optimization-tech-card", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 09
data.raw.technology["automation-9"].unit.count = 900
util.tech_add_prerequisites("automation-9", { "se-nanomaterial", "se-heavy-assembly" })
util.tech_add_ingredients("automation-9", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" }, false)
-- 10
data.raw.technology["automation-10"].unit.count = 1000
util.tech_add_prerequisites("automation-10", "se-naquium-cube")
util.tech_add_ingredients("automation-10", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" }, false)
