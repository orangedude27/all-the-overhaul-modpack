-- Remove solid reactor in favor of 5Dim's nuclear reactor mk1 and 2
-- Nerf it to not break existing setups completely
atom.util.recipe.removeByName("fi_solid_reactor_recipe")
data.raw.technology["fi_solid_reactor_tech"] = nil
data.raw.reactor["fi_solid_reactor_entity"].neighbour_bonus = 0.25

-- Move "Nuclear fission energy" to productivity tech
local nuclearFissionTech = atom.util.Technology("fi_energy_tech")
nuclearFissionTech.removeIngredient("se-rocket-science-pack")
nuclearFissionTech.addIngredient("productivity-science-pack", 1)

-- Fix Train Nuclear Equipment
local trainGeneratorRecipe = atom.util.Recipe("fi_train_equipment_generator_recipe")
trainGeneratorRecipe.replaceIngredient("fi_solid_reactor_item", "5d-nuclear-reactor-02")

-- Fuel categories
data.raw["fuel-category"]["fi_advanced_fuel"].name = "nuclear-advanced"
data.raw["fuel-category"]["fi_pure_fuel"].name = "nuclear-high-energy"
data:extend({
    data.raw["fuel-category"]["fi_advanced_fuel"],
    data.raw["fuel-category"]["fi_pure_fuel"]
})
data.raw["fuel-category"]["fi_advanced_fuel"] = nil
data.raw["fuel-category"]["fi_pure_fuel"] = nil


-- Thorium fuel rods
local thoriumItem = data.raw.item["fi_basic_thorium_fuel_item"]
thoriumItem.fuel_value = "10GJ"
thoriumItem.fuel_category = "nuclear"
thoriumItem.fuel_glow_color = { r = 0.85, g = 0.85, b = 0.85, a = 1 }

local thoriumRecipe = atom.util.Recipe("fi_basic_thorium_fuel_recipe")
thoriumRecipe.removeIngredient("uranium-238")
thoriumRecipe.replaceIngredient("fi_thorium232_item", 20)
thoriumRecipe.replaceIngredient("el_materials_ALK", "lead-plate", 10)
thoriumRecipe.addIngredient("zircaloy-4", 10)

data:extend({
    {
        name = "thorium-fuel",
        type = "technology",
        icon = "__248k__/ressources/fission/fi_fuel/fi_fuel_basic_thorium_item.png",
        icon_size = 64,
        prerequisites = { "se-centrifuge" },
        effects = {
            {
                type = "unlock-recipe",
                recipe = "fi_basic_thorium_fuel_recipe",
            },
            {
                type = "unlock-recipe",
                recipe = "thorium-processing",
            }
        },
        unit = {
            count = "250",
            ingredients = {
                { "chemical-science-pack", 1 },
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "productivity-science-pack", 1 }
            },
            time = 30
        }
    }
})

atom.util.Technology("uranium-processing").removeRecipe("thorium-processing")

local purifierTech = atom.util.Technology("fi_advanced_purifier_tech")
purifierTech.removeIngredient("se-rocket-science-pack")
purifierTech.addIngredient("productivity-science-pack", 1)
purifierTech.replacePrerequisite("uranium-processing", "thorium-fuel")
purifierTech.addRecipe("fi_uranium233_recipe")
purifierTech.prototype.unit.count = 250

local solutionRecipe = atom.util.Recipe("fi_solution_recipe")
solutionRecipe.replaceIngredient("fi_strong_acid", "el_acidic_water")
solutionRecipe.prototype.results[1].catalyst_amount = 20


-- Uranium-233 fuel rods
local uranium233Item = data.raw.item["fi_advanced_thorium_fuel_item"]
uranium233Item.fuel_value = "20GJ"
uranium233Item.fuel_category = "nuclear-advanced"
uranium233Item.fuel_glow_color = { r = 0.67, g = 0.90, b = 0.69, a = 1 }

local uranium233Recipe = atom.util.Recipe("fi_advanced_thorium_fuel_recipe")
uranium233Recipe.prototype.result_count = 4
uranium233Recipe.replaceIngredient("el_materials_ALK", "lead-plate", 10)
uranium233Recipe.addIngredient("zircaloy-4", 10)

data:extend({
    {
        name = "uranium233-fuel",
        type = "technology",
        icon = "__248k__/ressources/fission/fi_fuel/fi_fuel_advanced_thorium_item.png",
        icon_size = 64,
        prerequisites = { "se-rocket-science-pack", "thorium-fuel", "fi_advanced_purifier_tech" },
        effects = {
            {
                type = 'unlock-recipe',
                recipe = 'fi_advanced_thorium_fuel_recipe',
            },
            {
                type = 'unlock-recipe',
                recipe = 'fi_advanced_thorium_fuel_recycle_recipe',
            }
        },
        unit = {
            count = "250",
            ingredients = {
                { "chemical-science-pack", 1 },
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "productivity-science-pack", 1 },
                { "se-rocket-science-pack", 1 }
            },
            time = 30
        }
    }
})


-- Uranium-235 fuel rods
local uranium235Item = data.raw.item["fi_basic_fuel_item"]
uranium235Item.fuel_value = "40GJ"
uranium235Item.fuel_category = "nuclear-advanced"
uranium235Item.fuel_glow_color = { r = 0.50, g = 0.95, b = 0.55, a = 1 }

local uranium235Recipe = atom.util.Recipe("fi_basic_fuel_recipe")
uranium235Recipe.prototype.energy_required = 50
uranium235Recipe.prototype.result_count = 5
uranium235Recipe.replaceIngredient("el_materials_ALK", "lead-plate", 10)
uranium235Recipe.addIngredient("zircaloy-4", 10)

