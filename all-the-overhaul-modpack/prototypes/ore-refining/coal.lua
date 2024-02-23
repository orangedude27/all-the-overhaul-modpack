local config = {
    name = "coal",
    itemNames = {
        ore = "coal",
        dust = "atom-coal-dust",
    },
    icons = {
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-coal-dust.png", icon_size = 32, icon_mipmaps = 3 },
    }
}

data:extend({
    oreToDustRecipe(config),

    {
        type = "recipe",
        name = "carbon",
        category = "smelting",
        energy_required = 1,
        enabled = false,
        allow_productivity = true,
        ingredients = {
            { "atom-coal-dust", 1 }
        },
        result = "atom-carbon",
        result_count = 1,
    }
})

return config