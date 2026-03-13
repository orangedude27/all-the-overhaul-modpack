-- Recipes

local Recipe = require('__jalm__/stdlib/data/recipe')

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
recipe02:replace_ingredient("iron-gear-wheel", { "kr-steel-gear-wheel", 10 })
recipe02:replace_ingredient("electronic-circuit", { "kr-glass", 15 })

recipe03:add_ingredient({ "advanced-multi-cylinder-engine", 6 })
recipe03:replace_ingredient("steel-plate", { "kr-imersium-beam", 15 })
recipe03:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe03:replace_ingredient("pipe", { "kr-steel-pipe", 10 })
recipe03:replace_ingredient("electronic-circuit", { "fi_glass", 15 })

recipe04:add_ingredient({ "advanced-multi-cylinder-engine", 8 })
recipe04:replace_ingredient("steel-plate", { "se-heavy-girder", 15 })
recipe04:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 10 })
recipe04:replace_ingredient("pipe", { "brass-pipe", 10 })
recipe04:replace_ingredient("advanced-circuit", { "fi_glass", 20 })

recipe05:replace_ingredient("speed-module", { "se-bioscrubber", 20 })
recipe05:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe05:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 20 })
recipe05:replace_ingredient("pipe", { "brass-pipe", 20 })
recipe05:replace_ingredient("advanced-circuit", { "fi_glass", 30 })

recipe06:add_ingredient({ "se-aeroframe-scaffold", 50 })
recipe06:replace_ingredient("productivity-module", { "se-bioscrubber", 20 })
recipe06:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe06:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 30 })
recipe06:replace_ingredient("pipe", { "brass-pipe", 30 })
recipe06:replace_ingredient("advanced-circuit", { "fi_glass", 40 })

recipe07:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe07:replace_ingredient("speed-module-2", { "se-bioscrubber", 20 })
recipe07:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe07:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 40 })
recipe07:replace_ingredient("pipe", { "brass-pipe", 40 })
recipe07:replace_ingredient("advanced-circuit", { "fi_glass", 50 })

recipe08:add_ingredient({ "kr-ai-core", 1 })
recipe08:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe08:replace_ingredient("productivity-module-2", { "se-bioscrubber", 20 })
recipe08:replace_ingredient("steel-plate", { "se-heavy-girder", 20 })
recipe08:replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 50 })
recipe08:replace_ingredient("pipe", { "brass-pipe", 50 })
recipe08:replace_ingredient("advanced-circuit", { "fi_glass", 60 })

recipe09:add_ingredient({ "kr-ai-core", 1 })
recipe09:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe09:replace_ingredient("speed-module-3", { "se-bioscrubber", 20 })
recipe09:replace_ingredient("steel-plate", { "se-nanomaterial", 20 })
recipe09:replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 50 })
recipe09:replace_ingredient("pipe", { "brass-pipe", 50 })
recipe09:replace_ingredient("processing-unit", { "fi_glass", 80 })

recipe10:add_ingredient({ "kr-ai-core", 1 })
recipe10:add_ingredient({ "se-aeroframe-bulkhead", 50 })
recipe10:replace_ingredient("speed-module-3", { "se-bioscrubber", 20 })
recipe10:replace_ingredient("steel-plate", { "se-nanomaterial", 20 })
recipe10:replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 50 })
recipe10:replace_ingredient("pipe", { "brass-pipe", 50 })
recipe10:replace_ingredient("processing-unit", { "se-naquium-cube", 1 })


-- Technologies

-- 02
data.raw.technology["5d-oil-refinery-1"].unit.count = 200
atom.util.Technology("5d-oil-refinery-1").addPrerequisite({ "advanced-multi-cylinder-engine" })
atom.util.Technology("5d-oil-refinery-1").addIngredient({ "chemical-science-pack" })
-- 03
data.raw.technology["5d-oil-refinery-2"].unit.count = 300
atom.util.Technology("5d-oil-refinery-2").removePrerequisite({ "production-science-pack" })
atom.util.Technology("5d-oil-refinery-2").addPrerequisite("kr-optimization-tech-card")
atom.util.Technology("5d-oil-refinery-2").removeIngredient({ "kr-basic-tech-card", "production-science-pack" })
atom.util.Technology("5d-oil-refinery-2").addIngredient({ "chemical-science-pack", "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card" })
-- 04
data.raw.technology["5d-oil-refinery-3"].unit.count = 400
atom.util.Technology("5d-oil-refinery-3").addPrerequisite({ "se-heavy-girder", "se-biological-science-pack-1" })
atom.util.Technology("5d-oil-refinery-3").addIngredient({ "se-rocket-science-pack", "space-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-biological-science-pack-1" })
-- 05
data.raw.technology["5d-oil-refinery-4"].unit.count = 500
atom.util.Technology("5d-oil-refinery-4").addPrerequisite("se-bioscrubber")
atom.util.Technology("5d-oil-refinery-4").addIngredient({ "production-science-pack", "utility-science-pack", "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-biological-science-pack-1" })
-- 06
data.raw.technology["5d-oil-refinery-5"].unit.count = 600
atom.util.Technology("5d-oil-refinery-5").removePrerequisite({ "production-science-pack" })
atom.util.Technology("5d-oil-refinery-5").addPrerequisite({ "se-aeroframe-scaffold", "se-material-science-pack-2", "se-biological-science-pack-2" })
atom.util.Technology("5d-oil-refinery-5").addIngredient({ "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-biological-science-pack-2", "se-astronomic-science-pack-2" })
-- 07
data.raw.technology["5d-oil-refinery-6"].unit.count = 700
atom.util.Technology("5d-oil-refinery-6").addPrerequisite({ "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-biological-science-pack-3" })
atom.util.Technology("5d-oil-refinery-6").removeIngredient({ "se-material-science-pack-1" })
atom.util.Technology("5d-oil-refinery-6").addIngredient({ "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-astronomic-science-pack-3" })
-- 08
data.raw.technology["5d-oil-refinery-7"].unit.count = 800
atom.util.Technology("5d-oil-refinery-7").removePrerequisite({ "utility-science-pack" })
atom.util.Technology("5d-oil-refinery-7").addPrerequisite({ "kr-ai-core", "hcp-circuit" })
atom.util.Technology("5d-oil-refinery-7").removeIngredient({ "se-material-science-pack-2" })
atom.util.Technology("5d-oil-refinery-7").addIngredient({ "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" })
-- 09
data.raw.technology["5d-oil-refinery-8"].unit.count = 900
atom.util.Technology("5d-oil-refinery-8").removeIngredient({ "se-material-science-pack-3" })
atom.util.Technology("5d-oil-refinery-8").addPrerequisite("se-nanomaterial", "se-heavy-assembly")
atom.util.Technology("5d-oil-refinery-8").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-4", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" })
-- 10
data.raw.technology["5d-oil-refinery-9"].unit.count = 1000
atom.util.Technology("5d-oil-refinery-9").addPrerequisite("se-naquium-cube")
atom.util.Technology("5d-oil-refinery-9").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" })
