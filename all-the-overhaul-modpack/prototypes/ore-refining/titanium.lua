local config = {
    name = "titanium",
    itemNames = {
        ore = "titanium-ore",
        plate = "titanium-plate",
        dust = "titanium-dust",
        ingot = "titanium-ingot",
        molten = "molten-titanium",
        enriched = "enriched-titanium",
        pure = "atom-titanium-pure",
        pellets = "atom-titanium-pellets"
    },
    icons = {
        plate = { icon = "__bztitanium__/graphics/icons/titanium-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__bztitanium__/graphics/icons/titanium-powder.png", icon_size = 64 },
        ingot = { icon = "__bztitanium__/graphics/icons/titanium-ingot.png", icon_size = 128 },
        molten = { icon = "__bztitanium__/graphics/icons/molten-titanium.png", icon_size = 128 },
        enriched = { icon = "__bztitanium__/graphics/icons/enriched-titanium.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64 }, -- TODO
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-titanium-pellets.png", icon_size = 128 }
    },
}

data:extend(createRefiningData(config))

data:extend({
    item(config, "dust"),
    item(config, "pure")
})