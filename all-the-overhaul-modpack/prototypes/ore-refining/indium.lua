require('refining')

local config = {
    name = "indium",
    itemNames = {
        ingot = "indium-ingot",
        dust = "atom-indium-dust",
        molten = "molten-indium",
        plate = "indium-plate",
        enriched = "enriched-indium",
        pure = "atom-indium-pure",
        pellets = "atom-indium-pellets"
    },
    icons = {
        ingot = { icon = "__Indium__/graphics/icons/indium-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-dust.png", icon_size = 32 },
        molten = { icon = "__Indium__/graphics/icons/molten-indium.png", icon_size = 64, icon_mipmaps = 3 },
        plate = { icon = "__Indium__/graphics/icons/indium-plate.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__Indium__/graphics/icons/enriched-indium.png", icon_size = 64 },
        pure = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pure.png", icon_size = 64, icon_mipmaps = 3 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pellets.png", icon_size = 128 }
    },
    additionalResults = {
        dustToPure = {
            { name = "nickel-ore", amount = 1 }
        }
    }
}

data:extend(createRefiningData(config))

data:extend({
    item(config, "pure")
})