local equipment = require("_functions/equipment")
local futil = require("util")

if mods["Krastorio2"] then
    -- 1 tech ki
    krastorio.technologies.removePrerequisite("el_ki_sup_1_tech", "fi_ki_eff_1_tech")
    krastorio.technologies.removePrerequisite("el_ki_sup_1_tech", "el_ki_eff_1_tech")
    krastorio.technologies.addPrerequisite("el_ki_sup_1_tech", "fi_ki_tech")
    krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_1_tech", "chemical-science-pack")
    krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_1_tech", "production-science-pack")
    krastorio.technologies.addResearchUnitIngredient("el_ki_sup_1_tech", "chemical-science-pack", 1)
    krastorio.technologies.addResearchUnitIngredient("el_ki_sup_1_tech", "se-rocket-science-pack", 1)
    krastorio.technologies.setResearchUnitCount("el_ki_sup_1_tech", 2000)
    -- 2 tech ki
    krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "fu_ki_eff_1_tech")
    krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "fi_ki_eff_2_tech")
    krastorio.technologies.removePrerequisite("el_ki_sup_2_tech", "el_ki_eff_2_tech")
    krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "production-science-pack")
    krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "se-energy-science-pack-1")
    krastorio.technologies.removeResearchUnitIngredient("el_ki_sup_2_tech", "se-material-science-pack-3")
    krastorio.technologies.setResearchUnitCount("el_ki_sup_2_tech", 2000)
end

if mods["bismuth"] then
    if settings.startup["bismuth-disable-bismuth-as-smelting-byproduct"].value == true then
        data.raw["resource"]["bismuth-ore"].minable.required_fluid = "water"
    end
end

equipment.add_category_to_equipment("small-portable-generator", "generator-equipment")
equipment.add_category_to_equipment("portable-generator", "generator-equipment")
equipment.add_category_to_equipment("se-rtg-equipment", "generator-equipment")
equipment.add_category_to_equipment("se-rtg-equipment-2", "generator-equipment")
equipment.add_category_to_equipment("mk3-generator-rampant-arsenal", "generator-equipment")
equipment.add_category_to_equipment("nuclear-generator-rampant-arsenal", "generator-equipment")
equipment.add_category_to_equipment("nuclear-reactor-equipment", "generator-equipment")
equipment.add_category_to_equipment("fusion-reactor-equipment", "generator-equipment")
equipment.add_category_to_equipment("antimatter-reactor-equipment", "generator-equipment")

