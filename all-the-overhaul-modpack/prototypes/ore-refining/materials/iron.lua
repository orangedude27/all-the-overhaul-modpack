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
        "plate",
        "dust",
        "ingot",
        "molten",
        "enriched",
        pure = { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_iron.png", icon_size = 64 },
        "pellets"
    },
    additionalResults = {
        oreToPlate = {
            { name = "manganese-plate", amount = 1, probability = 0.1 }
        },
        dustToPlate = {
            { name = "manganese-plate", amount = 1, probability = 0.05 }
        },
        dustToIngot = {
            { name = "manganese-ore", amount = 1, probability = 0.05 }
        }
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

--[[
local manganeseRecipe = ingotToMoltenRecipe(config)
manganeseRecipe.name = "atom-iron-molten-manganese"
table.insert(manganeseRecipe.ingredients, { name = "manganese-ingot", amount = 4 })
table.insert(manganeseRecipe.ingredients, { type = "fluid", name = "se-pyroflux", amount = 10 })
manganeseRecipe.results[1].amount = 800

local cobaltNickelRecipe = ingotToMoltenRecipe(config)
cobaltNickelRecipe.name = "atom-iron-molten-cobalt-nickel"
table.insert(cobaltNickelRecipe.ingredients, { name = "cobalt-ingot", amount = 4 })
table.insert(cobaltNickelRecipe.ingredients, { name = "nickel-ingot", amount = 4 })
table.insert(cobaltNickelRecipe.ingredients, { type = "fluid", name = "se-pyroflux", amount = 20 })
cobaltNickelRecipe.results[1].amount = 1200

local chromiumNickelRecipe = ingotToMoltenRecipe(config)
chromiumNickelRecipe.name = "atom-iron-molten-chromium-nickel"
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