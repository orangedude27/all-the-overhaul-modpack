local config = atom.processing.util.prepareConfig({
    name = "zirconium",
    order = "z",
    subgroup = "zircon",
    itemNames = {
        ore = "zircon",
        dust = "atom-zirconium-dust",
        ingot = "zirconia",
    },
    icons = {
        ore = { icon = "__bzzirconium__/graphics/icons/zircon.png", icon_size = 64 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/materials/tantalite-dust.png", icon_size = 128},
        ingot = { icon = "__bzzirconium__/graphics/icons/zirconia.png", icon_size = 128 }
    },
    unlockedBy = {
        oreToDust = "zirconia-processing",
        dustToIngot = "zirconia-processing"
    }
})

local create = atom.processing.create(config)
local dustToIngotRecipe = create.dustToIngotRecipe()

dustToIngotRecipe.prototype.results = {
    { name = config.itemNames.ingot, amount = 5 },
    { name = config.itemNames.ingot, amount = 1, probability = 0.50 },
}

atom.util.applyAll({
    create.oreToDustRecipe(),
    dustToIngotRecipe,
    create.item("dust"),
})

atom.processing.util.finalizeConfig(config)

atom.processing.materials.zirconium = config