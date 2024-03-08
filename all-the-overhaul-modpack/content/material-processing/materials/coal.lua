local config = atom.processing.util.prepareConfig({
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
    }
})

local create = atom.processing.create(config)

local dust = create.item("dust")
dust.fuel_category = "chemical"
dust.fuel_value = "3MJ"

local carbon = create.item("plate")
carbon.name = "atom-carbon"
carbon.fuel_category = "chemical"
carbon.fuel_value = "3MJ"

local dustToPlateRecipe = create.dustToPlateRecipe()
dustToPlateRecipe.results[1].amount = 12
dustToPlateRecipe.results[1].probability = 1

data:extend({
    create.oreToDustRecipe(),
    dustToPlateRecipe,
    dust,
    carbon
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.coal = config