require('refining')

data:extend(
    createRefiningData({
        name = "tantalite",
        itemNames = {
            ingot = "tantalum-ingot",
            dust = "atom-tantalite-dust",
            molten = "molten-tantalite",
            plate = "tantalum-plate",
            enriched = "enriched-tantalite",
            pure = "fi-materials-pure-tantalum",
            pellets = "atom-tantalite-pellets"
        },
        icons = {
            ingot = { icon = "__Tantalite__/graphics/icons/tantalum-ingot.png", icon_size = 64 },
            dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-dust.png", icon_size = 32 },
            molten = { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64 },
            plate = { icon = "__Tantalite__/graphics/icons/tantalum-plate.png", icon_size = 64, icon_mipmaps = 3 },
            enriched = { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64 },
            pure = { icon = "__Tantalite__/graphics/icons/fi-materials-pure-tantalum.png", icon_size = 64 },
            pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128 }
        }
    })
)