-- Disable wooden rails and rail conversions
atom.util.recipe.removeByName("bi-rail-wood")
atom.util.recipe.removeByName("bi-rail-wood-to-concrete")
atom.util.recipe.removeByName("bi-plastic-1")
atom.util.recipe.removeByName("bi-plastic-2")

-- Make fuel categories of bio boiler match vanilla boiler
data.raw.boiler["bi-bio-boiler"].energy_source.fuel_categories = data.raw.boiler["boiler"].energy_source.fuel_categories

-- K2
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-farm")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-greenhouse")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "growing")