local tantalumConfig = atom.processing.util.prepareConfig({
    name = "tantalite",
    order = "r",
    enableAtStart = true,
    itemNames = {
        ore = "tantalite-ore",
        plate = "tantalum-plate",
        dust = "atom-tantalite-dust",
        ingot = "tantalum-ingot",
        molten = "molten-tantalite",
        enriched = "enriched-tantalite",
        pure = "fi-materials-pure-tantalum",
        pellets = "atom-tantalite-pellets"
    },
    icons = {
        ore = { icon = "__Tantalite__/graphics/icons/tantalite-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToDust = "5d-masher-1",
        dustToPlate = "5d-masher-1"
    }
})

local niobiumConfig = atom.processing.util.prepareConfig({
    name = "niobium",
    itemNames = {
        plate = "niobium-plate",
        ingot = "niobium-ingot",
        molten = "molten-niobium",
        enriched = "atom-niobium-enriched",
        pure = "atom-niobium-pure",
        pellets = "atom-niobium-pellets"
    },
    icons = {
        "pure", "plate", "ingot", "molten", "enriched", "pellets"
    }
})

local createTantalum = atom.processing.create(tantalumConfig)

local oreToPlateRecipe = createTantalum.oreToPlateRecipe()
local dustToPlateRecipe = createTantalum.dustToPlateRecipe()
local dustToIngotRecipe = createTantalum.dustToIngotRecipe()
local dustToEnrichedRecipe = createTantalum.dustToEnrichedRecipe()
local dustToPureRecipe = createTantalum.dustToPureRecipe()

oreToPlateRecipe.prototype.results = {
    { name = tantalumConfig.itemNames.plate, amount_min = 1, amount_max = 2 },
    { name = niobiumConfig.itemNames.plate, amount_min = 1, amount_max = 2 }
}
dustToPlateRecipe.prototype.results = {
    { name = tantalumConfig.itemNames.plate, amount = 2 },
    { name = niobiumConfig.itemNames.plate, amount = 2 }
}
dustToIngotRecipe.prototype.results = {
    { name = tantalumConfig.itemNames.ingot, amount = 1 },
    { name = niobiumConfig.itemNames.ingot, amount = 1 }
}
dustToEnrichedRecipe.prototype.results = {
    { name = tantalumConfig.itemNames.enriched, amount = 3 },
    { name = niobiumConfig.itemNames.enriched, amount = 3 }
}
dustToPureRecipe.prototype.results = {
    { name = tantalumConfig.itemNames.pure, amount = 3 },
    { name = niobiumConfig.itemNames.pure, amount = 3 }
}

atom.util.applyAll({
    oreToPlateRecipe,
    createTantalum.oreToDustRecipe(),
    dustToPlateRecipe,
    dustToIngotRecipe,
    createTantalum.ingotToPlateRecipe(),
    dustToEnrichedRecipe,
    dustToPureRecipe,
    createTantalum.pelletsToMoltenRecipe(),
    createTantalum.enrichedToMoltenRecipe(),
    createTantalum.moltenToIngotRecipe(),
    createTantalum.enrichedToIngotRecipe(),
    createTantalum.pureToEnrichedRecipe(),
    createTantalum.enrichedToPelletsRecipe(),
    createTantalum.pelletsToIngotRecipe(),
    createTantalum.item("pellets"),
    createTantalum.item("dust")
})

local createNiobium = atom.processing.create(niobiumConfig)

atom.util.applyAll({
    createNiobium.ingotToPlateRecipe(),
    createNiobium.pelletsToMoltenRecipe(),
    createNiobium.enrichedToMoltenRecipe(),
    createNiobium.moltenToIngotRecipe(),
    createNiobium.enrichedToIngotRecipe(),
    createNiobium.pureToEnrichedRecipe(),
    createNiobium.enrichedToPelletsRecipe(),
    createNiobium.pelletsToIngotRecipe(),
    createNiobium.item("pellets"),
    createNiobium.item("enriched"),
    createNiobium.item("pure"),
    {
        type = "fluid",
        name = "molten-niobium",
        default_temperature = 232,
        max_temperature = 232,
        base_color = { r = 191, g = 219, b = 233 }, -- TODO
        flow_color = { r = 191, g = 219, b = 233 }, -- TODO
        icons = { niobiumConfig.icons.molten },
        order = "a[molten]-a",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid",
    }
})

atom.processing.util.finalizeConfig(tantalumConfig)
atom.processing.util.finalizeConfig(niobiumConfig)

atom.processing.materials.tantalum = tantalumConfig
atom.processing.materials.niobium = niobiumConfig