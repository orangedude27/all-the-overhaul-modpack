-- Recipes

local Recipe = require('__jalm__/stdlib/data/recipe')

local mk1Recipe = atom.util.Recipe(data.raw["recipe"]["centrifuge"])
mk1Recipe.replaceIngredient("processing-unit", "advanced-circuit")

-- 02
Recipe("5d-centrifuge-02"):add_ingredient({ "cobalt-electromagnet", 10 })
Recipe("5d-centrifuge-02"):add_ingredient({ "bearing", 20 })
Recipe("5d-centrifuge-02"):replace_ingredient("steel-plate", { "se-heat-shielding", 40 })
Recipe("5d-centrifuge-02"):replace_ingredient("advanced-circuit", { "processing-unit", 40 })
-- 03
Recipe("5d-centrifuge-03"):add_ingredient({ "kr-imersium-beam", 50 })
Recipe("5d-centrifuge-03"):add_ingredient({ "bearing", 30 })
Recipe("5d-centrifuge-03"):replace_ingredient("steel-plate", { "se-heat-shielding", 40 })
Recipe("5d-centrifuge-03"):replace_ingredient("advanced-circuit", { "processing-unit", 50 })
-- 04
Recipe("5d-centrifuge-04"):add_ingredient({ "se-heavy-girder", 50 })
Recipe("5d-centrifuge-04"):add_ingredient({ "bearing", 40 })
Recipe("5d-centrifuge-04"):replace_ingredient("low-density-structure", { "se-heat-shielding", 40 })
Recipe("5d-centrifuge-04"):replace_ingredient("steel-plate", { "nitinol-plate", 50 })
Recipe("5d-centrifuge-04"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 50 })
Recipe("5d-centrifuge-04"):replace_ingredient("advanced-circuit", { "advanced-processing-unit", 50 })
-- 05
Recipe("5d-centrifuge-05"):add_ingredient({ "se-heavy-girder", 50 })
Recipe("5d-centrifuge-05"):add_ingredient({ "bearing", 50 })
Recipe("5d-centrifuge-05"):replace_ingredient("low-density-structure", { "se-heat-shielding", 40 })
Recipe("5d-centrifuge-05"):replace_ingredient("steel-plate", { "nitinol-plate", 50 })
Recipe("5d-centrifuge-05"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 50 })
Recipe("5d-centrifuge-05"):replace_ingredient("processing-unit", { "advanced-processing-unit", 50 })
Recipe("5d-centrifuge-05"):replace_ingredient("speed-module", { "fu_materials_TIM", 40 })
-- 06
Recipe("5d-centrifuge-06"):add_ingredient({ "kr-imersium-beam", 50 })
Recipe("5d-centrifuge-06"):add_ingredient({ "se-heavy-bearing", 50 })
Recipe("5d-centrifuge-06"):replace_ingredient("low-density-structure", { "se-heat-shielding", 40 })
Recipe("5d-centrifuge-06"):replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 100 })
Recipe("5d-centrifuge-06"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 60 })
Recipe("5d-centrifuge-06"):replace_ingredient("processing-unit", { "advanced-processing-unit", 50 })
Recipe("5d-centrifuge-06"):replace_ingredient("productivity-module", { "fu_materials_TIM", 50 })
-- 07
Recipe("5d-centrifuge-07"):add_ingredient({ "kr-imersium-beam", 60 })
Recipe("5d-centrifuge-07"):add_ingredient({ "se-heavy-bearing", 60 })
Recipe("5d-centrifuge-07"):replace_ingredient("low-density-structure", { "se-heat-shielding", 40 })
Recipe("5d-centrifuge-07"):replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 100 })
Recipe("5d-centrifuge-07"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 70 })
Recipe("5d-centrifuge-07"):replace_ingredient("processing-unit", { "advanced-processing-unit", 50 })
Recipe("5d-centrifuge-07"):replace_ingredient("speed-module-2", { "fu_materials_TIM", 60 })
-- 08
Recipe("5d-centrifuge-08"):add_ingredient({ "kr-ai-core", 1 })
Recipe("5d-centrifuge-08"):add_ingredient({ "kr-imersium-beam", 60 })
Recipe("5d-centrifuge-08"):add_ingredient({ "se-heavy-bearing", 60 })
Recipe("5d-centrifuge-08"):replace_ingredient("low-density-structure", { "se-heat-shielding", 50 })
Recipe("5d-centrifuge-08"):replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 100 })
Recipe("5d-centrifuge-08"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 80 })
Recipe("5d-centrifuge-08"):replace_ingredient("processing-unit", { "gr_materials_circuit", 50 })
Recipe("5d-centrifuge-08"):replace_ingredient("productivity-module-2", { "fu_materials_TIM", 60 })
-- 09
Recipe("5d-centrifuge-09"):add_ingredient({ "kr-ai-core", 1 })
Recipe("5d-centrifuge-09"):add_ingredient({ "se-heavy-assembly", 20 })
Recipe("5d-centrifuge-09"):add_ingredient({ "se-heavy-bearing", 60 })
Recipe("5d-centrifuge-09"):replace_ingredient("low-density-structure", { "se-nanomaterial", 20 })
Recipe("5d-centrifuge-09"):replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 100 })
Recipe("5d-centrifuge-09"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 90 })
Recipe("5d-centrifuge-09"):replace_ingredient("processing-unit", { "gr_materials_circuit", 60 })
Recipe("5d-centrifuge-09"):replace_ingredient("speed-module-3", { "fu_materials_TIM", 80 })
-- 10
Recipe("5d-centrifuge-10"):add_ingredient({ "kr-ai-core", 1 })
Recipe("5d-centrifuge-10"):add_ingredient({ "se-heavy-assembly", 20 })
Recipe("5d-centrifuge-10"):add_ingredient({ "se-heavy-bearing", 60 })
Recipe("5d-centrifuge-10"):replace_ingredient("low-density-structure", { "se-nanomaterial", 20 })
Recipe("5d-centrifuge-10"):replace_ingredient("steel-plate", { "se-aeroframe-bulkhead", 100 })
Recipe("5d-centrifuge-10"):replace_ingredient("iron-gear-wheel", { "kr-imersium-gear-wheel", 100 })
Recipe("5d-centrifuge-10"):replace_ingredient("processing-unit", { "gr_materials_circuit", 80 })
Recipe("5d-centrifuge-10"):replace_ingredient("productivity-module-2", { "se-naquium-cube", 1 })

