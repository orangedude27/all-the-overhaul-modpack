local tantalumConfig = {
    name = "tantalite",
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
        molten = { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64 },
        enriched = { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64 },
        pure = { icon = "__Tantalite__/graphics/icons/fi-materials-pure-tantalum.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128 }
    },
    additionalIngredient = {},
    additionalResults = {}
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
        plate = { icon = "__Tantalite__/graphics/icons/niobium-plate.png", icon_size = 64, icon_mipmaps = 3 },
        ingot = { icon = "__Tantalite__/graphics/icons/niobium-ingot.png", icon_size = 64 },
        molten = { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64 }, -- TODO
        enriched = { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64 }, -- TODO
        pure = { icon = "__Tantalite__/graphics/icons/fi-materials-pure-niobium.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128 } -- TODO
    },
    additionalResults = {},
    additionalIngredient = {}
}

local _oreToPlateRecipe = oreToPlateRecipe(tantalumConfig)
local _dustToPlateRecipe = dustToPlateRecipe(tantalumConfig)
local _dustToIngotRecipe = dustToIngotRecipe(tantalumConfig)
local _dustToEnrichedRecipe = dustToEnrichedRecipe(tantalumConfig)
local _dustToPureRecipe = dustToPureRecipe(tantalumConfig)

_oreToPlateRecipe.results = {
    { name = tantalumConfig.itemNames.plate, amount = 6 },
    { name = niobiumConfig.itemNames.plate, amount = 6 }
}
_dustToPlateRecipe.results = {
    { name = tantalumConfig.itemNames.plate, amount = 3 },
    { name = niobiumConfig.itemNames.plate, amount = 3 }
}
_dustToIngotRecipe.results = {
    { name = tantalumConfig.itemNames.ingot, amount = 3 },
    { name = niobiumConfig.itemNames.ingot, amount = 3 }
}
_dustToEnrichedRecipe.results = {
    { name = tantalumConfig.itemNames.enriched, amount = 3 },
    { name = niobiumConfig.itemNames.enriched, amount = 3 }
}
_dustToPureRecipe.results = {
    { name = tantalumConfig.itemNames.pure, amount_min = 1, amount_max = 2 },
    { name = niobiumConfig.itemNames.pure, amount_min = 1, amount_max = 2 }
}

data:extend({
    _oreToPlateRecipe,
    oreToDustRecipe(tantalumConfig),
    _dustToPlateRecipe,
    _dustToIngotRecipe,
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

return {
    tantalum = tantalumConfig,
    niobium = niobiumConfig
}