-- Cargo wagons

table.assign(data.raw["cargo-wagon"]["cargo-wagon"], {
    inventory_size = 40,
    max_health = 750,
    weight = 1000,
    max_speed = 1.66
})

table.assign(data.raw["cargo-wagon"]["black-cargo-wagon"], {
    inventory_size = 60,
    max_health = 1000,
    weight = 1250,
    max_speed = 2.0
})

table.assign(data.raw["cargo-wagon"]["gr_magnet_wagon_pre"], {
    inventory_size = 80,
    max_health = 1500,
    weight = 1500,
    max_speed = 2.66
})

table.assign(data.raw["cargo-wagon"]["gr_magnet_wagon"], {
    inventory_size = 100,
    max_health = 2000,
    weight = 2000,
    max_speed = 3.0
})


-- Fluid wagons

table.assign(data.raw["fluid-wagon"]["fluid-wagon"], {
    capacity = 25000,
    max_health = 750,
    weight = 1000,
    max_speed = 1.66
})

table.assign(data.raw["fluid-wagon"]["black-fluid-wagon"], {
    capacity = 50000,
    max_health = 1000,
    weight = 1500,
    max_speed = 2.0
})

table.assign(data.raw["fluid-wagon"]["gr_magnet_tanker_pre"], {
    capacity = 75000,
    max_health = 1500,
    weight = 2000,
    max_speed = 2.66
})

table.assign(data.raw["fluid-wagon"]["gr_magnet_tanker"], {
    capacity = 100000,
    max_health = 2000,
    weight = 2500,
    max_speed = 3.0
})