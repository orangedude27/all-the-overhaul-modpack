local config = {
    name = "tungsten",
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
        plate = { icon = "__bztungsten__/graphics/icons/tungsten-plate.png", icon_size = 128, icon_mipmaps = 3 },
        dust = { icon = "__bztungsten__/graphics/icons/tungsten-powder.png", icon_size = 64, icon_mipmaps = 3 },
        ingot = { icon = "__bztungsten__/graphics/icons/tungsten-ingot.png", icon_size = 128 },
        molten = { icon = "__bztungsten__/graphics/icons/molten-tungsten.png", icon_size = 128 },
        enriched = { icon = "__bztungsten__/graphics/icons/enriched-tungsten.png", icon_size = 64 },
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tungsten-pure.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tungsten-pellets.png", icon_size = 128 }
    },
}

data:extend(createRefiningData(config))

data:extend({
    dustToPlateRecipe(config),
    item(config, "pure"),
    {
        type = "fluid",
        name = "molten-tungsten",
        default_temperature = 3422,
        max_temperature = 3422,
        base_color = {r=255, g=160, b=60},
        flow_color = {r=255, g=160, b=60},
        icons = {{icon = "__bztungsten__/graphics/icons/molten-tungsten.png", icon_size = 128}},
        order = "a[molten]-a",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid",
    }
})