-- Advanced centrifuge
atom.util.Recipe("k11-advanced-centrifuge").replaceIngredient("centrifuge", "5d-centrifuge-03", 2)


-- Technologies

local util = require("_data-util")

local mk1Tech = atom.util.Technology("se-centrifuge")
mk1Tech.removeIngredient("se-rocket-science-pack")
mk1Tech.addIngredient("productivity-science-pack", 1)
mk1Tech.replacePrerequisite("processing-unit", "productivity-science-pack")

-- 02
data.raw.technology["5d-centrifuge-1"].unit.count = 200
util.tech_remove_prerequisites("5d-centrifuge-1", { "production-science-pack" })
util.tech_add_prerequisites("5d-centrifuge-1", "cobalt-electromagnet")
util.tech_add_ingredients("5d-centrifuge-1", { "space-science-pack" }, false)
-- 03
data.raw.technology["5d-centrifuge-2"].unit.count = 300
util.tech_add_prerequisites("5d-centrifuge-2", "kr-optimization-tech-card")
util.tech_add_ingredients("5d-centrifuge-2", { "space-science-pack", "kr-optimization-tech-card" }, false)
-- 04
data.raw.technology["5d-centrifuge-3"].unit.count = 400
util.tech_add_prerequisites("5d-centrifuge-3", { "se-heavy-girder", "se-energy-science-pack-1" })
util.tech_add_ingredients("5d-centrifuge-3", { "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" }, false)
-- 05
data.raw.technology["5d-centrifuge-4"].unit.count = 500
util.tech_add_prerequisites("5d-centrifuge-4", "fu_TIM_tech")
util.tech_add_ingredients("5d-centrifuge-4", { "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1", "fusion-science-pack-1" }, false)
-- 06
data.raw.technology["5d-centrifuge-5"].unit.count = 600
util.tech_remove_prerequisites("5d-centrifuge-5", { "production-science-pack" })
util.tech_add_prerequisites("5d-centrifuge-5", { "se-aeroframe-scaffold", "se-heavy-bearing", "se-energy-science-pack-2", "space-fusion-science-pack-2" })
util.tech_add_ingredients("5d-centrifuge-5", { "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "fusion-science-pack-2", "se-astronomic-science-pack-2" }, false)
-- 07
data.raw.technology["5d-centrifuge-6"].unit.count = 700
util.tech_add_prerequisites("5d-centrifuge-6", { "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-energy-science-pack-3", "space-fusion-science-pack-3" })
util.tech_remove_ingredients("5d-centrifuge-6", { "se-material-science-pack-1" })
util.tech_add_ingredients("5d-centrifuge-6", { "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "fusion-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 08
data.raw.technology["5d-centrifuge-7"].unit.count = 800
util.tech_remove_prerequisites("5d-centrifuge-7", { "utility-science-pack" })
util.tech_add_prerequisites("5d-centrifuge-7", { "kr-ai-core", "hcp-circuit" })
util.tech_remove_ingredients("5d-centrifuge-7", { "se-material-science-pack-2" })
util.tech_add_ingredients("5d-centrifuge-7", { "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-energy-science-pack-3", "fusion-science-pack-3", "se-astronomic-science-pack-3" }, false)
-- 09
data.raw.technology["5d-centrifuge-8"].unit.count = 900
util.tech_remove_ingredients("5d-centrifuge-8", { "se-material-science-pack-3" })
util.tech_add_prerequisites("5d-centrifuge-8", { "se-nanomaterial", "space-fusion-science-pack-4", "se-heavy-assembly" })
util.tech_add_ingredients("5d-centrifuge-8", { "kr-optimization-tech-card", "se-material-science-pack-4", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "fusion-science-pack-4" }, false)
-- 10
data.raw.technology["5d-centrifuge-9"].unit.count = 1000
util.tech_add_prerequisites("5d-centrifuge-9", "se-naquium-cube")
util.tech_add_ingredients("5d-centrifuge-9", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "fusion-science-pack-4", "se-deep-space-science-pack-1" }, false)
