local config = atom.processing.util.prepareConfig({
    name = "nickel",
    order = "h",
    enableAtStart = true,
    itemNames = {
        ore = "nickel-ore",
        plate = "nickel-plate",
        dust = "atom-nickel-dust",
        ingot = "nickel-ingot",
        molten = "molten-nickel",
        enriched = "enriched-nickel",
        pure = "atom-nickel-pure",
        pellets = "atom-nickel-pellets"
    },
    icons = {
        ore = { icon = "__IfNickel__/graphics/icons/nickel-ore.png", icon_size = 64, icon_mipmaps = 4 },
        plate = { icon = "__IfNickel__/graphics/icons/nickel-plate.png", icon_size = 64 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalResults = {
        oreToPlate = {
            { name = "cobaltite-ore", amount = 1, probability = 0.5 }
        },
        dustToPlate = {
            { name = "cobaltite-ore", amount = 1, probability = 0.1 }
        }
    },
    effectiveness = 2,
    hardness = 3
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.nickel = config