-- Pollution + efficiency module
local subgroup = {
    type = "item-subgroup",
    name = "pollution-create-module",
    group = "beacons",
    order = "raw-04"
}

local moduleCategory = {
    type = "module-category",
    name = "pollution-create",
}

local entity = {
    type = "module",
    name = "pollution_create_module_1",
    icon = "__all-the-overhaul-modpack__/graphics/icons/pollution-create-module-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 1,
    order = "01",
    stack_size = 200,
    default_request_amount = 10,
    effect = {
        pollution = { bonus = 1 },
        consumption = { bonus = -0.4 },
    },
    beacon_tint = {
        primary = { r = 0.4, g = 0.3, b = 0.2 },
        secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
}

local recipe = {
    type = "recipe",
    name = "pollution_create_module_1",
    enabled = false,
    ingredients = {
        { "effectivity-module", 1 },
        { "electronic-circuit", 10 },
        { "pcb-solder", 10 },
        { "electronic-components", 10 },
        { "biomass", 10 },
    },
    energy_required = 10,
    result = "pollution_create_module_1",
}

local technology = {
    type = "technology",
    name = "pollution_create_module_1",
    icon = "__all-the-overhaul-modpack__/graphics/icons/pollution-create-module-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "pollution_create_module_1",
        },
    },
    prerequisites = { "modules", },
    unit = {
        count = 50,
        ingredients = {
            { "basic-tech-card", 1 },
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
        },
        time = 30,
    },
}

atom.util.applyAll({
    subgroup,
    moduleCategory,
    entity,
    recipe,
    technology
})