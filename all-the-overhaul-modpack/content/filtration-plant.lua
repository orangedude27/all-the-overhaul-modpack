-- Original code from Seatorio by Rebecca-x https://mods.factorio.com/mod/SeaTorio

-- Items
-- MK0
local t0_kr_filtration_plant_item = table.deepcopy(data.raw["item"]["kr-filtration-plant"])
table.assign(t0_kr_filtration_plant_item, {
    name = "t0-filtration-plant",
    icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t0-filtration-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "g[kr-filtration-plant-0]",
    place_result = "t0-filtration-plant"
})
data:extend({ t0_kr_filtration_plant_item })

local t0_kr_filtration_plant = table.deepcopy(data.raw["assembling-machine"]["kr-filtration-plant"])
table.assign(t0_kr_filtration_plant, {
    name = "t0-filtration-plant",
    module_specification = { module_slots = 3 },
    energy_usage = "500kW",
    crafting_speed = 1,
    next_upgrade = "kr-filtration-plant",
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/filtration-plant.png",
                priority = "high",
                width = 230,
                height = 260,
                shift = { 0, -0.2 },
                frame_count = 1,
                scale = 1,
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/hr-filtration-plant.png",
                    priority = "high",
                    width = 460,
                    height = 520,
                    shift = { 0, -0.2 },
                    frame_count = 1,
                    scale = 0.5,
                },
            },
            {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-sh.png",
                priority = "high",
                width = 249,
                height = 219,
                shift = { 0.33, 0.32 },
                frame_count = 1,
                scale = 1,
                draw_as_shadow = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-sh.png",
                    priority = "high",
                    width = 498,
                    height = 438,
                    shift = { 0.33, 0.32 },
                    frame_count = 1,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
    },
    working_visualisations = {
        {
            animation = {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/filtration-plant-working.png",
                priority = "high",
                width = 170,
                height = 185,
                shift = { 0.3, -0.59 },
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                scale = 1,
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/hr-filtration-plant-working.png",
                    priority = "high",
                    width = 340,
                    height = 370,
                    shift = { 0.3, -0.59 },
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    scale = 0.5,
                },
            },

        },
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-dirty-mask.png",
                width = 78,
                height = 60,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                shift = { 1.61, -1.02 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-dirty-mask.png",
                    width = 156,
                    height = 120,
                    scale = 0.5,
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    shift = { 1.61, -1.02 },
                },
            },
        },
        {
            apply_recipe_tint = "secondary",
            animation = {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-clear-mask.png",
                width = 78,
                height = 60,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                shift = { 1.61, 1.31 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-clear-mask.png",
                    width = 156,
                    height = 120,
                    scale = 0.5,
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    shift = { 1.61, 1.31 },
                },
            },
        },
    }
})
data:extend({ t0_kr_filtration_plant })

-- MK2
local t2_kr_filtration_plant_item = table.deepcopy(data.raw["item"]["kr-filtration-plant"])
table.assign(t2_kr_filtration_plant_item, {
    name = "t2-filtration-plant",
    icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-filtration-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "h[kr-filtration-plant-2]",
    place_result = "t2-filtration-plant"
})
data:extend({ t2_kr_filtration_plant_item })

local t2_kr_filtration_plant = table.deepcopy(data.raw["assembling-machine"]["kr-filtration-plant"])
table.assign(t2_kr_filtration_plant, {
    name = "t2-filtration-plant",
    module_specification = { module_slots = 5 },
    energy_usage = "750kW",
    crafting_speed = 2.5,
    next_upgrade = "t3-filtration-plant",
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/filtration-plant.png",
                priority = "high",
                width = 230,
                height = 260,
                shift = { 0, -0.2 },
                frame_count = 1,
                scale = 1,
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/hr-filtration-plant.png",
                    priority = "high",
                    width = 460,
                    height = 520,
                    shift = { 0, -0.2 },
                    frame_count = 1,
                    scale = 0.5,
                },
            },
            {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-sh.png",
                priority = "high",
                width = 249,
                height = 219,
                shift = { 0.33, 0.32 },
                frame_count = 1,
                scale = 1,
                draw_as_shadow = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-sh.png",
                    priority = "high",
                    width = 498,
                    height = 438,
                    shift = { 0.33, 0.32 },
                    frame_count = 1,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
    },
    working_visualisations = {
        {
            animation = {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/filtration-plant-working.png",
                priority = "high",
                width = 170,
                height = 185,
                shift = { 0.3, -0.59 },
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                scale = 1,
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/hr-filtration-plant-working.png",
                    priority = "high",
                    width = 340,
                    height = 370,
                    shift = { 0.3, -0.59 },
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    scale = 0.5,
                },
            },
        },
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-dirty-mask.png",
                width = 78,
                height = 60,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                shift = { 1.61, -1.02 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-dirty-mask.png",
                    width = 156,
                    height = 120,
                    scale = 0.5,
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    shift = { 1.61, -1.02 },
                },
            },
        },
        {
            apply_recipe_tint = "secondary",
            animation = {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-clear-mask.png",
                width = 78,
                height = 60,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                shift = { 1.61, 1.31 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-clear-mask.png",
                    width = 156,
                    height = 120,
                    scale = 0.5,
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    shift = { 1.61, 1.31 },
                },
            },
        },
    }
})
data:extend({ t2_kr_filtration_plant })
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t2-filtration-plant"

