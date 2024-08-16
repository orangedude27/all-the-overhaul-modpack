-- Entities

for i = 2, 10 do
    table.insert(data.raw["assembling-machine"]["5d-chemical-plant-" .. string.format("%02d", i)].crafting_categories, "basic-chemistry")
end


-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

local recipe02 = Recipe("5d-chemical-plant-02")
local recipe03 = Recipe("5d-chemical-plant-03")
local recipe04 = Recipe("5d-chemical-plant-04")
local recipe05 = Recipe("5d-chemical-plant-05")
local recipe06 = Recipe("5d-chemical-plant-06")
local recipe07 = Recipe("5d-chemical-plant-07")
local recipe08 = Recipe("5d-chemical-plant-08")
local recipe09 = Recipe("5d-chemical-plant-09")
local recipe10 = Recipe("5d-chemical-plant-10")

recipe02:replace_ingredient("steel-plate", { "tungsten-plate", 15 })
recipe02:replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 5 })
recipe02:replace_ingredient("electronic-circuit", { "advanced-circuit", 5 })
recipe02:add_ingredient({ "advanced-multi-cylinder-engine", 2 })
recipe02:add_ingredient({ "fi_materials_glass", 10 })

recipe03:add_ingredient({ "cermet", 2 })
recipe03:add_ingredient({ "advanced-multi-cylinder-engine", 4 })
recipe03:add_ingredient({ "fi_materials_glass", 10 })
recipe03:replace_ingredient("electronic-circuit", { "processing-unit", 5 })
recipe03:replace_ingredient("steel-plate", { "imersium-beam", 15 })
recipe03:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe03:replace_ingredient("pipe", { "kr-steel-pipe", 10 })
recipe03:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe04:add_ingredient({ "cermet", 2 })
recipe04:add_ingredient({ "advanced-multi-cylinder-engine", 6 })
recipe04:add_ingredient({ "fi_materials_glass", 10 })
recipe04:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 5 })
recipe04:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe04:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe04:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe04:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })

recipe05:add_ingredient({ "cermet", 2 })
recipe05:add_ingredient({ "advanced-multi-cylinder-engine", 8 })
recipe05:add_ingredient({ "fi_materials_glass", 10 })
recipe05:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 5 })
recipe05:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe05:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe05:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe05:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
recipe05:replace_ingredient("speed-module", { "se-bioscrubber", 10 })

recipe06:add_ingredient({ "se-aeroframe-scaffold", 10 })
recipe06:add_ingredient({ "advanced-multi-cylinder-engine", 10 })
recipe06:add_ingredient({ "fi_materials_glass", 10 })
recipe06:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 5 })
recipe06:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe06:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe06:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe06:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
recipe06:replace_ingredient("productivity-module", { "se-bioscrubber", 10 })

recipe07:add_ingredient({ "advanced-multi-cylinder-engine", 10 })
recipe07:add_ingredient({ "fi_materials_glass", 10 })
recipe07:replace_ingredient("low-density-structure", { "se-aeroframe-bulkhead", 10 })
recipe07:replace_ingredient("advanced-circuit", { "advanced-processing-unit", 5 })
recipe07:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe07:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe07:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe07:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
recipe07:replace_ingredient("speed-module-2", { "se-bioscrubber", 10 })

recipe08:add_ingredient({ "ai-core", 1 })
recipe08:add_ingredient({ "advanced-multi-cylinder-engine", 10 })
recipe08:add_ingredient({ "fi_materials_glass", 10 })
recipe08:replace_ingredient("low-density-structure", { "se-aeroframe-bulkhead", 10 })
recipe08:replace_ingredient("advanced-circuit", { "gr_materials_circuit", 10 })
recipe08:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe08:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe08:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe08:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
recipe08:replace_ingredient("productivity-module-2", { "se-bioscrubber", 10 })

recipe09:add_ingredient({ "ai-core", 1 })
recipe09:add_ingredient({ "advanced-multi-cylinder-engine", 10 })
recipe09:add_ingredient({ "fi_materials_glass", 10 })
recipe09:replace_ingredient("low-density-structure", { "se-aeroframe-bulkhead", 10 })
recipe09:replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
recipe09:replace_ingredient("steel-plate", { "se-nanomaterial", 10 })
recipe09:replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 10 })
recipe09:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe09:replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
recipe09:replace_ingredient("speed-module-3", { "se-bioscrubber", 10 })

