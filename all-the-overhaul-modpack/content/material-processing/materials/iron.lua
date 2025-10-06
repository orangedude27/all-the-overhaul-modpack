local config = atom.processing.util.prepareConfig({
    name = "iron",
    order = "a",
    enableAtStart = true,
    itemNames = {
        ore = "iron-ore",
        plate = "iron-plate",
        dust = "5d-iron-dust",
        ingot = "se-iron-ingot",
        molten = "se-molten-iron",
        enriched = "kr-enriched-iron",
        pure = "el_materials_pure_iron",
        pellets = "atom-iron-pellets"
    },
    icons = {
        ore = { icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, icon_mipmaps = 4 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalResults = {
        oreToPlate = {
            { type = "item", name = "manganese-plate", amount = 1, probability = 0.1 }
        },
        dustToPlate = {
            { type = "item", name = "manganese-plate", amount = 1, probability = 0.05 }
        },
        dustToIngot = {
            { type = "item", name = "manganese-ore", amount = 1, probability = 0.05 }
        }
    }
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.iron = config