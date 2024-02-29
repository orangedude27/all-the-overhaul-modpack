local tantalumConfig = {
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
        plate = { icon = "__Tantalite__/graphics/icons/tantalum-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-dust.png", icon_size = 32 },
        ingot = { icon = "__Tantalite__/graphics/icons/tantalum-ingot.png", icon_size = 64 },
        "molten",
        "enriched",
        pure = { icon = "__Tantalite__/graphics/icons/fi-materials-pure-tantalum.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {},
    additionalResults = {},
    unlockedBy = {
        oreToDust = "5d-masher-1",
        dustToPlate = "5d-masher-1"
    }
}

local niobiumConfig = {
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
        "plate",
        ingot = { icon = "__Tantalite__/graphics/icons/niobium-ingot.png", icon_size = 64 },
        molten = { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64 }, -- TODO
        enriched = { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64 }, -- TODO
        pure = { icon = "__Tantalite__/graphics/icons/fi-materials-pure-niobium.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128 } -- TODO
    },
    additionalResults = {},
    additionalIngredient = {},
    unlockedBy = {}
}

createIcons(tantalumConfig)
createIcons(niobiumConfig)

local _oreToPlateRecipe = oreToPlateRecipe(tantalumConfig)
local _dustToPlateRecipe = dustToPlateRecipe(tantalumConfig)
local _dustToIngotRecipe = dustToIngotRecipe(tantalumConfig)
local _dustToEnrichedRecipe = dustToEnrichedRecipe(tantalumConfig)
local _dustToPureRecipe = dustToPureRecipe(tantalumConfig)

_oreToPlateRecipe.results = {
    { name = tantalumConfig.itemNames.plate, amount = 1, probability = 1.5 },
    { name = niobiumConfig.itemNames.plate, amount = 1, probability = 1.5 }
}
_dustToPlateRecipe.results = {
    { name = tantalumConfig.itemNames.plate, amount = 2 },
    { name = niobiumConfig.itemNames.plate, amount = 2 }
}
_dustToIngotRecipe.results = {
    { name = tantalumConfig.itemNames.ingot, amount = 1 },
    { name = niobiumConfig.itemNames.ingot, amount = 1 }
}
_dustToEnrichedRecipe.results = {
    { name = tantalumConfig.itemNames.enriched, amount = 3 },
    { name = niobiumConfig.itemNames.enriched, amount = 3 }
}
_dustToPureRecipe.results = {
    { name = tantalumConfig.itemNames.pure, amount = 3 },
    { name = niobiumConfig.itemNames.pure, amount = 3 }
}

data:extend({
    _oreToPlateRecipe,
    oreToDustRecipe(tantalumConfig),
    _dustToPlateRecipe,
    _dustToIngotRecipe,
    ingotToPlateRecipe(tantalumConfig),
    _dustToEnrichedRecipe,
    _dustToPureRecipe,
    ingotToMoltenRecipe(tantalumConfig),
    moltenToPlateRecipe(tantalumConfig),
    enrichedToIngotRecipe(tantalumConfig),
    pureToEnrichedRecipe(tantalumConfig),
    enrichedToPelletsRecipe(tantalumConfig),
    pelletsToIngotRecipe(tantalumConfig),
    item(tantalumConfig, "pellets"),
    item(tantalumConfig, "dust")
})

data:extend({
    ingotToPlateRecipe(niobiumConfig),
    ingotToMoltenRecipe(niobiumConfig),
    moltenToPlateRecipe(niobiumConfig),
    enrichedToIngotRecipe(niobiumConfig),
    pureToEnrichedRecipe(niobiumConfig),
    enrichedToPelletsRecipe(niobiumConfig),
    pelletsToIngotRecipe(niobiumConfig),
    item(niobiumConfig, "pellets"),
    item(niobiumConfig, "enriched"),
    item(niobiumConfig, "pure"),
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

setItemIcons(tantalumConfig)
setItemIcons(niobiumConfig)
setStackSizes(tantalumConfig)
setStackSizes(niobiumConfig)
setSubGroup(tantalumConfig)
setSubGroup(niobiumConfig)

return {
    tantalum = tantalumConfig,
    niobium = niobiumConfig
}