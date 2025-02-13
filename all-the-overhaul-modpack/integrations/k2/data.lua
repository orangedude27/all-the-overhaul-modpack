-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
if mods["Krastorio2"] then
    data.raw["solar-panel"]["kr-advanced-solar-panel"].production = "300kW"
end