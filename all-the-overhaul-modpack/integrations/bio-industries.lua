-- Disable wooden rails and rail conversions
atom.util.recipe.removeByName("bi-rail-wood")
atom.util.recipe.removeByName("bi-rail-wood-to-concrete")
atom.util.recipe.removeByName("bi-plastic-1")
atom.util.recipe.removeByName("bi-plastic-2")

-- K2
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-farm")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-greenhouse")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "growing")