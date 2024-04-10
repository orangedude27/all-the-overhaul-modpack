-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

local recipe02 = Recipe("5d-oil-refinery-02")
local recipe03 = Recipe("5d-oil-refinery-03")
local recipe04 = Recipe("5d-oil-refinery-04")
local recipe05 = Recipe("5d-oil-refinery-05")
local recipe06 = Recipe("5d-oil-refinery-06")
local recipe07 = Recipe("5d-oil-refinery-07")
local recipe08 = Recipe("5d-oil-refinery-08")
local recipe09 = Recipe("5d-oil-refinery-09")
local recipe10 = Recipe("5d-oil-refinery-10")

recipe02:add_ingredient({ "advanced-multi-cylinder-engine", 4 })
recipe02:replace_ingredient("steel-plate", { "tungsten-plate", 15 })
recipe02:replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 10 })
recipe02:replace_ingredient("electronic-circuit", { "glass", 15 })

recipe03:add_ingredient({ "advanced-multi-cylinder-engine", 6 })
recipe03:replace_ingredient("steel-plate", { "imersium-beam", 15 })
recipe03:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe03:replace_ingredient("pipe", { "kr-steel-pipe", 10 })
recipe03:replace_ingredient("electronic-circuit", { "fi_materials_glass", 15 })

recipe04:add_ingredient({ "advanced-multi-cylinder-engine", 8 })
recipe04:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe04:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 10 })
recipe04:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe04:replace_ingredient("advanced-circuit", { "fi_materials_glass", 20 })

recipe05:replace_ingredient("speed-module", { "se-bioscrubber", 20 })
recipe05:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe05:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 20 })
recipe05:replace_ingredient("pipe", { "brass-pipe", 20 })
recipe05:replace_ingredient("advanced-circuit", { "fi_materials_glass", 30 })

recipe06:add_ingredient({ "se-aeroframe-scaffold", 50 })
recipe06:replace_ingredient("productivity-module", { "se-bioscrubber", 20 })
recipe06:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe06:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 30 })
recipe06:replace_ingredient("pipe", { "brass-pipe", 30 })
recipe06:replace_ingredient("advanced-circuit", { "fi_materials_glass", 40 })

recipe07:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe07:replace_ingredient("speed-module-2", { "se-bioscrubber", 20 })
recipe07:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe07:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 40 })
recipe07:replace_ingredient("pipe", { "brass-pipe", 40 })
recipe07:replace_ingredient("advanced-circuit", { "fi_materials_glass", 50 })

recipe08:add_ingredient({ "ai-core", 1 })
recipe08:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe08:replace_ingredient("productivity-module-2", { "se-bioscrubber", 20 })
recipe08:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe08:replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 50 })
recipe08:replace_ingredient("pipe", { "brass-pipe", 50 })
recipe08:replace_ingredient("advanced-circuit", { "fi_materials_glass", 60 })

recipe09:add_ingredient({ "ai-core", 1 })
recipe09:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe09:replace_ingredient("speed-module-3", { "se-bioscrubber", 20 })
recipe09:replace_ingredient("steel-plate", { "se-nanomaterial", 20 })
recipe09:replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 50 })
recipe09:replace_ingredient("pipe", { "brass-pipe", 50 })
recipe09:replace_ingredient("processing-unit", { "fi_materials_glass", 80 })

recipe10:add_ingredient({ "ai-core", 1 })
recipe10:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe10:replace_ingredient("speed-module-3", { "se-bioscrubber", 20 })
recipe10:replace_ingredient("steel-plate", { "se-nanomaterial", 20 })
recipe10:replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 50 })
recipe10:replace_ingredient("pipe", { "brass-pipe", 50 })
recipe10:replace_ingredient("processing-unit", { "se-naquium-cube", 1 })


-- Technologies

local util = require("_data-util")

-- 02
data.raw.technology["5d-oil-refinery-1"].unit.count = 200
util.tech_add_prerequisites("5d-oil-refinery-1", { "advanced-multi-cylinder-engine" })
util.tech_add_ingredients("5d-oil-refinery-1", { "chemical-science-pack" }, false)
-- 03
data.raw.technology["5d-oil-refinery-2"].unit.count = 300
util.tech_remove_prerequisites("5d-oil-refinery-2", { "production-science-pack" })
util.tech_add_prerequisites("5d-oil-refinery-2", "kr-optimization-tech-card")
util.tech_remove_ingredients("5d-oil-refinery-2", { "production-science-pack" })
util.tech_add_ingredients("5d-oil-refinery-2", { "chemical-science-pack", "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card" }, false)
-- 04
data.raw.technology["5d-oil-refinery-3"].unit.count = 400
util.tech_add_prerequisites("5d-oil-refinery-3", { "se-heavy-girder", "se-biological-science-pack-1" })
util.tech_add_ingredients("5d-oil-refinery-3", { "se-rocket-science-pack", "space-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-biological-science-pack-1" }, false)
-- 05
data.raw.technology["5d-oil-refinery-4"].unit.count = 500
util.tech_add_prerequisites("5d-oil-refinery-4", "se-bioscrubber")
util.tech_add_ingredients("5d-oil-refinery-4", { "production-science-pack", "utility-science-pack", "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-biological-science-pack-1" }, false)
-- 06
data.raw.technology["5d-oil-refinery-5"].unit.count = 600
util.tech_remove_prerequisites("5d-oil-refinery-5", { "production-science-pack" })
util.tech_add_prerequisites("5d-oil-refinery-5", { "se-aeroframe-scaffold", "se-material-science-pack-2", "se-biological-science-pack-2" })
util.tech_add_ingredients("5d-oil-refinery-5", { "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-biological-science-pack-2", "se-astronomic-science-pack-2" }, false)
-- 07
data.raw.technology["5d-oil-refinery-6"].unit.count = 700
util.tech_add_prerequisites("5d-oil-refinery-6", { "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-biological-science-pack-3" })
util.tech_remove_ingredients("5d-oil-refinery-6", { "se-material-science-pack-1" })
util.tech_add_ingredients("5d-oil-refinery-6", { "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 08
data.raw.technology["5d-oil-refinery-7"].unit.count = 800
util.tech_remove_prerequisites("5d-oil-refinery-7", { "utility-science-pack" })
util.tech_add_prerequisites("5d-oil-refinery-7", { "kr-ai-core", "hcp-circuit" })
util.tech_remove_ingredients("5d-oil-refinery-7", { "se-material-science-pack-2" })
util.tech_add_ingredients("5d-oil-refinery-7", { "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 09
data.raw.technology["5d-oil-refinery-8"].unit.count = 900
util.tech_remove_ingredients("5d-oil-refinery-8", { "se-material-science-pack-3" })
util.tech_add_prerequisites("5d-oil-refinery-8", "se-nanomaterial", "se-heavy-assembly")
util.tech_add_ingredients("5d-oil-refinery-8", { "kr-optimization-tech-card", "se-material-science-pack-4", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" }, false)
-- 10
data.raw.technology["5d-oil-refinery-9"].unit.count = 1000
util.tech_add_prerequisites("5d-oil-refinery-9", "se-naquium-cube")
util.tech_add_ingredients("5d-oil-refinery-9", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" }, false)