recipe10:add_ingredient({ "ai-core", 1 })
recipe10:add_ingredient({ "advanced-multi-cylinder-engine", 10 })
recipe10:add_ingredient({ "fi_materials_glass", 10 })
recipe10:replace_ingredient("low-density-structure", { "se-aeroframe-bulkhead", 10 })
recipe10:replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
recipe10:replace_ingredient("steel-plate", { "se-nanomaterial", 10 })
recipe10:replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 10 })
recipe10:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe10:replace_ingredient("tungsten-carbide", { "se-naquium-cube", 1 })
recipe10:replace_ingredient("productivity-module-3", { "se-bioscrubber", 10 })

-- K2
atom.util.Recipe("kr-advanced-chemical-plant").addIngredient("5d-chemical-plant-04", 1)


-- Technologies

local util = require("_data-util")

-- 02
data.raw.technology["5d-chemical-plant-1"].unit.count = 200
util.tech_add_prerequisites("5d-chemical-plant-1", { "advanced-multi-cylinder-engine", "fi_glass_tech" })
util.tech_add_ingredients("5d-chemical-plant-1", { "chemical-science-pack" }, false)
-- 03
data.raw.technology["5d-chemical-plant-2"].unit.count = 300
util.tech_remove_prerequisites("5d-chemical-plant-2", { "chemical-science-pack" })
util.tech_add_prerequisites("5d-chemical-plant-2", { "kr-optimization-tech-card", "cobalt-carbide" })
util.tech_remove_ingredients("5d-chemical-plant-2", { "basic-tech-card", "production-science-pack" })
util.tech_add_ingredients("5d-chemical-plant-2", { "chemical-science-pack", "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card" }, false)
-- 04
data.raw.technology["5d-chemical-plant-3"].unit.count = 400
util.tech_add_prerequisites("5d-chemical-plant-3", { "se-heavy-girder", "se-biological-science-pack-1" })
util.tech_add_ingredients("5d-chemical-plant-3", { "se-rocket-science-pack", "space-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-biological-science-pack-1" }, false)
-- 05
data.raw.technology["5d-chemical-plant-4"].unit.count = 500
util.tech_add_prerequisites("5d-chemical-plant-4", "se-bioscrubber")
util.tech_add_ingredients("5d-chemical-plant-4", { "production-science-pack", "utility-science-pack", "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-biological-science-pack-1" }, false)
-- 06
data.raw.technology["5d-chemical-plant-5"].unit.count = 600
util.tech_remove_prerequisites("5d-chemical-plant-5", { "production-science-pack" })
util.tech_add_prerequisites("5d-chemical-plant-5", { "se-aeroframe-scaffold", "se-heavy-bearing", "se-biological-science-pack-2" })
util.tech_add_ingredients("5d-chemical-plant-5", { "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-biological-science-pack-2", "se-astronomic-science-pack-2" }, false)
-- 07
data.raw.technology["5d-chemical-plant-6"].unit.count = 700
util.tech_add_prerequisites("5d-chemical-plant-6", { "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-biological-science-pack-3" })
util.tech_remove_ingredients("5d-chemical-plant-6", { "se-material-science-pack-1" })
util.tech_add_ingredients("5d-chemical-plant-6", { "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 08
data.raw.technology["5d-chemical-plant-7"].unit.count = 800
util.tech_remove_prerequisites("5d-chemical-plant-7", { "utility-science-pack" })
util.tech_add_prerequisites("5d-chemical-plant-7", { "kr-ai-core", "hcp-circuit" })
util.tech_remove_ingredients("5d-chemical-plant-7", { "se-material-science-pack-2" })
util.tech_add_ingredients("5d-chemical-plant-7", { "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 09
data.raw.technology["5d-chemical-plant-8"].unit.count = 900
util.tech_remove_ingredients("5d-chemical-plant-8", { "se-material-science-pack-3" })
util.tech_add_prerequisites("5d-chemical-plant-8", "se-nanomaterial", "se-heavy-assembly")
util.tech_add_ingredients("5d-chemical-plant-8", { "kr-optimization-tech-card", "se-material-science-pack-4", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" }, false)
-- 10
data.raw.technology["5d-chemical-plant-9"].unit.count = 1000
util.tech_add_prerequisites("5d-chemical-plant-9", "se-naquium-cube")
util.tech_add_ingredients("5d-chemical-plant-9", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" }, false)