-- MK3
local t3_kr_filtration_plant_item = table.deepcopy(data.raw["item"]["kr-filtration-plant"])
table.assign(t3_kr_filtration_plant_item, {
    name = "t3-filtration-plant",
    icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-filtration-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "i[kr-filtration-plant-3]",
    place_result = "t3-filtration-plant"
})
data:extend({ t3_kr_filtration_plant_item })

local t3_kr_filtration_plant = table.deepcopy(data.raw["assembling-machine"]["kr-filtration-plant"])
table.assign(t3_kr_filtration_plant, {
    name = "t3-filtration-plant",
    module_specification = { module_slots = 6 },
    energy_usage = "875kW",
    crafting_speed = 3.75,
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/filtration-plant.png",
                priority = "high",
                width = 230,
                height = 260,
                shift = { 0, -0.2 },
                frame_count = 1,
                scale = 1,
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/hr-filtration-plant.png",
                    priority = "high",
                    width = 460,
                    height = 520,
                    shift = { 0, -0.2 },
                    frame_count = 1,
                    scale = 0.5,
                },
            },
            {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-sh.png",
                priority = "high",
                width = 249,
                height = 219,
                shift = { 0.33, 0.32 },
                frame_count = 1,
                scale = 1,
                draw_as_shadow = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-sh.png",
                    priority = "high",
                    width = 498,
                    height = 438,
                    shift = { 0.33, 0.32 },
                    frame_count = 1,
                    scale = 0.5,
                    draw_as_shadow = true,
                },
            },
        },
    },
    working_visualisations = {
        {
            animation = {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/filtration-plant-working.png",
                priority = "high",
                width = 170,
                height = 185,
                shift = { 0.3, -0.59 },
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                scale = 1,
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/hr-filtration-plant-working.png",
                    priority = "high",
                    width = 340,
                    height = 370,
                    shift = { 0.3, -0.59 },
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    scale = 0.5,
                },
            },
        },
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-dirty-mask.png",
                width = 78,
                height = 60,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                shift = { 1.61, -1.02 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-dirty-mask.png",
                    width = 156,
                    height = 120,
                    scale = 0.5,
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    shift = { 1.61, -1.02 },
                },
            },
        },
        {
            apply_recipe_tint = "secondary",
            animation = {
                filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-clear-mask.png",
                width = 78,
                height = 60,
                frame_count = 30,
                line_length = 6,
                animation_speed = 0.6,
                shift = { 1.61, 1.31 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-clear-mask.png",
                    width = 156,
                    height = 120,
                    scale = 0.5,
                    frame_count = 30,
                    line_length = 6,
                    animation_speed = 0.6,
                    shift = { 1.61, 1.31 },
                },
            },
        },
    }
})
data:extend({ t3_kr_filtration_plant })


-- Recipes
data:extend({
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t0-filtration-plant",
        ingredients = {
            { "galvanized-steel-plate", 10 },
            { "automation-core", 3 },
            { "flow-controller", 5 },
            { "basic-chemical-plant", 1 },
            { "glass", 10 },
            { "el_materials_ALK", 10 },
        },
        result = "t0-filtration-plant",
    },
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t2-filtration-plant",
        ingredients = {
            { "imersium-beam", 20 },
            { "advanced-multi-cylinder-engine", 10 },
            { "glass", 10 },
            { "kr-filtration-plant", 1 },
            { "kr-steel-pipe", 10 },
            { "imersium-plate", 20 },
            { "tungsten-carbide", 5 },
            { "el_materials_ALK", 20 },
        },
        result = "t2-filtration-plant",
    },
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t3-filtration-plant",
        ingredients = {
            { "se-heavy-girder", 20 },
            { "advanced-multi-cylinder-engine", 20 },
            { "glass", 10 },
            { "t2-filtration-plant", 1 },
            { "brass-pipe", 10 },
            { "se-iridium-plate", 20 },
            { "tungsten-carbide", 5 },
            { "el_materials_ALK", 20 },
        },
        result = "t3-filtration-plant",
    },
})


-- Technology
data:extend({
    {
        type = "technology",
        name = "t0-filtration-plant",
        effects = {},
        icon = "__Krastorio2Assets__/icons/entities/filtration-plant.png",
        icon_size = 64,
        prerequisites = { "advanced-multi-cylinder-engine" },
        unit = {
            count = 50,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
            },
        },
    },
    {
        type = "technology",
        name = "t2-filtration-plant",
        effects = {
            { type = "unlock-recipe", recipe = "t2-filtration-plant" },
        },
        icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-filtration-plant.png",
        icon_size = 64,
        prerequisites = { "t0-filtration-plant", "kr-optimization-tech-card" },
        unit = {
            count = 300,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "se-rocket-science-pack", 1 },
                { "space-science-pack", 1 },
                { "kr-optimization-tech-card", 1 },
            },
        },
    },
    {
        type = "technology",
        name = "t3-filtration-plant",
        effects = {
            { type = "unlock-recipe", recipe = "t3-filtration-plant" },
        },
        icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-filtration-plant.png",
        icon_size = 64,
        prerequisites = { "t2-filtration-plant", "se-heavy-girder", "se-biological-science-pack-1" },
        unit = {
            count = 300,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "se-rocket-science-pack", 1 },
                { "space-science-pack", 1 },
                { "kr-optimization-tech-card", 1 },
                { "se-material-science-pack-1", 1 },
                { "se-biological-science-pack-1", 1 },
            },
        },
    }
})