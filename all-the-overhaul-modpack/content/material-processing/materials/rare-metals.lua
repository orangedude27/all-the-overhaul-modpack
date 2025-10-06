local config = atom.processing.util.prepareConfig({
    name = "rare-metals",
    order = "k",
    enableAtStart = true,
    itemNames = {
        ore = "kr-rare-metal-ore",
        plate = "kr-rare-metals",
        dust = "atom-rare-metals-dust",
        ingot = "atom-rare-metals-ingot",
        molten = "atom-rare-metals-molten",
        enriched = "kr-enriched-rare-metals",
        pure = "atom-rare-metals-pure",
        pellets = "atom-rare-metals-pellets"
    },
    icons = {
        ore = { icon = "__Krastorio2Assets__/icons/resources/rare-metal-ore.png", icon_size = 64, icon_mipmaps = 4 },
        "pure",
        plate = { icon = "__Krastorio2Assets__/icons/items/rare-metals.png", icon_size = 64 },
        "dust", "ingot", "molten", "enriched", "pellets"
    }
})

local create = atom.processing.util.createDefaultData(config)

data:extend({
    create.item("ingot"),
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

atom.processing.util.finalizeConfig(config)

atom.processing.materials.rareMetals = config