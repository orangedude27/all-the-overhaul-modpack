-- Vanilla Locomotive
table.assign(data.raw.locomotive["locomotive"], {
    weight = 2500,
    max_speed = 0.8,
    max_power = "1MW",
    braking_force = 30,
    friction_force = 0.5,
    air_resistance = 0.0075,
    reversing_power_modifier = 0.5,
    max_health = 1000
})
table.assign(data.raw.locomotive["locomotive"].energy_source, {
    effectivity = 0.7,
    fuel_categories = { "chemical", "kr-vehicle-fuel" },
    fuel_inventory_size = 3
})

-- Diesel Train
table.assign(data.raw.locomotive["el_diesel_train_entity"], {
    weight = 3000,
    max_speed = 0.96,
    max_power = "1.6MW",
    braking_force = 40,
    friction_force = 0.5,
    air_resistance = 0.0075,
    reversing_power_modifier = 0.6,
    max_health = 2000
})
table.assign(data.raw.locomotive["el_diesel_train_entity"].energy_source, {
    effectivity = 0.8,
    fuel_categories = { "kr-vehicle-fuel", "el_train_fuel" },
    fuel_inventory_size = 2
})

-- Nuclear Locomotive
table.assign(data.raw.locomotive["kr-nuclear-locomotive"], {
    weight = 4000,
    max_speed = 1.067,
    max_power = "2.67MW",
    braking_force = 60,
    friction_force = 0.5,
    air_resistance = 0.0075,
    reversing_power_modifier = 0.6,
    equipment_grid = "kr-nuclear-locomotive-grid",
    max_health = 3000
})
table.assign(data.raw.locomotive["kr-nuclear-locomotive"].energy_source, {
    effectivity = 0.9,
    fuel_categories = { "kr-vehicle-fuel", "el_train_fuel", "nuclear" },
    fuel_inventory_size = 2,
    burnt_inventory_size = 2
})

-- EM Suspension Train 1
table.assign(data.raw.locomotive["gr_magnet_train_pre_entity"], {
    weight = 6000,
    max_speed = 1.33,
    max_power = "5.33MW",
    braking_force = 100,
    friction_force = 0.25,
    air_resistance = 0.0025,
    reversing_power_modifier = 0.9,
    equipment_grid = "gr_magnet_train_pre_grid",
    max_health = 2000
})
table.assign(data.raw.locomotive["gr_magnet_train_pre_entity"].energy_source, {
    effectivity = 1,
    fuel_categories = { "nuclear", "nuclear-advanced", "nuclear-high-energy" },
    fuel_inventory_size = 1,
    burnt_inventory_size = 1
})

-- EM Suspension Train 2
table.assign(data.raw.locomotive["gr_magnet_train_entity"], {
    weight = 4000,
    max_speed = 3.0,
    max_power = "10MW",
    braking_force = 200,
    friction_force = 0.15,
    air_resistance = 0.0015,
    reversing_power_modifier = 1,
    equipment_grid = "gr_magnet_train_grid",
    max_health = 2000
})