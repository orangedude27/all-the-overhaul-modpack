-- Undo shitty ingredient multiplication
-- Don't put anything wood related above this code
local update = {
    "wood", "bi-woodpulp",
    "bi-seed", "seedling", "water",
}
for _, recipe in pairs(data.raw.recipe) do
    if recipe.mod == "Bio_Industries" then
        krastorio.recipes.multiplyIngredients(recipe.name, update, 0.25)
        krastorio.recipes.multiplyProducts(recipe.name, update, 0.25)
    end
end

require("turret")
require("cokery-fixes")

-- Disable wooden rails and rail conversions
atom.util.recipe.replaceIngredient("bi-rail-wood", "rail")
atom.util.recipe.removeByName("bi-rail-wood")
atom.util.recipe.removeByName("bi-rail-wood-to-concrete")
atom.util.recipe.removeByName("bi-plastic-1")
atom.util.recipe.removeByName("bi-plastic-2")

-- Make fuel categories of bio boiler match vanilla boiler
data.raw.boiler["bi-bio-boiler"].energy_source.fuel_categories = data.raw.boiler["boiler"].energy_source.fuel_categories

-- Fix handcrafting wooden pipe to ground
data.raw.recipe["bi-wood-pipe"].allow_as_intermediate = true

-- K2
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-farm")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-greenhouse")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "kr-growing")

-- Adjust bio garden
local bioGarden = data.raw["assembling-machine"]["bi-bio-garden"]
bioGarden.allowed_effects = { "pollution", "consumption" }

-- Remove unused organic plastic technology
data.raw.technology["bi-tech-organic-plastic"] = nil