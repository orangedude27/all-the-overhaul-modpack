if mods["se-space-trains"] then
    -- Put Space Locomotive between Nuclear locomotive and EM Suspension Train 1
    table.assign(data.raw.locomotive["space-locomotive"], {
        weight = 2000,
        max_speed = 1.8,
        max_power = "6MW",
        braking_force = 80,
        friction_force = 0.5,
        air_resistance = 0.0025,
        reversing_power_modifier = 1.0,
        equipment_grid = "space-locomotive-grid",
        max_health = 2000,
        fuel_inventory_size = 2,
        burnt_inventory_size = 2
    })

    -- Equal to Black Cargo Wagon
    table.assign(data.raw["cargo-wagon"]["space-cargo-wagon"], {
        inventory_size = 60,
        max_health = 1000,
        weight = 1250,
        max_speed = 2.0
    })

    -- Equal to Black Fluid Wagon
    table.assign(data.raw["fluid-wagon"]["space-fluid-wagon"], {
        capacity = 50000,
        max_health = 1000,
        weight = 1500,
        max_speed = 2.0
    })

    -- Grid
    local equipment = require("_functions/equipment")
    equipment.create_grid("space-locomotive-grid")
    equipment.add_categories_to_grid("space-locomotive-grid", { "solar-equipment", "transport-shield", "battery-equipment", "defense-equipment", "generator-equipment", "el_train_equipment", "fi_train_equipment" })
    local locSpaceGrid = data.raw["equipment-grid"]["space-locomotive-grid"]
    locSpaceGrid.width = 15
    locSpaceGrid.height = 6
end