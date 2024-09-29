local config = atom.processing.util.prepareConfig({
    name = "coal",
    order = "m",
    itemNames = {
        ore = "coal",
        dust = "atom-coal-dust"
    },
    icons = {
        "dust"
    }
})

local create = atom.processing.create(config)

local dust = create.item("dust")
dust.fuel_category = "chemical"
dust.fuel_value = "3MJ"

atom.util.applyAll({
    create.oreToDustRecipe(),
    dust
})

atom.processing.util.finalizeConfig(config)
atom.processing.materials.coal = config