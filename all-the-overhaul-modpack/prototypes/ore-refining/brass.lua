local config = {
    name = "brass",
    itemNames = {
        plate = "brass-plate",
        ingot = "brass-ingot",
        molten = "atom-brass-molten"
    },
    icons = {
        plate = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-plate.png", icon_size = 64 },
        ingot = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-ingot.png", icon_size = 64 },
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 } -- TODO
    },
    additionalResults = {},
    additionalIngredient = {}
}

local _ingotToMoltenRecipe = ingotToMoltenRecipe(config)
_ingotToMoltenRecipe.ingredients = {
    { name = "se-copper-ingot", amount = 2 },
    { name = "zinc-ingot", amount = 2 }
}

data:extend({
    _ingotToMoltenRecipe,
    moltenToPlateRecipe(config),
    {
        type = "recipe",
        name = "atom-" .. config.name .. "-plate-dust",
        icons = {
            config.icons.plate,
            createSmallIcon({ icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32, icon_mipmaps = 3 }),
        },
        category = "smelting",
        energy_required = 48,
        ingredients = {
            { name = "5d-copper-dust", amount = 11 },
            { name = "atom-zinc-dust", amount = 11 }
        },
        results = {
            { name = config.itemNames.plate, amount = 15 }
        },
        main_product = config.itemNames.plate
    },
    {
        type = "fluid",
        name = "atom-" .. config.name .. "-molten",
        default_temperature = 232, -- TODO
        max_temperature = 232, -- TODO
        base_color = { r = 255, g = 160, b = 60 }, -- TODO
        flow_color = { r = 255, g = 160, b = 60 }, -- TODO
        icons = { config.icons.molten },
        order = "a[molten]-b",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid"
    }
})