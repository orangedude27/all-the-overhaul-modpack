local Recipe = atom.util.Recipe

local config = atom.processing.util.prepareConfig({
    name = "neodymium",
    order = "x",
    itemNames = {
        dust = "atom-neodymium-dust",
        plate = "fi_materials_neodym",
        ingot = "fu_materials_neodym_ingot",
    },
    icons = {
        plate = { icon = "__248k__/ressources/fission/fi_materials/fi_materials_neodym.png", icon_size = 64 },
        "dust", "ingot"
    },
    unlockedBy = {
        rareToDust = "fi_materials_tech",
        dustToPlate = "fi_materials_tech"
    }
})

local create = atom.processing.create(config)

-- Raw rare metals to neodymium powder
local rareToDustRecipe = Recipe({
    type = "recipe",
    name = "atom-" .. config.name .. "-dust",
    icons = {
        config.icons.dust,
        atom.util.icon.createSmallIcon(atom.processing.materials.rareMetals.icons.dust),
    },
    category = "chemistry",
    energy_required = 4.8,
    ingredients = {
        { atom.processing.materials.rareMetals.itemNames.dust, 3 },
        { type = "fluid", name = "aqua-regia", amount = 1 }
    },
    results = {
        { name = config.itemNames.dust, amount = 2 },
        data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 1 } or nil
    },
    main_product = config.itemNames.dust,
    enabled = false
})
rareToDustRecipe.allowProductivity()
rareToDustRecipe.unlockedByTechnology(config.unlockedBy.rareToDust)

local dustToIngotRecipe = create.dustToIngotRecipe()

local dustToPlateRecipe = create.dustToPlateRecipe()

local ingotToPlateRecipe = create.ingotToPlateRecipe()

atom.util.applyAll({
    rareToDustRecipe,
    dustToIngotRecipe,
    dustToPlateRecipe,
    ingotToPlateRecipe,
    create.item("dust")
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.palladium = config