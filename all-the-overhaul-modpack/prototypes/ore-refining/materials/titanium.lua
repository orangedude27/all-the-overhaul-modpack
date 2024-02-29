local config = {
    name = "titanium",
    order = "p",
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
        ore = { icon = "__bztitanium__/graphics/icons/titanium-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "plate",
        "dust",
        ingot = { icon = "__bztitanium__/graphics/icons/titanium-ingot.png", icon_size = 128 },
        "molten",
        "enriched",
        "pure",
        "pellets"
    },
    unlockedBy = {
        oreToDust = "titanium-processing",
        dustToPlate = "titanium-processing"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config