if mods["WipMod_TA-miners"] then
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
  mohoRecipe.addIngredient("imersium-beam", 100)
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
  local util = require("_data-util")

  -- Crust Extractor
  data.raw.technology["crust_extractor"].unit.count = 600
  data.raw.technology["crust_extractor"].unit.time = 80
  util.tech_remove_prerequisites("crust_extractor", { "speed-module", "chemical-science-pack" })
  util.tech_add_prerequisites("crust_extractor", "se-heavy-composite")
  util.tech_add_prerequisites("crust_extractor", "se-dynamic-emitter")
  util.tech_add_prerequisites("crust_extractor", "kr-advanced-tech-card")
  util.tech_add_prerequisites("crust_extractor", "area-mining-drill")
  util.tech_add_prerequisites("crust_extractor", "fi_upgrade_tech")
  util.tech_remove_ingredients("crust_extractor", { "automation-science-pack", "logistic-science-pack", "chemical-science-pack" })
  util.tech_add_ingredients("crust_extractor",
          { "production-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
            "production-science-pack", "utility-science-pack", "advanced-tech-card", "se-energy-science-pack-4", "se-material-science-pack-3" }, false)

  --Moho Extractor
  data.raw.technology["moho_extractor"].unit.count = 800
  data.raw.technology["moho_extractor"].unit.time = 100
  util.tech_remove_prerequisites("moho_extractor", { "speed-module-2", "production-science-pack" })
  util.tech_add_prerequisites("moho_extractor", "se-heavy-assembly")
  util.tech_add_prerequisites("moho_extractor", "fu_upgrade_tech")
  util.tech_remove_ingredients("moho_extractor", { "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                  "se-rocket-science-pack", "space-science-pack", "production-science-pack" })
  util.tech_add_ingredients("moho_extractor",
          { "production-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
            "production-science-pack", "utility-science-pack", "advanced-tech-card", "se-energy-science-pack-4", "se-material-science-pack-4" }, false)

  --Mantle Extractor
  data.raw.technology["mantle_extractor"].unit.count = 1000
  data.raw.technology["mantle_extractor"].unit.time = 120
  util.tech_remove_prerequisites("mantle_extractor", { "speed-module-3", "robotics", "utility-science-pack" })
  util.tech_add_prerequisites("mantle_extractor", "se-processing-naquium")
  util.tech_add_prerequisites("mantle_extractor", "gr_upgrade_tech")
  util.tech_remove_ingredients("mantle_extractor", { "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                    "se-rocket-science-pack", "space-science-pack", "production-science-pack", "utility-science-pack" })
  util.tech_add_ingredients("mantle_extractor",
          { "production-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
            "production-science-pack", "utility-science-pack", "advanced-tech-card", "se-astronomic-science-pack-4", "se-energy-science-pack-4",
            "se-material-science-pack-4", "matter-tech-card" }, false)
end