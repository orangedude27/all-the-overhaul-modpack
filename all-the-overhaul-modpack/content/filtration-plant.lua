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
    module_slots = 3,
    energy_usage = "500kW",
    crafting_speed = 1,
    next_upgrade = "kr-filtration-plant",
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/hr-filtration-plant.png",
                priority = "high",
                width = 460,
                height = 520,
                shift = { 0, -0.2 },
                frame_count = 1,
                scale = 0.5,
            },
            {
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
    working_visualisations = {
        {
            animation = {
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
        {
            apply_recipe_tint = "primary",
            animation = {
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
        {
            apply_recipe_tint = "secondary",
            animation = {
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
    }
})
t0_kr_filtration_plant.minable.result = "t0-filtration-plant"
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
    module_slots = 5,
    energy_usage = "750kW",
    crafting_speed = 2.5,
    next_upgrade = "t3-filtration-plant",
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/hr-filtration-plant.png",
                priority = "high",
                width = 460,
                height = 520,
                shift = { 0, -0.2 },
                frame_count = 1,
                scale = 0.5,
            },
            {
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
    working_visualisations = {
        {
            animation = {
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
        {
            apply_recipe_tint = "primary",
            animation = {
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
        {
            apply_recipe_tint = "secondary",
            animation = {
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
    }
})
t2_kr_filtration_plant.minable.result = "t2-filtration-plant"
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
    module_slots = 6,
    energy_usage = "875kW",
    crafting_speed = 3.75,
    animation = {
        layers = {
            {
                filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/hr-filtration-plant.png",
                priority = "high",
                width = 460,
                height = 520,
                shift = { 0, -0.2 },
                frame_count = 1,
                scale = 0.5,
            },
            {
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
    working_visualisations = {
        {
            animation = {
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
        {
            apply_recipe_tint = "primary",
            animation = {
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
        {
            apply_recipe_tint = "secondary",
            animation = {
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
    }
})
t3_kr_filtration_plant.minable.result = "t3-filtration-plant"
data:extend({ t3_kr_filtration_plant })


-- Recipes
data:extend({
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t0-filtration-plant",
        ingredients = {
            { type = "item", name = "galvanized-steel-plate", amount = 10 },
            { type = "item", name = "kr-automation-core", amount = 3 },
            { type = "item", name = "flow-controller", amount = 5 },
            { type = "item", name = "basic-chemical-plant", amount = 1 },
            { type = "item", name = "kr-glass", amount = 10 },
            { type = "item", name = "el_ALK", amount = 10 },
        },
        results = {{type="item", name="t0-filtration-plant", amount=1}},
    },
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t2-filtration-plant",
        ingredients = {
            { type = "item", name = "kr-imersium-beam", amount = 20 },
            { type = "item", name = "advanced-multi-cylinder-engine", amount = 10 },
            { type = "item", name = "kr-glass", amount = 10 },
            { type = "item", name = "kr-filtration-plant", amount = 1 },
            { type = "item", name = "kr-steel-pipe", amount = 10 },
            { type = "item", name = "kr-imersium-plate", amount = 20 },
            { type = "item", name = "tungsten-carbide", amount = 5 },
            { type = "item", name = "el_ALK", amount = 20 },
        },
        results = {{type="item", name="t2-filtration-plant", amount=1}},
    },
    {
        type = "recipe",
        enabled = false,
        energy_required = 10,
        name = "t3-filtration-plant",
        ingredients = {
            { type = "item", name = "se-heavy-girder", amount = 20 },
            { type = "item", name = "advanced-multi-cylinder-engine", amount = 20 },
            { type = "item", name = "kr-glass", amount = 10 },
            { type = "item", name = "t2-filtration-plant", amount = 1 },
            { type = "item", name = "brass-pipe", amount = 10 },
            { type = "item", name = "se-iridium-plate", amount = 20 },
            { type = "item", name = "tungsten-carbide", amount = 5 },
            { type = "item", name = "el_ALK", amount = 20 },
        },
        results = {{type="item", name="t3-filtration-plant", amount=1}},
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