equipment.add_category_to_equipment("personal-submachine-laser-defense-mk1-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-submachine-laser-defense-mk2-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-submachine-laser-defense-mk3-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-submachine-laser-defense-mk4-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-mk2-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-mk3-equipment", "defense-equipment")
equipment.add_category_to_equipment("personal-laser-defense-mk4-equipment", "defense-equipment")
equipment.add_category_to_equipment("shotgun-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("cannon-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("lightning-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("bullets-passive-defense-rampant-arsenal", "defense-equipment")
equipment.add_category_to_equipment("slow-passive-defense-rampant-arsenal", "defense-equipment")

equipment.add_category_to_equipment("energy-shield-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk2-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk3-equipment", "transport-shield")
equipment.add_category_to_equipment("mk3-shield-rampant-arsenal", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk4-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk5-equipment", "transport-shield")
equipment.add_category_to_equipment("energy-shield-mk6-equipment", "transport-shield")

equipment.add_category_to_equipment("battery-equipment", "battery-equipment")
equipment.add_category_to_equipment("big-battery-equipment", "battery-equipment")
equipment.add_category_to_equipment("battery-mk2-equipment", "battery-equipment")
equipment.add_category_to_equipment("big-battery-mk2-equipment", "battery-equipment")
equipment.add_category_to_equipment("mk3-battery-rampant-arsenal", "battery-equipment")
equipment.add_category_to_equipment("battery-mk3-equipment", "battery-equipment")
equipment.add_category_to_equipment("big-battery-mk3-equipment", "battery-equipment")

equipment.add_category_to_equipment("solar-panel-equipment", "solar-equipment")
equipment.add_category_to_equipment("big-solar-panel-equipment", "solar-equipment")
equipment.add_category_to_equipment("imersite-solar-panel-equipment", "solar-equipment")
equipment.add_category_to_equipment("big-imersite-solar-panel-equipment", "solar-equipment")

local arr_categories_for_transport = { "solar-equipment", "transport-shield", "battery-equipment", "defense-equipment",
                                       "generator-equipment" }

-- car
if mods["Krastorio2"] then
    data.raw["car"]["car"].consumption = "500kW"
    data.raw["equipment-grid"]["kr-car-grid"].width = 6
    data.raw["equipment-grid"]["kr-car-grid"].height = 6
    equipment.clear_categories_from_grid("kr-car-grid")
    equipment.add_category_to_grid("kr-car-grid", "vehicle-motor")
    equipment.add_categories_to_grid("kr-car-grid", arr_categories_for_transport)
end

if mods["RampantArsenal"] then
    -- advanced car rampant arsenal
    data.raw["car"]["advanced-car-vehicle-rampant-arsenal"].consumption = "2500kW"
    data.raw["equipment-grid"]["advanced-car-grid-rampant-arsenal"].width = 9
    data.raw["equipment-grid"]["advanced-car-grid-rampant-arsenal"].height = 9
    equipment.clear_categories_from_grid("advanced-car-grid-rampant-arsenal")
    equipment.add_category_to_grid("advanced-car-grid-rampant-arsenal", "vehicle-motor")
    equipment.add_categories_to_grid("advanced-car-grid-rampant-arsenal", arr_categories_for_transport)

    -- nuclear car rampant arsenal
    data.raw["car"]["nuclear-car-vehicle-rampant-arsenal"].consumption = "5000kW"
    data.raw["equipment-grid"]["nuclear-car-grid-rampant-arsenal"].width = 12
    data.raw["equipment-grid"]["nuclear-car-grid-rampant-arsenal"].height = 12
    equipment.clear_categories_from_grid("nuclear-car-grid-rampant-arsenal")
    equipment.add_category_to_grid("nuclear-car-grid-rampant-arsenal", "vehicle-motor")
    equipment.add_categories_to_grid("nuclear-car-grid-rampant-arsenal", arr_categories_for_transport)
end

if mods["Krastorio2"] then
    -- tank
    data.raw["car"]["tank"].consumption = "1000kW"
    data.raw["equipment-grid"]["kr-tank-grid-2"].width = 12
    data.raw["equipment-grid"]["kr-tank-grid-2"].height = 12
    equipment.clear_categories_from_grid("kr-tank-grid-2")
    equipment.add_category_to_grid("kr-tank-grid-2", "vehicle-motor")
    equipment.add_categories_to_grid("kr-tank-grid-2", arr_categories_for_transport)
end

if mods["RampantArsenal"] then
    -- advanced tank rampant arsenal
    data.raw["car"]["advanced-tank-vehicle-rampant-arsenal"].consumption = "5000kW"
    data.raw["equipment-grid"]["advanced-tank-grid-rampant-arsenal"].width = 15
    data.raw["equipment-grid"]["advanced-tank-grid-rampant-arsenal"].height = 15
    equipment.clear_categories_from_grid("advanced-tank-grid-rampant-arsenal")
    equipment.add_category_to_grid("advanced-tank-grid-rampant-arsenal", "vehicle-motor")
    equipment.add_categories_to_grid("advanced-tank-grid-rampant-arsenal", arr_categories_for_transport)

    -- nuclear tank rampant arsenal
    data.raw["car"]["nuclear-tank-vehicle-rampant-arsenal"].consumption = "15000kW"
    data.raw["equipment-grid"]["nuclear-tank-grid-rampant-arsenal"].width = 18
    data.raw["equipment-grid"]["nuclear-tank-grid-rampant-arsenal"].height = 18
    equipment.clear_categories_from_grid("nuclear-tank-grid-rampant-arsenal")
    equipment.add_category_to_grid("nuclear-tank-grid-rampant-arsenal", "vehicle-motor")
    equipment.add_categories_to_grid("nuclear-tank-grid-rampant-arsenal", arr_categories_for_transport)
end

if mods["Krastorio2"] then
    -- kr advanced tank
    data.raw["car"]["kr-advanced-tank"].consumption = "15000kW"
    data.raw["equipment-grid"]["kr-advanced-tank-grid"].width = 18
    data.raw["equipment-grid"]["kr-advanced-tank-grid"].height = 18
    data.raw["car"]["kr-advanced-tank"].equipment_grid = "kr-advanced-tank-grid"
    equipment.clear_categories_from_grid("kr-advanced-tank-grid")
    equipment.add_category_to_grid("kr-advanced-tank-grid", "vehicle-motor")
    equipment.add_categories_to_grid("kr-advanced-tank-grid", arr_categories_for_transport)
end

if mods["mini-machines"] and mods["OD27_5dim_core"] then
    for i = 1, 10 do
        data.raw["assembling-machine"]["mini-assembler-" .. i].crafting_speed = data.raw["assembling-machine"]["mini-assembler-" .. i].crafting_speed * 2
        data.raw["assembling-machine"]["mini-assembler-" .. i].energy_source.emissions_per_minute["pollution"] = data.raw["assembling-machine"]["mini-assembler-" .. i].energy_source.emissions_per_minute["pollution"] / 2
        data.raw["assembling-machine"]["mini-assembler-" .. i].energy_usage = (futil.parse_energy(data.raw["assembling-machine"]["mini-assembler-" .. i].energy_usage) / 2) .. "J"
    end
end