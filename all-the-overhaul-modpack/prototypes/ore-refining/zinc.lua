local config = {
    name = "zinc",
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
        plate = { icon = "__BrassTacks__/graphics/galdoc/icons/zinc-plate.png", icon_size = 64 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-zinc-dust.png", icon_size = 32, icon_mipmaps = 3 },
        ingot = { icon = "__BrassTacks__/graphics/galdoc/icons/zinc-ingot.png", icon_size = 64 },
        molten = { icon = "__BrassTacks__/graphics/galdoc/icons/molten-zinc.png", icon_size = 64 },
        enriched = { icon = "__BrassTacks__/graphics/galdoc/icons/enriched-zinc.png", icon_size = 64 },
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-zinc-pure.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-zinc-pellets.png", icon_size = 128 }
    },
    additionalResults = {
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.06},
            { name = "bismuth-plate", amount = 1, probability = 0.06}
        }
    }
}

data:extend(createRefiningData(config))

data:extend({
    oreToDustRecipe(config),
    item(config, "dust"),
    item(config, "pure")
})