local config = {
    name = "lead",
    order = "f",
    enableAtStart = true,
    itemNames = {
        ore = "lead-ore",
        plate = "lead-plate",
        dust = "lead-dust",
        ingot = "lead-ingot",
        molten = "molten-lead",
        enriched = "enriched-lead",
        pure = "fu_materials_pure_lead",
        pellets = "atom-lead-pellets"
    },
    icons = {
        ore = { icon = "__bzlead__/graphics/icons/lead-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {
        dustToPure = { type = "fluid", name = "oxygen", amount = 4 }
    },
    additionalResults = {
        oreToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.25 },
            { name = "bismuth-plate", amount = 1, probability = 0.25 }
        },
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.625 },
            { name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToIngot = {
            { name = "silver-ore", amount = 1, probability = 1.66 }
        },
        dustToEnriched = {
            { name = "silver-ore", amount = 1, probability = 2.5 }
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1, probability = 2.5 }
        }
    }
}

createIcons(config)

data:extend(createRefiningData(config))

setItemIcons(config)
setStackSizes(config)
setSubGroup(config)

return config