local config = {
    name = "coal",
    itemNames = {
        ore = "coal",
        dust = "atom-coal-dust",
        plate = "atom-carbon"
    },
    icons = {
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-coal-dust.png", icon_size = 32, icon_mipmaps = 3 },
        plate = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-carbon.png", icon_size = 128 }
    },
    additionalIngredients = {},
    additionalResults = {},
    unlockedBy = {}
}

local dust = item(config, "dust")
dust.fuel_category = "chemical"
dust.fuel_value = "3MJ"

local carbon = item(config, "plate")
carbon.name = "atom-carbon"
carbon.fuel_category = "chemical"
carbon.fuel_value = "6MJ"

data:extend({
    oreToDustRecipe(config),
    dustToPlateRecipe(config),
    dust,
    carbon
})

setStackSizes(config)
setSubGroup(config)

return config