local uranium235Tech = atom.util.Technology("fi_refining_tech")
uranium235Tech.assign({
    name = "uranium235-fuel",
    icon = "__248k__/ressources/fission/fi_fuel/fi_fuel_basic_item.png",
    icon_size = 64,
    prerequisites = { "5d-nuclear-reactor", "uranium233-fuel" },
    effects = {
        {
            type = 'unlock-recipe',
            recipe = 'fi_plutonium239_recipe',
        },
        {
            type = 'unlock-recipe',
            recipe = 'fi_basic_fuel_recipe',
        }
    }
})
uranium235Tech.addIngredient("productivity-science-pack")
uranium235Tech.addIngredient("space-science-pack")
uranium235Tech.apply()
atom.util.technology.replacePrerequisite("fi_refining_tech", "uranium235-fuel")
data.raw.technology["fi_refining_tech"] = nil

local wasteStorageTech = atom.util.Technology("fi_castor_tech")
wasteStorageTech.addIngredient("productivity-science-pack")
wasteStorageTech.addIngredient("space-science-pack")

local nuclearCraftingTech = atom.util.Technology("fi_crafter_tech")
nuclearCraftingTech.addIngredient("productivity-science-pack")
nuclearCraftingTech.addIngredient("space-science-pack")


-- Plutonium-239 fuel rods
local plutonium239Item = data.raw.item["fi_advanced_fuel_item"]
plutonium239Item.fuel_value = "80GJ"
plutonium239Item.fuel_category = "nuclear-high-energy"
plutonium239Item.fuel_glow_color = { r = 0.57, g = 0.91, b = 1, a = 1 }

local plutonium239Recipe = atom.util.Recipe("fi_advanced_fuel_recipe")
plutonium239Recipe.prototype.result_count = 5
plutonium239Recipe.prototype.energy_required = 75
plutonium239Recipe.replaceIngredient("el_materials_ALK", "lead-plate", 10)
plutonium239Recipe.addIngredient("zircaloy-4", 10)

data:extend({
    {
        name = "plutonium239-fuel",
        type = "technology",
        icon = "__248k__/ressources/fission/fi_fuel/fi_fuel_advanced_item.png",
        icon_size = 64,
        prerequisites = { "uranium235-fuel", "kr-optimization-tech-card" },
        effects = {
            {
                type = 'unlock-recipe',
                recipe = 'fi_advanced_fuel_recipe',
            },
            {
                type = 'unlock-recipe',
                recipe = 'fi_advanced_fuel_recycle_recipe',
            }
        },
        unit = {
            count = "250",
            ingredients = {
                { "chemical-science-pack", 1 },
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "productivity-science-pack", 1 },
                { "se-rocket-science-pack", 1 },
                { "space-science-pack", 1 },
                { "kr-optimization-tech-card", 1 }
            },
            time = 30
        }
    }
})


-- High energy mox fuel rods (U235 + Pu239)
local highEnergyItem = data.raw.item["fi_pure_fuel_item"]
highEnergyItem.fuel_value = "160GJ"
highEnergyItem.fuel_category = "nuclear-high-energy"
highEnergyItem.fuel_glow_color = { r = 0.91, g = 0.86, b = 0.62, a = 1 }

local highEnergyRecipe = atom.util.Recipe("fi_pure_fuel_recipe")
highEnergyRecipe.prototype.result_count = 5
highEnergyRecipe.prototype.energy_required = 100
highEnergyRecipe.replaceIngredient("el_materials_ALK", "lead-plate", 10)
highEnergyRecipe.addIngredient("zircaloy-4", 10)

data:extend({
    {
        name = "high-energy-fuel",
        type = "technology",
        icon = "__248k__/ressources/fission/fi_fuel/fi_fuel_pure_item.png",
        icon_size = 64,
        prerequisites = { "plutonium239-fuel", "se-energy-science-pack-1" },
        effects = {
            {
                type = 'unlock-recipe',
                recipe = 'fi_pure_fuel_recipe',
            },
            {
                type = 'unlock-recipe',
                recipe = 'fi_pure_fuel_recycle_recipe',
            }
        },
        unit = {
            count = "250",
            ingredients = {
                { "chemical-science-pack", 1 },
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "productivity-science-pack", 1 },
                { "se-rocket-science-pack", 1 },
                { "space-science-pack", 1 },
                { "kr-optimization-tech-card", 1 },
                { "se-energy-science-pack-1", 1 }
            },
            time = 30
        }
    }
})


-- Cleanup
atom.util.technology.replacePrerequisite("fi_energy_tech", "nuclear-power")
data.raw.technology["fi_energy_tech"] = nil
atom.util.recipe.replaceIngredient("uranium-fuel-cell", "fi_basic_thorium_fuel_item")
-- Keep the items for the menu simulations and just remove the recipes
atom.util.recipe.removeByItem("uranium-fuel-cell")
atom.util.recipe.removeByItem("used-up-uranium-fuel-cell")

for item, _ in pairs(data.raw.item) do
    if item.fuel_category == "fi_basic_fuel" then
        item.fuel_category = "nuclear"
    end
    if item.fuel_category == "fi_advanced_fuel" then
        item.fuel_category = "nuclear-advanced"
    end
    if item.fuel_category == "fi_pure_fuel" then
        item.fuel_category = "nuclear-high-energy"
    end
end

data.raw.reactor["fi_solid_reactor_entity"].energy_source.fuel_categories = { "nuclear", "nuclear-advanced", "nuclear-high-energy" }
data.raw.locomotive["gr_magnet_train_pre_entity"].burner.fuel_categories = { "nuclear", "nuclear-advanced", "nuclear-high-energy" }