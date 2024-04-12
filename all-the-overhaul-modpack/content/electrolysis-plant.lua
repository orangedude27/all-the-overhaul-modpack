-- Original code from Seatorio by Rebecca-x https://mods.factorio.com/mod/SeaTorio

-- Items
-- MK0
local t0_kr_electrolysis_plant_item = table.deepcopy(data.raw["item"]["kr-electrolysis-plant"])
table.assign(t0_kr_electrolysis_plant_item, {
    name = "t0-electrolysis-plant",
    icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t0-electrolysis-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "j[kr-electrolysis-plant-0]",
    place_result = "t0-electrolysis-plant"
})
data:extend({ t0_kr_electrolysis_plant_item })

local t0_kr_electrolysis_plant = table.deepcopy(data.raw["assembling-machine"]["kr-electrolysis-plant"])
table.assign(t0_kr_electrolysis_plant, {
    name = "t0-electrolysis-plant",
    module_specification = { module_slots = 3 },
    energy_usage = "2.5MW",
    crafting_speed = 1,
    next_upgrade = "kr-electrolysis-plant",
    se_allow_in_space = true,
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk0/electrolysis-plant.png",
                width = 190,
                height = 190,
                frame_count = 1,
                shift = { 0, 0 },
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk0/hr-electrolysis-plant.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 1,
                    shift = { 0, 0 },
                },
            },
            {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
                width = 190,
                height = 190,
                frame_count = 1,
                draw_as_shadow = true,
                shift = { 0, 0 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = { 0, 0 },
                },
            },
        },
    },
    working_visualisations = {
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
                width = 190,
                height = 190,
                frame_count = 12,
                line_length = 6,
                animation_speed = 0.4,
                shift = { 0, 0 },
                blend_mode = "additive",
                draw_as_glow = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 12,
                    line_length = 6,
                    animation_speed = 0.4,
                    shift = { 0, 0 },
                    blend_mode = "additive",
                    draw_as_glow = true,
                },
            },
        },
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
                width = 190,
                height = 190,
                frame_count = 12,
                line_length = 6,
                animation_speed = 0.4,
                shift = { 0, 0 },
                draw_as_light = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 12,
                    line_length = 6,
                    animation_speed = 0.4,
                    shift = { 0, 0 },
                    draw_as_light = true,
                },
            },
        },
    }
})
t0_kr_electrolysis_plant.minable.result = "t0-electrolysis-plant"
data:extend({ t0_kr_electrolysis_plant })

-- MK2
local t2_kr_electrolysis_plant_item = table.deepcopy(data.raw["item"]["kr-electrolysis-plant"])
table.assign(t2_kr_electrolysis_plant_item, {
    name = "t2-electrolysis-plant",
    icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-electrolysis-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "k[kr-electrolysis-plant-2]",
    place_result = "t2-electrolysis-plant"
})
data:extend({ t2_kr_electrolysis_plant_item })

local t2_kr_electrolysis_plant = table.deepcopy(data.raw["assembling-machine"]["kr-electrolysis-plant"])
table.assign(t2_kr_electrolysis_plant, {
    name = "t2-electrolysis-plant",
    module_specification = { module_slots = 5 },
    energy_usage = "4MW",
    crafting_speed = 2.5,
    next_upgrade = "t3-electrolysis-plant",
    se_allow_in_space = true,
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk2/electrolysis-plant.png",
                width = 190,
                height = 190,
                frame_count = 1,
                shift = { 0, 0 },
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk2/hr-electrolysis-plant.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 1,
                    shift = { 0, 0 },
                },
            },
            {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
                width = 190,
                height = 190,
                frame_count = 1,
                draw_as_shadow = true,
                shift = { 0, 0 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = { 0, 0 },
                },
            },
        },
    },
    working_visualisations = {
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
                width = 190,
                height = 190,
                frame_count = 12,
                line_length = 6,
                animation_speed = 0.4,
                shift = { 0, 0 },
                blend_mode = "additive",
                draw_as_glow = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 12,
                    line_length = 6,
                    animation_speed = 0.4,
                    shift = { 0, 0 },
                    blend_mode = "additive",
                    draw_as_glow = true,
                },
            },
        },
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
                width = 190,
                height = 190,
                frame_count = 12,
                line_length = 6,
                animation_speed = 0.4,
                shift = { 0, 0 },
                draw_as_light = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 12,
                    line_length = 6,
                    animation_speed = 0.4,
                    shift = { 0, 0 },
                    draw_as_light = true,
                },
            },
        },
    }
})
t2_kr_electrolysis_plant.minable.result = "t2-electrolysis-plant"
data:extend({ t2_kr_electrolysis_plant })
data.raw["assembling-machine"]["kr-electrolysis-plant"].next_upgrade = "t2-electrolysis-plant"

