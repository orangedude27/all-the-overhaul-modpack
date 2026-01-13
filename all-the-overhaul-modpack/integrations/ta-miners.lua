-- Entities
local crustEntity = data.raw["mining-drill"]["crust_extractor"]
table.insert(crustEntity.resource_categories, "hard-resource")
crustEntity.module_slots = 5

local mohoEntity = data.raw["mining-drill"]["moho_extractor"]
table.insert(mohoEntity.resource_categories, "hard-resource")
mohoEntity.module_slots = 7

local mantleEntity = data.raw["mining-drill"]["mantle_extractor"]
table.insert(mantleEntity.resource_categories, "hard-resource")


-- Recipes
local crustRecipe = atom.util.Recipe("crust_extractor")
crustRecipe.removeIngredient("steel-plate")
crustRecipe.removeIngredient("pipe")
crustRecipe.removeIngredient("speed-module")
crustRecipe.removeIngredient("engine-unit")
crustRecipe.addIngredient("fi_materials_upgrade", 1)
crustRecipe.addIngredient("area-mining-drill", 1)
crustRecipe.addIngredient("elite-gearbox", 5)
crustRecipe.addIngredient("se-dynamic-emitter", 5)
crustRecipe.addIngredient("industrial-drill-head", 10)
crustRecipe.addIngredient("speed-module-4", 20)
crustRecipe.addIngredient("se-heavy-composite", 50)
crustRecipe.addIngredient("se-heavy-bearing", 50)
crustRecipe.addIngredient("se-space-pipe", 100)

local mohoRecipe = atom.util.Recipe("moho_extractor")
mohoRecipe.removeIngredient("steel-plate")
mohoRecipe.removeIngredient("pipe")
mohoRecipe.removeIngredient("speed-module-2")
mohoRecipe.removeIngredient("electric-engine-unit")
mohoRecipe.addIngredient("fu_materials_upgrade", 1)
mohoRecipe.addIngredient("se-heavy-assembly", 10)
mohoRecipe.addIngredient("se-dynamic-emitter", 10)
mohoRecipe.addIngredient("industrial-drill-head", 20)
mohoRecipe.addIngredient("speed-module-5", 20)
mohoRecipe.addIngredient("kr-imersium-beam", 100)
mohoRecipe.addIngredient("se-heavy-bearing", 100)
mohoRecipe.addIngredient("se-space-pipe", 200)

local mantleRecipe = atom.util.Recipe("mantle_extractor")
mantleRecipe.removeIngredient("steel-plate")
mantleRecipe.removeIngredient("pipe")
mantleRecipe.removeIngredient("speed-module-3")
mantleRecipe.removeIngredient("flying-robot-frame")
mantleRecipe.addIngredient("gr_materials_upgrade", 1)
mantleRecipe.addIngredient("se-heavy-assembly", 20)
mantleRecipe.addIngredient("se-dynamic-emitter", 20)
mantleRecipe.addIngredient("industrial-drill-head", 40)
mantleRecipe.addIngredient("speed-module-6", 20)
mantleRecipe.addIngredient("se-naquium-plate", 100)
mantleRecipe.addIngredient("se-heavy-bearing", 200)
mantleRecipe.addIngredient("se-space-pipe", 300)


-- Technologies

-- Crust Extractor
data.raw.technology["crust_extractor"].unit.count = 600
data.raw.technology["crust_extractor"].unit.time = 80
atom.util.Technology("crust_extractor").removePrerequisite({ "speed-module", "chemical-science-pack" })
atom.util.Technology("crust_extractor").addPrerequisite("se-heavy-composite")
atom.util.Technology("crust_extractor").addPrerequisite("se-dynamic-emitter")
atom.util.Technology("crust_extractor").addPrerequisite("kr-advanced-tech-card")
atom.util.Technology("crust_extractor").addPrerequisite("area-mining-drill")
atom.util.Technology("crust_extractor").addPrerequisite("fi_upgrade_tech")
atom.util.Technology("crust_extractor").removeIngredient({ "automation-science-pack", "logistic-science-pack", "chemical-science-pack" })
atom.util.Technology("crust_extractor").addIngredient(
        { "production-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
          "production-science-pack", "utility-science-pack", "kr-advanced-tech-card", "se-energy-science-pack-4", "se-material-science-pack-3" })

--Moho Extractor
data.raw.technology["moho_extractor"].unit.count = 800
data.raw.technology["moho_extractor"].unit.time = 100
atom.util.Technology("moho_extractor").removePrerequisite({ "speed-module-2", "production-science-pack" })
atom.util.Technology("moho_extractor").addPrerequisite("se-heavy-assembly")
atom.util.Technology("moho_extractor").addPrerequisite("fu_upgrade_tech")
atom.util.Technology("moho_extractor").removeIngredient({ "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                 "se-rocket-science-pack", "space-science-pack", "production-science-pack" })
atom.util.Technology("moho_extractor").addIngredient(
        { "production-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
          "production-science-pack", "utility-science-pack", "kr-advanced-tech-card", "se-energy-science-pack-4", "se-material-science-pack-4" })

--Mantle Extractor
data.raw.technology["mantle_extractor"].unit.count = 1000
data.raw.technology["mantle_extractor"].unit.time = 120
atom.util.Technology("mantle_extractor").removePrerequisite({ "speed-module-3", "robotics", "utility-science-pack" })
atom.util.Technology("mantle_extractor").addPrerequisite("se-processing-naquium")
atom.util.Technology("mantle_extractor").addPrerequisite("gr_upgrade_tech")
atom.util.Technology("mantle_extractor").removeIngredient({ "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                   "se-rocket-science-pack", "space-science-pack", "production-science-pack", "utility-science-pack" })
atom.util.Technology("mantle_extractor").addIngredient(
        { "production-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
          "production-science-pack", "utility-science-pack", "kr-advanced-tech-card", "se-astronomic-science-pack-4", "se-energy-science-pack-4",
          "se-material-science-pack-4", "kr-matter-tech-card" })