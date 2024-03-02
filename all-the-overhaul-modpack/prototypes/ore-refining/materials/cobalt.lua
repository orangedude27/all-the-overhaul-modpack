local config = {
    name = "cobalt",
    order = "s",
    itemNames = {
        ore = "cobaltite-ore",
        plate = "cobalt-plate",
        dust = "atom-cobalt-dust",
        ingot = "cobalt-ingot",
        molten = "molten-cobalt",
        enriched = "enriched-cobalt",
        pure = "fi-materials-pure-cobalt",
        pellets = "atom-cobalt-pellets"
    },
    icons = {
        ore = { icon = "__Cobalt__/graphics/icons/cobaltite-ore.png", icon_size = 64 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    unlockedBy = {
        oreToPlate = "cobalt-refining",
        oreToDust = "cobalt-refining",
        dustToPlate = "cobalt-refining"
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config