-- MK3
local t3_kr_electrolysis_plant_item = table.deepcopy(data.raw["item"]["kr-electrolysis-plant"])
table.assign(t3_kr_electrolysis_plant_item, {
    name = "t3-electrolysis-plant",
    icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-electrolysis-plant.png",
    icon_size = 64,
    subgroup = "production-machine",
    order = "l[kr-electrolysis-plant-3]",
    place_result = "t3-electrolysis-plant"
})
data:extend({ t3_kr_electrolysis_plant_item })

local t3_kr_electrolysis_plant = table.deepcopy(data.raw["assembling-machine"]["kr-electrolysis-plant"])
table.assign(t3_kr_electrolysis_plant, {
    name = "t3-electrolysis-plant",
    module_specification = { module_slots = 6 },
    energy_usage = "5MW",
    crafting_speed = 3.75,
    se_allow_in_space = true,
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk3/electrolysis-plant.png",
                width = 190,
                height = 190,
                frame_count = 1,
                shift = { 0, 0 },
                hr_version = {
                    filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk3/hr-electrolysis-plant.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 1,
                    shift = { 0, 0 },
                },
            },
            {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
                width = 190,
                height = 190,
                frame_count = 1,
                draw_as_shadow = true,
                shift = { 0, 0 },
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 1,
                    draw_as_shadow = true,
                    shift = { 0, 0 },
                },
            },
        },
    },
    working_visualisations = {
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
                width = 190,
                height = 190,
                frame_count = 12,
                line_length = 6,
                animation_speed = 0.4,
                shift = { 0, 0 },
                blend_mode = "additive",
                draw_as_glow = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 12,
                    line_length = 6,
                    animation_speed = 0.4,
                    shift = { 0, 0 },
                    blend_mode = "additive",
                    draw_as_glow = true,
                },
            },
        },
        {
            apply_recipe_tint = "primary",
            animation = {
                filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
                width = 190,
                height = 190,
                frame_count = 12,
                line_length = 6,
                animation_speed = 0.4,
                shift = { 0, 0 },
                draw_as_light = true,
                hr_version = {
                    filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
                    width = 380,
                    height = 380,
                    scale = 0.5,
                    frame_count = 12,
                    line_length = 6,
                    animation_speed = 0.4,
                    shift = { 0, 0 },
                    draw_as_light = true,
                },
            },
        },
    }
})
t3_kr_electrolysis_plant.minable.result = "t3-electrolysis-plant"
data:extend({ t3_kr_electrolysis_plant })


-- Recipes
data:extend({
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t0-electrolysis-plant",
        ingredients = {
            { "galvanized-steel-plate", 10 },
            { "automation-core", 3 },
            { "flow-controller", 5 },
            { "copper-plate", 10 },
            { "glass", 10 },
            { "graphite", 10 },
            { "el_materials_ALK", 10 },
        },
        result = "t0-electrolysis-plant",
    },
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t2-electrolysis-plant",
        ingredients = {
            { "imersium-beam", 20 },
            { "advanced-multi-cylinder-engine", 10 },
            { "glass", 10 },
            { "kr-electrolysis-plant", 1 },
            { "kr-steel-pipe", 10 },
            { "rare-metals", 20 },
            { "hv-power-regulator", 5 },
            { "tungsten-carbide", 5 },
            { "el_materials_ALK", 20 },
        },
        result = "t2-electrolysis-plant",
    },
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t3-electrolysis-plant",
        ingredients = {
            { "se-heavy-girder", 20 },
            { "advanced-multi-cylinder-engine", 20 },
            { "glass", 10 },
            { "t2-electrolysis-plant", 1 },
            { "brass-pipe", 10 },
            { "se-holmium-plate", 20 },
            { "hv-power-regulator", 5 },
            { "tungsten-carbide", 5 },
            { "el_materials_ALK", 20 },
        },
        result = "t3-electrolysis-plant",
    },
})


-- Technology
data:extend({
    {
        type = "technology",
        name = "t0-electrolysis-plant",
        effects = {},
        icon = "__Krastorio2Assets__/icons/entities/electrolysis-plant.png",
        icon_size = 64,
        prerequisites = { "high-voltage-equipment", "advanced-multi-cylinder-engine" },
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
        name = "t2-electrolysis-plant",
        effects = {
            { type = "unlock-recipe", recipe = "t2-electrolysis-plant" },
        },
        icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-electrolysis-plant.png",
        icon_size = 64,
        prerequisites = { "t0-electrolysis-plant", "kr-optimization-tech-card" },
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
        name = "t3-electrolysis-plant",
        effects = {
            { type = "unlock-recipe", recipe = "t3-electrolysis-plant" },
        },
        icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-electrolysis-plant.png",
        icon_size = 64,
        prerequisites = { "t2-electrolysis-plant", "se-heavy-girder", "se-energy-science-pack-1" },
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
                { "se-energy-science-pack-1", 1 },
            },
        },
    }
})