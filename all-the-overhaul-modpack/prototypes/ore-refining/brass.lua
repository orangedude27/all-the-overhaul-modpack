local config = {
    name = "brass",
    itemNames = {
        ore = "copper-ore",
        plate = "brass-plate",
        ingot = "brass-ingot",
        molten = "atom-brass-molten"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, icon_mipmaps = 4 },
        plate = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-plate.png", icon_size = 64 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32, icon_mipmaps = 3 },
        ingot = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-ingot.png", icon_size = 64 },
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 } -- TODO
    },
    additionalIngredient = {},
    additionalResults = {}
}

local _oreToPlateRecipe = oreToPlateRecipe(config)
_oreToPlateRecipe.ingredients = {
    { "copper-ore", 6 },
    { "zinc-ore", 6 }
}
table.insert(_oreToPlateRecipe.icons, createSmallIconRight({ icon = "__BrassTacks__/graphics/icons/zinc-ore.png", icon_size = 64, icon_mipmaps = 4 }))

local _dustToPlateRecipe = dustToPlateRecipe(config)
_dustToPlateRecipe.ingredients = {
    { "5d-copper-dust", 9 },
    { "atom-zinc-dust", 9 }
}
table.insert(_dustToPlateRecipe.icons, createSmallIconRight({ icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-zinc-dust.png", icon_size = 32, icon_mipmaps = 3 }))

local _ingotToMoltenRecipe = ingotToMoltenRecipe(config)
_ingotToMoltenRecipe.ingredients = {
    { name = "se-copper-ingot", amount = 1 },
    { name = "zinc-ingot", amount = 1 }
}
table.insert(_ingotToMoltenRecipe.icons, createSmallIconRight({ icon = "__BrassTacks__/graphics/galdoc/icons/zinc-ingot.png", icon_size = 64 }))

data:extend({
    _oreToPlateRecipe,
    _dustToPlateRecipe,
    _ingotToMoltenRecipe,
    moltenToPlateRecipe(config),
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