local util = require("data-util")

data:extend(
    {
        {
            type = "item-group",
            name = "ammo",
            icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "f",
            order = "z"
        },
        {
            type = "item-group",
            name = "circuit",
            icon = "__base__/graphics/icons/arithmetic-combinator.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "c"
        },
        {
            type = "item-group",
            name = "pipes",
            icon = "__Krastorio2Assets__/icons/entities/fluid-storages/fluid-storage-2.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "f",
            order = "a"
        },
        {
            type = "item-group",
            name = "module",
            icon = "__248k__/ressources/fission/fi_modules/fi_modules_productivity_6.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "z",
            order = "a"
        },
        {
            type = "item-group",
            name = "power",
            icon = "__base__/graphics/icons/solar-panel.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "f",
            order = "e"
        },
        {
            type = "item-group",
            name = "transport",
            icon = "__base__/graphics/icons/rail.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "c",
            order = "c"
        },
        {
            type = "item-group",
            name = "space",
            icon = "__base__/graphics/icons/rocket-silo.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "dc",
            order = "dc"
        },
        {
            type = "item-group",
            name = "equipment",
            icon = "__base__/graphics/icons/power-armor.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "db",
            order = "db"
        },
        {
            type = "item-group",
            name = "scienceData",
            icon = "__space-exploration-graphics__/graphics/icons/catalogue/material-catalogue-1.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "cy",
            order = "cy"
        },
        {
            type = "item-group",
            name = "terrain",
            icon = "__base__/graphics/icons/landfill.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "z",
            order = "z"
        },
        {
            type = "item-group",
            name = "beacons",
            icon = "__base__/graphics/icons/beacon.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "e",
            order = "e"
        },
        {
            type = "item-group",
            name = "tiles",
            icon = "__base__/graphics/icons/concrete.png",
            icon_size = 64,
            icon_mipmaps = 4,
            inventory_order = "z",
            order = "z"
        },
        {
            type = "item-group",
            name = "fluids",
            icon = "__248k__/ressources/fission/fi_refinery/fi_refinery_icon.png",
            icon_size = 64,
            icon_mipmaps = 1,
            inventory_order = "f",
            order = "f"
        },
        {
            type = "item-subgroup",
            name = "248kextra",
            group = "production",
            order = "f"
        },
        {
            type = "item-subgroup",
            name = "248klead",
            group = "production",
            order = "f"
        },
        {
            type = "item-subgroup",
            name = "248kstar",
            group = "production",
            order = "z"
        },
    }
)
