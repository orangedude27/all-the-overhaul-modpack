local config = atom.processing.util.prepareConfig({
    name = "zirconium",
    order = "z",
    subgroup = "zircon",
    itemNames = {
        ore = "zircon",
        dust = "atom-zirconium-dust",
        ingot = "zirconia",
        enriched = "enriched-zircon",
        plate = "zirconia"
    },
    icons = {
        ore = { icon = "__bzzirconium2__/graphics/icons/zircon.png", icon_size = 64 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/materials/tantalite-dust.png", icon_size = 128 },
        plate = { icon = "__bzzirconium2__/graphics/icons/zirconia.png", icon_size = 128 },
        ingot = { icon = "__bzzirconium2__/graphics/icons/zirconia.png", icon_size = 128 },
        enriched = { icon = "__bzzirconium2__/graphics/icons/enriched-zircon.png", icon_size = 128 }
    },
    unlockedBy = {
        oreToPlate = "zirconia-processing",
        oreToDust = "zirconium-processing",
        dustToIngot = "zirconium-processing",
    }
})

local create = atom.processing.create(config)
local dustToIngotRecipe = create.dustToIngotRecipe()
local oreToPlateRecipe = create.oreToPlateRecipe()
local enrichedToIngotRecipe = create.enrichedToIngotRecipe()

oreToPlateRecipe.prototype.results = {
    { type = "item", name = config.itemNames.ingot, amount = 2 },
    { type = "item", name = config.itemNames.ingot, amount = 1, probability = 0.50 },
}

dustToIngotRecipe.prototype.results = {
    { type = "item", name = config.itemNames.ingot, amount = 5 },
    { type = "item", name = config.itemNames.ingot, amount = 1, probability = 0.50 },
}

enrichedToIngotRecipe.prototype.results = {
    { type = "item", name = config.itemNames.ingot, amount = 10 },
    { type = "item", name = config.itemNames.ingot, amount = 1, probability = 0.50 },
}

atom.util.applyAll({
    oreToPlateRecipe,
    create.oreToDustRecipe(),
    dustToIngotRecipe,
    create.dustToEnrichedRecipe(),
    enrichedToIngotRecipe,
    create.item("dust"),
})

atom.processing.util.finalizeConfig(config)
atom.processing.materials.zirconium = config

