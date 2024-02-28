local config = {
    name = "rare-metals",
    itemNames = {
        ore = "raw-rare-metals",
        plate = "rare-metals",
        dust = "atom-rare-metals-dust",
        ingot = "atom-rare-metals-ingot",
        molten = "atom-rare-metals-molten",
        enriched = "enriched-rare-metals",
        pure = "atom-rare-metals-pure",
        pellets = "atom-rare-metals-pellets"
    },
    icons = {
        ore = { icon = "__Krastorio2Assets__/icons/items-with-variations/raw-rare-metals/raw-rare-metals.png", icon_size = 64, icon_mipmaps = 4 },
        plate = { icon = "__Krastorio2Assets__/icons/items-with-variations/rare-metals/rare-metals.png", icon_size = 64 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-dust.png", icon_size = 32 }, -- TODO
        ingot = { icon = "__Cobalt__/graphics/icons/cobalt-ingot.png", icon_size = 64, icon_mipmaps = 3 }, -- TODO
        molten = { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3 }, -- TODO
        enriched = { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-rare-metals/enriched-rare-metals.png", icon_size = 64, icon_mipmaps = 4 },
        pure = { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64 }, -- TODO
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-pellets.png", icon_size = 128, icon_mipmaps = 3 } -- TODO
    },
    additionalResults = {
        dustToIngot = {
            { name = "platinum-powder", amount = 1, probability = 0.6 },
            { name = "palladium-powder", amount = 1, probability = 0.6 }
        },
        dustToEnriched = {
            { name = "platinum-powder", amount = 1, probability = 0.6 },
            { name = "palladium-powder", amount = 1, probability = 0.6 }
        },
        dustToPure = {
            { name = "platinum-powder", amount = 1, probability = 0.6 }
        },
        pureToEnriched = {
            { name = "palladium-powder", amount = 1, probability = 0.6 }
        }
    }
}

data:extend(createRefiningData(config))

data:extend({
    item(config, "ingot"),
    {
        type = "fluid",
        name = "atom-" .. config.name .. "-molten",
        default_temperature = 232, -- TODO
        max_temperature = 232, -- TODO
        base_color = { r = 255, g = 160, b = 60 }, -- TODO
        flow_color = { r = 255, g = 160, b = 60 }, -- TODO
        icons = { config.icons.molten },
        order = "a[molten]-b",
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59,
        auto_barrel = false,
        subgroup = "fluid"
    }
})

setSubGroup(config)

return config