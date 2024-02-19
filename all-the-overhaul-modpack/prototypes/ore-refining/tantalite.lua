local tantalumConfig = {
    name = "tantalite",
    itemNames = {
        ore = "tantalite-ore",
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
    },
    additionalResults = {
        dustToPure = { { name = "fi-materials-pure-niobium", amount = 1 } },
    }
}

data:extend(createRefiningData(tantalumConfig))

--[[
local niobiumConfig = {
    name = "niobium",
    itemNames = {
        ingot = "niobium-ingot",
        molten = "molten-niobium",
        plate = "niobium-plate",
    },
    icons = {
        ingot = { icon = "__Tantalite__/graphics/icons/niobium-ingot.png", icon_size = 64 },
        molten = { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64 },
        plate = { icon = "__Tantalite__/graphics/icons/niobium-plate.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64 },
        pure = { icon = "__Tantalite__/graphics/icons/fi-materials-pure-niobium.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128 }
    },
}

data:extend({
    dustToIngotRecipe(config),
    enrichedToIngotRecipe(config),
    pelletsToIngotRecipe(config),
    item(config, "pellets")
})
]]--