-- Chemical Fuel

table.assign(data.raw.item["processed-fuel"], {
    fuel_acceleration_multiplier = 0.75,
    fuel_top_speed_multiplier = 0.75,
    fuel_emissions_multiplier = 1.5
})

table.assign(data.raw.item["solid-fuel"], {
    fuel_acceleration_multiplier = 0.75,
    fuel_top_speed_multiplier = 0.75,
    fuel_emissions_multiplier = 1.5
})

table.assign(data.raw.item["rocket-fuel"], {
    fuel_acceleration_multiplier = 1.0,
    fuel_top_speed_multiplier = 1.0,
    fuel_emissions_multiplier = 1.25
})


-- Vehicle Fuel

table.assign(data.raw.item["fuel"], {
    fuel_acceleration_multiplier = 1.0,
    fuel_top_speed_multiplier = 1.0,
    fuel_emissions_multiplier = 1.0
})

table.assign(data.raw.item["bio-fuel"], {
    fuel_acceleration_multiplier = 1.0,
    fuel_top_speed_multiplier = 1.0,
    fuel_emissions_multiplier = 0.5
})

table.assign(data.raw.item["advanced-fuel"], {
    fuel_acceleration_multiplier = 1.125,
    fuel_top_speed_multiplier = 1.125,
    fuel_emissions_multiplier = 1.5
})


-- Train Fuel

-- Diesel Fuel
table.assign(data.raw.item["el_train_fuel_diesel_item"], {
    fuel_acceleration_multiplier = 1.25,
    fuel_top_speed_multiplier = 1.25,
    fuel_emissions_multiplier = 1.0
})

-- Energized Diesel Fuel
table.assign(data.raw.item["el_train_fuel_diesel_energized_item"], {
    fuel_acceleration_multiplier = 1.375,
    fuel_top_speed_multiplier = 1.3,
    fuel_emissions_multiplier = 1.5
})

-- Super Energized Diesel Fuel
table.assign(data.raw.item["fi_fuel_train_crystal_item"], {
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 1.35,
    fuel_emissions_multiplier = 1.5
})


-- Nuclear Fuel

-- Thorium Fuel Rod
table.assign(data.raw.item["fi_basic_thorium_fuel_item"], {
    fuel_acceleration_multiplier = 1.5,
    fuel_top_speed_multiplier = 1.5
})

-- Uranium-233 Fuel Rod
table.assign(data.raw.item["fi_advanced_thorium_fuel_item"], {
    fuel_acceleration_multiplier = 1.625,
    fuel_top_speed_multiplier = 1.5
})

-- Uranium-235 Fuel Rod
table.assign(data.raw.item["fi_basic_fuel_item"], {
    fuel_acceleration_multiplier = 1.75,
    fuel_top_speed_multiplier = 1.5
})

-- Mox Fuel Rod
table.assign(data.raw.item["fi_advanced_fuel_item"], {
    fuel_acceleration_multiplier = 1.875,
    fuel_top_speed_multiplier = 1.625
})

-- High Energy Mox Fuel Rod
table.assign(data.raw.item["fi_pure_fuel_item"], {
    fuel_acceleration_multiplier = 2.0,
    fuel_top_speed_multiplier = 1.75
})