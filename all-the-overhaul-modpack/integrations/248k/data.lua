-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
if mods["248k"] then
    data.raw["solar-panel"]["el_solar_entity"].production = "200kW"
end