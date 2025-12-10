-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
data.raw["solar-panel"]["kr-advanced-solar-panel"].production = "300kW"

atom.util.Technology("kr-atmosphere-condensation").addPrerequisite("advanced-multi-cylinder-engine")