local config = atom.processing.util.prepareConfig({
    name = "graphite",
    itemNames = {
        ore = "flake-graphite",
        dust = "atom-graphite-dust",
        plate = "graphite",
    },
    icons = {
        "dust",
        plate = { icon = "__bzcarbon2__/graphics/icons/graphite.png", icon_size = 128 },
    }
})

local create = atom.processing.create(config)

local oreToDustRecipe = create.oreToDustRecipe()
oreToDustRecipe.allowProductivity()

local dustToPlateRecipe = atom.util.Recipe({
    type = "recipe",
    name = "atom-" .. config.name .. "-plate-dust",
    localised_name = { "item-name." .. config.itemNames.dust },
    icons = {
        config.icons.plate,
        atom.util.icon.createSmallIcon(config.icons.dust),
    },
    category = "smelting",
    energy_required = 9.6,
    ingredients = {
        { type = "item", name = config.itemNames.dust, amount = 12 },
        { type = "fluid", name = "se-pyroflux", amount = 0.25 }
    },
    results = {
        { type = "item", name = config.itemNames.plate, amount = 8 }
    },
    main_product = config.itemNames.plate,
    subgroup = config.subgroup,
    enabled = false
})
dustToPlateRecipe.allowProductivity()
dustToPlateRecipe.unlockedByTechnology("atom-advanced-ore-processing-2")

atom.util.applyAll({
    oreToDustRecipe,
    dustToPlateRecipe,
    create.item("dust")
})

atom.processing.util.finalizeConfig(config)
atom.processing.materials.graphite = config 