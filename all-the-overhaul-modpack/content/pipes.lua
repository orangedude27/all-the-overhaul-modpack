local function bob_pipepictures(pipe_type)
    return {
        straight_vertical_single = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" ..
                pipe_type .. "/hr-pipe-straight-vertical-single.png",
            priority = "extra-high",
            width = 160,
            height = 160,
            scale = 0.5,
        },
        straight_vertical = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-straight-vertical.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_vertical_window = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" ..
                pipe_type .. "/hr-pipe-straight-vertical-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_horizontal_window = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" ..
                pipe_type .. "/hr-pipe-straight-horizontal-window.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        straight_horizontal = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_up_right = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-corner-up-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_up_left = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-corner-up-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_down_right = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-corner-down-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        corner_down_left = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-corner-down-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_up = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-t-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_down = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-t-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_right = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-t-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        t_left = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-t-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        cross = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-cross.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_up = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-ending-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_down = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-ending-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_right = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-ending-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        ending_left = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-ending-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        horizontal_window_background = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" ..
                pipe_type .. "/hr-pipe-horizontal-window-background.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        vertical_window_background = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" ..
                pipe_type .. "/hr-pipe-vertical-window-background.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        fluid_background = {
            filename = "__base__/graphics/entity/pipe/fluid-background.png",
            priority = "extra-high",
            width = 64,
            height = 40,
            scale = 0.5,
        },
        low_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 18,
        },
        middle_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 18,
        },
        high_temperature_flow = {
            filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
            priority = "extra-high",
            width = 160,
            height = 18,
        },
        gas_flow = {
            filename = "__base__/graphics/entity/pipe/steam.png",
            priority = "extra-high",
            line_length = 10,
            width = 48,
            height = 30,
            frame_count = 60,
            axially_symmetrical = false,
            direction_count = 1,
        },
    }
end

local function bob_pipetogroundpictures(pipe_type)
    return {
        north = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-to-ground-up.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        south = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-to-ground-down.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        west = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-to-ground-left.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
        east = {
            filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-to-ground-right.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
        },
    }
end

local function bob_pipecoverspictures(pipe_type)
    return {
        north = {
            layers = {
                {
                    filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-cover-north.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
        east = {
            layers = {
                {
                    filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-cover-east.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
        south = {
            layers = {
                {
                    filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-cover-south.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
        west = {
            layers = {
                {
                    filename = "__all-the-overhaul-modpack__/graphics/pipe-" .. pipe_type .. "/hr-pipe-cover-west.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                },
                {
                    filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
                    priority = "extra-high",
                    width = 128,
                    height = 128,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
    }
end

-- brass pipe
data:extend({
    {
        type = "pipe",
        name = "brass-pipe",
        icon = "__all-the-overhaul-modpack__/graphics/icons/brass-pipe.png",
        icon_size = 32,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "brass-pipe" },
        max_health = 200,
        corpse = "pipe-remnants",
        resistances = {
            {
                type = "fire",
                percent = 90,
            },
        },
        fast_replaceable_group = "pipe",
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        fluid_box = {
            volume = 150,
            pipe_covers = bob_pipecoverspictures("brass"),
            pipe_connections = {
                { direction = defines.direction.north, position = { 0, 0 } },
                { direction = defines.direction.east,  position = { 0, 0 } },
                { direction = defines.direction.south, position = { 0, 0 } },
                { direction = defines.direction.west,  position = { 0, 0 } }
            },
            hide_connection_info = true
        },
        pictures = bob_pipepictures("brass"),
        working_sound = {
            sound = {
                {
                    filename = "__base__/sound/pipe.ogg",
                    volume = 0.65,
                },
            },
            match_volume_to_activity = true,
            max_sounds_per_type = 3,
        },
        horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
        vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
        type = "pipe-to-ground",
        name = "brass-pipe-to-ground",
        icon = "__all-the-overhaul-modpack__/graphics/icons/brass-pipe-to-ground.png",
        icon_size = 32,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "brass-pipe-to-ground" },
        max_health = 250,
        corpse = "small-remnants",
        resistances = {
            {
                type = "fire",
                percent = 80,
            },
        },
        fast_replaceable_group = "pipe",
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        fluid_box = {
            volume = 150,
            pipe_covers = bob_pipecoverspictures("brass"),
            pipe_connections = {
                { direction = defines.direction.north, position = { 0, 0 } },
                {
                    connection_type = "underground",
                    direction = defines.direction.south,
                    position = { 0, 0 },
                    max_underground_distance = 60
                }
            },
            hide_connection_info = true
        },
        underground_sprite = {
            filename = "__core__/graphics/arrows/underground-lines.png",
            priority = "extra-high-no-scale",
            width = 64,
            height = 64,
            scale = 0.5,
        },
        underground_remove_pipes_sprite = {
            filename = "__core__/graphics/arrows/underground-lines-remove.png",
            priority = "high",
            width = 64,
            height = 64,
            x = 0,
            scale = 0.5,
        },
        pictures = bob_pipetogroundpictures("brass"),
    },
})

data:extend({
    {
        type = "item-subgroup",
        name = "fluid-brass-pipes",
        group = "pipes",
        order = "raw-07"
    },
    {
        type = "item",
        name = "brass-pipe",
        icon = "__all-the-overhaul-modpack__/graphics/icons/brass-pipe.png",
        icon_size = 32,
        subgroup = "fluid-brass-pipes",
        order = "01",
        place_result = "brass-pipe",
        stack_size = 200,
    },

    {
        type = "item",
        name = "brass-pipe-to-ground",
        icon = "__all-the-overhaul-modpack__/graphics/icons/brass-pipe-to-ground.png",
        icon_size = 32,
        subgroup = "fluid-brass-pipes",
        order = "02",
        place_result = "brass-pipe-to-ground",
        stack_size = 200,
    },
})

data:extend({
    {
        type = "recipe",
        name = "brass-pipe",
        enabled = false,
        ingredients = {
            { type = "item", name = "bolted-flange", amount = 1 },
            { type = "item", name = "brass-plate",   amount = 5 },
        },
        results = { { type = "item", name = "brass-pipe", amount = 1 } },
    },

    {
        type = "recipe",
        name = "brass-pipe-to-ground",
        enabled = false,
        ingredients = {
            { type = "item", name = "brass-pipe",    amount = 20 },
            { type = "item", name = "brass-plate",   amount = 2 },
            { type = "item", name = "bismuth-plate", amount = 2 },
            { type = "item", name = "lead-plate",    amount = 1 },
            { type = "item", name = "tin-plate",     amount = 1 },
        },
        results = { { type = "item", name = "brass-pipe-to-ground", amount = 2 } },
    },
})

data:extend({
    {
        type = "technology",
        name = "brass-fluid-handling",
        icon = "__all-the-overhaul-modpack__/graphics/icons/brass-fluid-handling.png",
        icon_size = 256,
        icon_mipmaps = 4,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "brass-pipe",
            },
            {
                type = "unlock-recipe",
                recipe = "brass-pipe-to-ground",
            },
        },
        prerequisites = { "kr-steel-fluid-handling", },
        unit = {
            count = 200,
            ingredients = {
                { "kr-basic-tech-card",      1 },
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 30,
        },
    },
})
