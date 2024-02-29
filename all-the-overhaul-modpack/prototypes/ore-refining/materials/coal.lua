local config = {
    name = "coal",
    order = "m",
    itemNames = {
        ore = "coal",
        dust = "atom-coal-dust",
        plate = "atom-carbon"
    },
    icons = {
        plate = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-carbon.png", icon_size = 128 },
        "dust"
    },
    additionalIngredients = {},
    additionalResults = {},
    unlockedBy = {}
}

createIcons(config)

local dust = item(config, "dust")
dust.fuel_category = "chemical"
dust.fuel_value = "3MJ"

local carbon = item(config, "plate")
carbon.name = "atom-carbon"
carbon.fuel_category = "chemical"
carbon.fuel_value = "3MJ"

local _dustToPlateRecipe = dustToPlateRecipe(config)
_dustToPlateRecipe.results[1].amount = 12
_dustToPlateRecipe.results[1].probability = 1

data:extend({
    oreToDustRecipe(config),
    _dustToPlateRecipe,
    dust,
    carbon
})

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config