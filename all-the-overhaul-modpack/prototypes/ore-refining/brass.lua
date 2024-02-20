local config = {
    name = "brass",
    itemNames = {
        plate = "brass-plate",
        ingot = "brass-ingot",
        molten = "molten-brass"
    },
    icons = {
        plate = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-plate.png", icon_size = 64 },
        ingot = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-ingot.png", icon_size = 64 },
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 } -- TODO
    },
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
        type = "fluid",
        name = "molten-brass",
        default_temperature = 3422, -- TODO
        max_temperature = 3422, -- TODO
        base_color = { r = 255, g = 160, b = 60 }, -- TODO
        flow_color = { r = 255, g = 160, b = 60 }, -- TODO
        icons = { config.icons.molten },
        order = "a[molten]-a",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid"
    }
})