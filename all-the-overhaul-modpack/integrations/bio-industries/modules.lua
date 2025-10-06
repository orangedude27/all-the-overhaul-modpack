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
        pollution = 1,
        consumption = -0.4,
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
        { type = "item", name = "efficiency-module", amount = 1 },
        { type = "item", name = "electronic-circuit", amount = 10 },
        { type = "item", name = "pcb-solder", amount = 10 },
        { type = "item", name = "kr-electronic-components", amount = 10 },
        { type = "item", name = "kr-biomass", amount = 10 },
    },
    energy_required = 10,
    results = {{type="item", name="pollution_create_module_1", amount=1}},
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
            { "kr-basic-tech-card", 1 },
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