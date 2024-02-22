local config = {
    name = "lead",
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
        plate = { icon = "__bzlead__/graphics/icons/lead-plate.png", icon_size = 64, icon_mipmaps = 3 },
        dust = { icon = "__bzlead__/graphics/icons/lead-powder.png", icon_size = 64 },
        ingot = { icon = "__bzlead__/graphics/icons/lead-ingot.png", icon_size = 128, icon_mipmaps = 3 },
        molten = { icon = "__bzlead__/graphics/icons/molten-lead.png", icon_size = 128 },
        enriched = { icon = "__bzlead__/graphics/icons/enriched-lead.png", icon_size = 64, icon_mipmaps = 3 },
        pure = { icon = "__248k__/ressources/fusion/fu_materials/fu_materials_pure_lead.png", icon_size = 64 },
        pellets = { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-lead-pellets.png", icon_size = 128, icon_mipmaps = 3 }
    },
    additionalIngredient = {
        dustToPure = { type = "fluid", name = "oxygen", amount = 4 }
    },
    additionalResults = {
        dustToPlate = {
            { name = "silver-ore", amount_min = 1, amount_max = 2 },
            { name = "bismuth-plate", amount = 1, probability = 0.16 }
        },
        dustToPure = {
            { name = "silver-ore", amount = 1 }
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1 }
        }
    }
}

data:extend(createRefiningData(config))
