local equipment = require("_functions/equipment")
local equipmentCategoriesLoco = { "solar-equipment", "transport-shield", "battery-equipment", "defense-equipment", "generator-equipment", "el_train_equipment", "fi_train_equipment" }
local equipmentCategoriesWagon = { "solar-equipment", "transport-shield", "battery-equipment", "defense-equipment", "generator-equipment", "vehicle-robot-interaction-equipment" }

if mods["248k"] then
    data.raw["movement-bonus-equipment"]["el_train_equipment_accelerator_item"].movement_bonus = 0.25
end

if mods["Krastorio2"] then
    -- Vanilla Locomotive
    local loc1Grid = data.raw["equipment-grid"]["kr-locomotive-grid"]
    loc1Grid.width = 6
    loc1Grid.height = 6
    equipment.clear_categories_from_grid("kr-locomotive-grid")
    equipment.add_categories_to_grid("kr-locomotive-grid", equipmentCategoriesLoco)
end

if mods["248k"] then
    -- Diesel Train
    local loc2Grid = data.raw["equipment-grid"]["el_train_equipment_grid"]
    loc2Grid.width = 9
    loc2Grid.height = 6
    equipment.add_categories_to_grid("el_train_equipment_grid", equipmentCategoriesLoco)
end

if mods["Krastorio2"] then
    -- Nuclear Locomotive
    equipment.create_grid("kr-nuclear-locomotive-grid")
    local loc3Grid = data.raw["equipment-grid"]["kr-nuclear-locomotive-grid"]
    loc3Grid.width = 12
    loc3Grid.height = 6
    equipment.add_categories_to_grid("kr-nuclear-locomotive-grid", equipmentCategoriesLoco)
end

if mods["248k"] then
    -- EM Suspension Train 1
    equipment.create_grid("gr_magnet_train_pre_grid")
    local loc4Grid = data.raw["equipment-grid"]["gr_magnet_train_pre_grid"]
    loc4Grid.width = 15
    loc4Grid.height = 9
    equipment.add_categories_to_grid("gr_magnet_train_pre_grid", equipmentCategoriesLoco)
end

if mods["248k"] then
    -- EM Suspension Train 2
    equipment.create_grid("gr_magnet_train_grid")
    local loc5Grid = data.raw["equipment-grid"]["gr_magnet_train_grid"]
    loc5Grid.width = 15
    loc5Grid.height = 12
    equipment.add_categories_to_grid("gr_magnet_train_grid", equipmentCategoriesLoco)
end

if mods["Krastorio2"] then
    -- Wagons
    local wagonGrid = data.raw["equipment-grid"]["kr-wagons-grid"]
    wagonGrid.width = 10
    wagonGrid.height = 10
    equipment.clear_categories_from_grid("kr-wagons-grid")
    equipment.add_categories_to_grid("kr-wagons-grid", equipmentCategoriesWagon)
end

if mods["Krastorio2"] then
    data.raw["cargo-wagon"]["black-cargo-wagon"].equipment_grid = "kr-wagons-grid"
    data.raw["fluid-wagon"]["black-fluid-wagon"].equipment_grid = "kr-wagons-grid"
    data.raw["cargo-wagon"]["gr_magnet_wagon_pre_entity"].equipment_grid = "kr-wagons-grid"
    data.raw["cargo-wagon"]["gr_magnet_wagon_entity"].equipment_grid = "kr-wagons-grid"
    data.raw["fluid-wagon"]["gr_magnet_tanker_pre_entity"].equipment_grid = "kr-wagons-grid"
    data.raw["fluid-wagon"]["gr_magnet_tanker_entity"].equipment_grid = "kr-wagons-grid"
end