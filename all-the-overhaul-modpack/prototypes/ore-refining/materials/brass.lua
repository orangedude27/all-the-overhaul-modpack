local config = {
    name = "brass",
    order = "c",
    enableAtStart = true,
    itemNames = {
        plate = "brass-plate",
        ingot = "brass-ingot",
        molten = "atom-brass-molten"
    },
    icons = {
        ore = atom.refining.config.copper.icons.ore,
        plate = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-plate.png", icon_size = 64 },
        dust = atom.refining.config.copper.icons.dust,
        ingot = { icon = "__BrassTacks__/graphics/galdoc/icons/brass-ingot.png", icon_size = 64 },
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 } -- TODO
    },
    additionalIngredient = {},
    additionalResults = {},
    unlockedBy = {}
}

local _oreToPlateRecipe = oreToPlateRecipe(config)
_oreToPlateRecipe.ingredients = {
    { "copper-ore", 6 },
    { "zinc-ore", 6 }
}
table.insert(_oreToPlateRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.ore))

local _dustToPlateRecipe = dustToPlateRecipe(config)
_dustToPlateRecipe.ingredients = {
    { "5d-copper-dust", 9 },
    { "atom-zinc-dust", 9 }
}
table.insert(_dustToPlateRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.dust))

local _ingotToMoltenRecipe = ingotToMoltenRecipe(config)
_ingotToMoltenRecipe.ingredients = {
    { name = "se-copper-ingot", amount = 1 },
    { name = "zinc-ingot", amount = 1 }
}
table.insert(_ingotToMoltenRecipe.icons, createSmallIconRight(atom.refining.config.zinc.icons.ingot))

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

setStackSizes(config)
setSubGroup(config)

return config