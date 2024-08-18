require("dirty-water")
require("biomass")

data:extend({
    -- Fix coke recipe
    {
        type = "recipe",
        name = "coke",
        category = "smelting",
        energy_required = 16,
        enabled = false,
        allow_productivity = true,
        ingredients = {
            { "coal", 6 },
            { "wood", 6 },
        },
        result = "coke",
        result_count = 6,
    }
})

local miningDrill3 = atom.util.Recipe("kr-electric-mining-drill-mk3")
miningDrill3.replaceIngredient("se-dynamic-emitter", "imersium-gear-wheel", 5)
miningDrill3.replaceIngredient("elite-gearbox", "advanced-gearbox", 4)
miningDrill3.replaceIngredient("se-heavy-composite", "nitinol-plate", 4)
miningDrill3.replaceIngredient("area-mining-drill", "kr-electric-mining-drill-mk2", 1)
miningDrill3.addIngredient("cobalt-carbide", 5)
miningDrill3.addIngredient("fu_materials_KFK", 6)
miningDrill3.addIngredient("processing-unit", 5)

data.raw.fluid["hydrogen"].fuel_value = "150kJ"

-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
data.raw["solar-panel"]["kr-advanced-solar-panel"].production = "300kW"

-- Move lithium sufur battery to a better position in the tech tree
local batteryTech = atom.util.Technology("kr-lithium-sulfur-battery")
batteryTech.prototype.prerequisites = { "space-science-pack" }
batteryTech.removeIngredient("production-science-pack")
batteryTech.removeIngredient("utility-science-pack")

-- Fix prerequisites for military 5
atom.util.Technology("kr-military-5").replacePrerequisite("kr-lithium-sulfur-battery", "utility-science-pack")

-- Fix prerequisites for robot battery
local robotBatteryTech = atom.util.Technology("kr-robot-battery")
robotBatteryTech.addPrerequisite("production-science-pack")
robotBatteryTech.addPrerequisite("utility-science-pack")

-- Balance Nuclear Locomotive because it's a downgrade from the Diesel Train
local nuclearLoc = data.raw.locomotive["kr-nuclear-locomotive"]
nuclearLoc.weight = 4000
nuclearLoc.max_speed = 1.30
nuclearLoc.max_power = "3.2MW"
nuclearLoc.burner.effectivity = 0.5
nuclearLoc.burner.fuel_categories = { "vehicle-fuel", "el_train_fuel", "nuclear" }
