local config = {
    name = "tungsten",
    order = "o",
    itemNames = {
        ore = "tungsten-ore",
        plate = "tungsten-plate",
        dust = "tungsten-dust",
        ingot = "tungsten-ingot",
        molten = "molten-tungsten",
        enriched = "enriched-tungsten",
        pure = "atom-tungsten-pure",
        pellets = "atom-tungsten-pellets"
    },
    icons = {
        ore = { icon = "__bztungsten__/graphics/icons/tungsten-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToDust = "tungsten-processing",
        dustToPlate = "tungsten-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

data:extend({
    {
        type = "fluid",
        name = "molten-tungsten",
        default_temperature = 3422,
        max_temperature = 3422,
        base_color = { r = 255, g = 160, b = 60 },
        flow_color = { r = 255, g = 160, b = 60 },
        icons = { config.icons.molten },
        order = "a[molten]-a",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid",
    }
})

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config