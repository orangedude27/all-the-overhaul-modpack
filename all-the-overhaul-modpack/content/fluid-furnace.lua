local entity = table.deepcopy(data.raw.furnace["steel-furnace"])
table.assign(entity, {
    name = "fluid-furnace",
    energy_source = {
        type = "fluid",
        emissions_per_minute = 3,
        burns_fluid = true,
        scale_fluid_usage = true,
        fluid_box = {
            base_area = 1,
            height = 2,
            base_level = -1,
            pipe_connections = {
                { type = "input-output", position = { 1.5, 0.5 } },
                { type = "input-output", position = { -1.5, 0.5 } },
            },
            pipe_covers = pipecoverspictures(),
            pipe_picture = assembler2pipepictures(),
            production_type = "input-output",
        },
        smoke = {
            {
                name = "smoke",
                frequency = 10,
                north_position = { 0.7, -1.2 },
                east_position = { 0.7, -1.2 },
                south_position = { 0.7, -1.2 },
                west_position = { 0.7, -1.2 },
                starting_vertical_speed = 0.08,
                starting_frame_deviation = 60,
            },
        },
    }
})
entity.minable.result = "fluid-furnace"

local item = {
    type = "item",
    name = "fluid-furnace",
    icon = "__base__/graphics/icons/steel-furnace.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "b[steela-furnace]",
    place_result = "fluid-furnace",
    stack_size = 50,
}

local recipe = {
    type = "recipe",
    name = "fluid-furnace",
    energy_required = 2,
    enabled = false,
    ingredients = {
        { "steel-furnace", 1 },
        { "pipe", 2 },
    },
    result = "fluid-furnace",
}

local technology = {
    type = "technology",
    name = "fluid-furnace",
    icon_size = 256,
    icon_mipmaps = 4,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    prerequisites = {
        "advanced-material-processing",
        "oil-processing",
    },
    effects = {
        {
            type = "unlock-recipe",
            recipe = "fluid-furnace",
        },
    },
    unit = {
        count = 50,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
        },
        time = 30,
    },
    order = "c-c-a",
}

data:extend({
    entity,
    item,
    recipe,
    technology
})