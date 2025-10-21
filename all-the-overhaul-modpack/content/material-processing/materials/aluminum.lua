local Recipe = atom.util.Recipe

local config = atom.processing.util.prepareConfig({
    name = "aluminum",
    order = "b",
    enableAtStart = true,
    itemNames = {
        ore = "aluminum-ore",
        plate = "aluminum-plate",
        dust = "atom-aluminum-dust",
        ingot = "aluminum-ingot",
        molten = "molten-aluminum",
        enriched = "enriched-aluminum",
        pure = "el_materials_pure_aluminum",
        pellets = "atom-aluminum-pellets",
        alumina = "alumina"
    },
    icons = {
        ore = { icon = "__bzaluminum2__/graphics/icons/aluminum-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets",
        alumina = { icon = "__bzaluminum2__/graphics/icons/alumina.png", icon_size = 128 }
    },
    additionalResults = {
        dustToIngot = {
            { type = "item", name = "alumina", amount = 1, probability = 0.26 }
        },
        dustToEnriched = {
            { type = "item", name = "alumina", amount = 1, probability = 0.26 }
        },
        dustToPure = {
            { type = "item", name = "alumina", amount = 1, probability = 0.26 }
        }
    },
})

local oreToAluminaRecipe = Recipe({
    type = "recipe",
    name = "atom-alumina-ore",
    localised_name = { "item-name." .. config.itemNames.alumina },
    icons = {
        config.icons.alumina,
        atom.util.icon.createSmallIcon(config.icons.ore),
    },
    category = "smelting",
    energy_required = 3.2,
    ingredients = {
        { type = "item", name = config.itemNames.ore, amount = 2 }
    },
    results = {
        { type = "item", name = config.itemNames.alumina, amount = 1 },
        { type = "item", name = "silica", amount = 1, probability = 0.05 }
    },
    main_product = config.itemNames.alumina,
    enabled = config.enableAtStart or false
})

local aluminaToPlateRecipe = Recipe({
    type = "recipe",
    name = "atom-" .. config.name .. "-plate",
    localised_name = { "item-name." .. config.itemNames.plate },
    icons = {
        config.icons.plate,
        atom.util.icon.createSmallIcon(config.icons.alumina),
    },
    category = "smelting",
    energy_required = 19.2,
    ingredients = {
        { type = "item", name = config.itemNames.alumina, amount = 6 }
    },
    results = { { type = "item", name = config.itemNames.plate, amount = 6 } },
    enabled = config.enableAtStart or false
})
aluminaToPlateRecipe.allowProductivity()

local dustToAluminaRecipe = Recipe({
    type = "recipe",
    name = "atom-alumina-dust",
    localised_name = { "item-name." .. config.itemNames.alumina },
    icons = {
        config.icons.alumina,
        atom.util.icon.createSmallIcon(config.icons.dust),
    },
    category = "smelting",
    energy_required = 3.2,
    ingredients = {
        { type = "item", name = config.itemNames.dust, amount = 3 }
    },
    results = {
        { type = "item", name = config.itemNames.alumina, amount = 1 },
        { type = "item", name = "silica", amount = 1, probability = 0.0167 }
    },
    main_product = config.itemNames.alumina,
    enabled = false
})
dustToAluminaRecipe.unlockedByTechnology("5d-masher-1")

local create = atom.processing.create(config)

atom.util.applyAll({
    oreToAluminaRecipe,
    aluminaToPlateRecipe,
    dustToAluminaRecipe,
    create.oreToDustRecipe(),
    create.dustToIngotRecipe(),
    create.ingotToPlateRecipe(),
    create.ingotToMoltenRecipe(),
    create.moltenToPlateRecipe(),
    create.dustToEnrichedRecipe(),
    create.enrichedToIngotRecipe(),
    create.dustToPureRecipe(),
    create.pureToEnrichedRecipe(),
    create.enrichedToPelletsRecipe(),
    create.pelletsToIngotRecipe(),
    create.item("pellets"),
    create.item("dust")
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.aluminum = config