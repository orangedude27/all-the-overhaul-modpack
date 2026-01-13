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

local mk1Tech = atom.util.Technology("se-centrifuge")
mk1Tech.removeIngredient("se-rocket-science-pack")
mk1Tech.addIngredient("productivity-science-pack", 1)
mk1Tech.replacePrerequisite("processing-unit", "productivity-science-pack")

-- 02
data.raw.technology["5d-centrifuge-1"].unit.count = 200
atom.util.Technology("5d-centrifuge-1").removePrerequisite({ "production-science-pack" })
atom.util.Technology("5d-centrifuge-1").addPrerequisite("cobalt-electromagnet")
atom.util.Technology("5d-centrifuge-1").addIngredient({ "space-science-pack" })
-- 03
data.raw.technology["5d-centrifuge-2"].unit.count = 300
atom.util.Technology("5d-centrifuge-2").addPrerequisite("kr-optimization-tech-card")
atom.util.Technology("5d-centrifuge-2").addIngredient({ "space-science-pack", "kr-optimization-tech-card" })
-- 04
data.raw.technology["5d-centrifuge-3"].unit.count = 400
atom.util.Technology("5d-centrifuge-3").addPrerequisite({ "se-heavy-girder", "se-energy-science-pack-1" })
atom.util.Technology("5d-centrifuge-3").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" })
-- 05
data.raw.technology["5d-centrifuge-4"].unit.count = 500
atom.util.Technology("5d-centrifuge-4").addPrerequisite("fu_TIM_tech")
atom.util.Technology("5d-centrifuge-4").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1", "fusion-science-pack-1" })
-- 06
data.raw.technology["5d-centrifuge-5"].unit.count = 600
atom.util.Technology("5d-centrifuge-5").removePrerequisite({ "production-science-pack" })
atom.util.Technology("5d-centrifuge-5").addPrerequisite({ "se-aeroframe-scaffold", "se-heavy-bearing", "se-energy-science-pack-2", "space-fusion-science-pack-2" })
atom.util.Technology("5d-centrifuge-5").addIngredient({ "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "fusion-science-pack-2", "se-astronomic-science-pack-2" })
-- 07
data.raw.technology["5d-centrifuge-6"].unit.count = 700
atom.util.Technology("5d-centrifuge-6").addPrerequisite({ "se-aeroframe-bulkhead", "se-material-science-pack-3", "se-energy-science-pack-3", "space-fusion-science-pack-3" })
atom.util.Technology("5d-centrifuge-6").removeIngredient({ "se-material-science-pack-1" })
atom.util.Technology("5d-centrifuge-6").addIngredient({ "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "fusion-science-pack-3", "se-astronomic-science-pack-3" })
-- 08
data.raw.technology["5d-centrifuge-7"].unit.count = 800
atom.util.Technology("5d-centrifuge-7").removePrerequisite({ "utility-science-pack" })
atom.util.Technology("5d-centrifuge-7").addPrerequisite({ "kr-ai-core", "hcp-circuit" })
atom.util.Technology("5d-centrifuge-7").removeIngredient({ "se-material-science-pack-2" })
atom.util.Technology("5d-centrifuge-7").addIngredient({ "se-rocket-science-pack", "space-science-pack", "kr-optimization-tech-card", "se-material-science-pack-3", "se-biological-science-pack-3", "se-energy-science-pack-3", "fusion-science-pack-3", "se-astronomic-science-pack-3" })
-- 09
data.raw.technology["5d-centrifuge-8"].unit.count = 900
atom.util.Technology("5d-centrifuge-8").removeIngredient({ "se-material-science-pack-3" })
atom.util.Technology("5d-centrifuge-8").addPrerequisite({ "se-nanomaterial", "space-fusion-science-pack-4", "se-heavy-assembly" })
atom.util.Technology("5d-centrifuge-8").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-4", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "fusion-science-pack-4" })
-- 10
data.raw.technology["5d-centrifuge-9"].unit.count = 1000
atom.util.Technology("5d-centrifuge-9").addPrerequisite("se-naquium-cube")
atom.util.Technology("5d-centrifuge-9").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "fusion-science-pack-4", "se-deep-space-science-pack-1" })
