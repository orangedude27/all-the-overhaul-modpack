-- change bio garden
data.raw["assembling-machine"]["bi-bio-garden"].allowed_effects = { "pollution", "consumption" }
data.raw["assembling-machine"]["bi-bio-garden"].module_specification = {
    module_info_icon_shift = {
        0,
        0.8
    },
    module_slots = 1
}

-- pollution + effectivity module
data:extend({
    {
        type = "item-subgroup",
        name = "pollution-create-module",
        group = "beacons",
        order = "raw-04"
    },
    {
        type = "module-category",
        name = "pollution-create",
    },
    {
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
    },

})

data:extend({
    {
        type = "recipe",
        name = "bi-purified-air-0",
        icon = "__all-the-overhaul-modpack__/graphics/icons/clean-air_mk0.png",
        icon_size = 64,
        category = "clean-air",
        subgroup = "bio-bio-gardens-fluid",
        order = "bi-purified-air-0",
        enabled = false,
        always_show_made_in = true,
        allow_decomposition = false,
        energy_required = 10,
        emissions_multiplier = 0.25,
        ingredients =
        {
            { type = "fluid", name = "water", amount = 50 },
        },
        results = { { type = "item", name = "bi-purified-air", amount = 1, probability = 0 } },
        main_product = "",
    },


    {
        type = "recipe",
        name = "pollution_create_module_1",
        enabled = false,
        ingredients = {
            { "effectivity-module",    1 },
            { "electronic-circuit",    10 },
            { "pcb-solder",            10 },
            { "electronic-components", 10 },
            { "biomass",               10 },
        },
        energy_required = 10,
        result = "pollution_create_module_1",
    },

})

table.insert(data.raw.technology["bi-tech-fertilizer"].effects, {
    type = "unlock-recipe",
    recipe = "bi-purified-air-0"
})

data:extend({
    {
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
                { "basic-tech-card",         1 },
                { "automation-science-pack", 1 },
                { "logistic-science-pack",   1 },
            },
            time = 30,
        },
    },
})
