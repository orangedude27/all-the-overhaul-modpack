-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
data.raw["solar-panel"]["el_solar_entity"].production = "200kW"

-- Move solar panel 2.0 to productivity science
atom.util.technology.replacePrerequisite("el_solar_tech", "concrete", "el_energy_tech")
local solarMk2Tech = data.raw.technology["el_solar_tech"]
solarMk2Tech.prerequisites = { "productivity-science-pack" }
solarMk2Tech.unit.count = 250
solarMk2Tech.unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "productivity-science-pack", 1 }
}

-- Replace solar panel 2.0 with regular solar panel in KI1 Core
atom.util.Recipe("el_ki_core_recipe").replaceIngredient("el_solar_item", "solar-panel")
atom.util.Technology("el_ki_tech").addPrerequisite("solar-energy")