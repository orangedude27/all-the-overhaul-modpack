local config = {
    name = "zinc",
    order = "e",
    enableAtStart = true,
    itemNames = {
        ore = "zinc-ore",
        plate = "zinc-plate",
        dust = "atom-zinc-dust",
        ingot = "zinc-ingot",
        molten = "molten-zinc",
        enriched = "enriched-zinc",
        pure = "atom-zinc-pure",
        pellets = "atom-zinc-pellets"
    },
    icons = {
        ore = { icon = "__BrassTacks__/graphics/icons/zinc-ore.png", icon_size = 64, icon_mipmaps = 4 },
        "plate",
        "dust",
        "ingot",
        "molten",
        "enriched",
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-zinc-pure.png", icon_size = 64 },
        "pellets"
    },
    additionalResults = {
        oreToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.05 },
            { name = "bismuth-plate", amount = 1, probability = 0.05 }
        },
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.125 },
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToIngot = {
            { name = "silver-ore", amount = 1, probability = 0.33 },
            { name = "bismuth-ore", amount = 1, probability = 0.25 }
        }
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config