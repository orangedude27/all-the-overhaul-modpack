local config = {
    name = "stone",
    order = "w",
    itemNames = {
        ore = "stone",
        dust = "atom-stone-dust"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/stone.png", icon_size = 64, icon_mipmaps = 4 },
        "dust"
    },
    unlockedBy = {}
}

createIcons(config)

local dustToSandRecipe = {
    type = "recipe",
    name = "atom-" .. config.name .. "-sand",
    icons = { { icon = "__Krastorio2Assets__/icons/items-with-variations/sand/sand.png", icon_size = 64, icon_mipmaps = 4 } },
    category = "mashering",
    energy_required = 3.2,
    ingredients = {
        { config.itemNames.dust, 4 }
    },
    results = {
        { name = "sand", amount = 10 },
    },
    enabled = false
}
unlockedBy(dustToSandRecipe.name, "5d-masher-1")

data:extend({
    oreToDustRecipe(config),
    dustToSandRecipe,
    item(config, "dust")
})

setItemIcons(config)
setSubGroup(config)