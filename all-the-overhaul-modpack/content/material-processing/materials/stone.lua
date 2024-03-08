local config = atom.processing.util.prepareConfig({
    name = "stone",
    order = "w",
    itemNames = {
        ore = "stone",
        dust = "atom-stone-dust",
        sand = "sand"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/stone.png", icon_size = 64, icon_mipmaps = 4 },
        "dust",
        sand = { icon = "__Krastorio2Assets__/icons/items-with-variations/sand/sand.png", icon_size = 64, icon_mipmaps = 4 }
    },
    unlockedBy = {}
})

local dustToSandRecipe = {
    type = "recipe",
    name = "atom-" .. config.name .. "-sand",
    icons = { config.icons.sand },
    category = "mashering",
    energy_required = 3.2,
    ingredients = {
        { config.itemNames.dust, 4 }
    },
    results = {
        { name = config.itemNames.sand, amount = 10 },
    },
    enabled = false
}

local create = atom.processing.create(config)

data:extend({
    dustToSandRecipe,
    create.oreToDustRecipe(),
    create.item("dust")
})

atom.util.recipe.unlockedByTechnology(dustToSandRecipe.name, "5d-masher-1")

atom.processing.util.setItemIcons(config)
atom.processing.util.setSubGroup(config)

atom.processing.materials.stone = config