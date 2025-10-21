local config = atom.processing.util.prepareConfig({
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
        ore = { icon = "__bzlead2__/graphics/icons/lead-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {
        dustToPure = { type = "fluid", name = "kr-oxygen", amount = 4 }
    },
    additionalResults = {
        oreToPlate = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.25 },
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.25 }
        },
        dustToPlate = {
            { type = "item", name = "silver-ore", amount = 1, probability = 0.625 },
            { type = "item", name = "bismuth-plate", amount = 1, probability = 0.125 }
        },
        dustToIngot = {
            { type = "item", name = "silver-ore", amount = 1 },
            { type = "item", name = "silver-ore", amount = 1, probability = 0.66 }
        },
        dustToEnriched = {
            { type = "item", name = "silver-ore", amount = 2 },
            { type = "item", name = "silver-ore", amount = 1, probability = 0.5 }
        },
        pureToEnriched = {
            { type = "item", name = "silver-ore", amount = 2 },
            { type = "item", name = "silver-ore", amount = 1, probability = 0.5 }
        }
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.lead = config