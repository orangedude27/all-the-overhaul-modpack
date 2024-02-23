local config = {
    name = "iron",
    order = "a",
    enableAtStart = true,
    itemNames = {
        ore = "iron-ore",
        plate = "iron-plate",
        dust = "5d-iron-dust",
        ingot = "se-iron-ingot",
        molten = "se-molten-iron",
        enriched = "enriched-iron",
        pure = "el_materials_pure_iron",
        pellets = "atom-iron-pellets"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, icon_mipmaps = 4 },
        plate = { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-iron-dust.png", icon_size = 32, icon_mipmaps = 3 },
        ingot = { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64, icon_mipmaps = 3 },
        molten = { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64, icon_mipmaps = 3 },
        enriched = { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-iron/enriched-iron.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_iron.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-iron-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    },
    additionalResults = {
        oreToPlate = {
            { name = "manganese-plate", amount = 1, probability = 0.5 }
        },
        dustToPlate = {
            { name = "manganese-plate", amount = 1, probability = 0.5 }
        },
        dustToIngot = {
            { name = "manganese-ore", amount = 1, probability = 0.5 }
        },
        dustToEnriched = {
            { name = "manganese-ore", amount = 1, probability = 0.5 }
        },
        dustToPure = {
            { name = "manganese-ore", amount = 1, probability = 0.5 }
        }
    }
}

data:extend(createRefiningData(config))

setSubGroup(config)

-- TODO: They all have the same name, so they will overwrite each other
--[[
local manganeseRecipe = ingotToMoltenRecipe(config)
table.insert(manganeseRecipe.ingredients, { name = "manganese-ingot", amount = 4 })
table.insert(manganeseRecipe.ingredients, { type = "fluid", name = "se-pyroflux", amount = 10 })
manganeseRecipe.results[1].amount = 800

local cobaltNickelRecipe = ingotToMoltenRecipe(config)
table.insert(cobaltNickelRecipe.ingredients, { name = "cobalt-ingot", amount = 4 })
table.insert(cobaltNickelRecipe.ingredients, { name = "nickel-ingot", amount = 4 })
table.insert(cobaltNickelRecipe.ingredients, { type = "fluid", name = "se-pyroflux", amount = 20 })
cobaltNickelRecipe.results[1].amount = 1200

local chromiumNickelRecipe = ingotToMoltenRecipe(config)
table.insert(chromiumNickelRecipe.ingredients, { name = "chromium-ingot", amount = 4 })
table.insert(chromiumNickelRecipe.ingredients, { name = "nickel-ingot", amount = 4 })
table.insert(chromiumNickelRecipe.ingredients, { type = "fluid", name = "se-pyroflux", amount = 20 })
chromiumNickelRecipe.results[1].amount = 1200

data:extend({
    manganeseRecipe,
    cobaltNickelRecipe,
    chromiumNickelRecipe
})
]]--

return config