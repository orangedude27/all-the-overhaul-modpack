local config = {
    name = "chromium",
    itemNames = {
        ore = "chromite-ore",
        plate = "chromium-plate",
        dust = "atom-chromium-dust",
        ingot = "chromium-ingot",
        molten = "molten-chromium",
        enriched = "enriched-chromium",
        pure = "fi-materials-pure-chrome",
        pellets = "atom-chromium-pellets"
    },
    icons = {
        ore = { icon = "__Chromium__/graphics/icons/chromite-ore.png", icon_size = 64, icon_mipmaps = 3 },
        plate = { icon = "__Chromium__/graphics/icons/chromium-plate.png", icon_size = 64 },
        dust = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-chrome-dust.png", icon_size = 32, icon_mipmaps = 3 },
        ingot = { icon = "__Chromium__/graphics/icons/chromium-ingot.png", icon_size = 64 },
        molten = { icon = "__Chromium__/graphics/icons/molten-chromium.png", icon_size = 64 },
        enriched = { icon = "__Chromium__/graphics/icons/enriched-chromium.png", icon_size = 64 },
        pure = { icon = "__Chromium__/graphics/icons/fi-materials-pure-chrome.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-chrome-pellets.png", icon_size = 128 }
    },
    unlockedBy = {
        oreToPlate = "stainless-steel-processing",
        oreToDust = "stainless-steel-processing",
        dustToPlate = "stainless-steel-processing"
    }
}

data:extend(createRefiningData(config))

setSubGroup(config)

return config