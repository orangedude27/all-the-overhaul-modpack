local config = atom.processing.util.prepareConfig({
    name = "titanium",
    order = "p",
    itemNames = {
        ore = "titanium-ore",
        plate = "titanium-plate",
        dust = "titanium-dust",
        ingot = "titanium-ingot",
        molten = "molten-titanium",
        enriched = "enriched-titanium",
        pure = "atom-titanium-pure",
        pellets = "atom-titanium-pellets"
    },
    icons = {
        ore = { icon = "__bztitanium__/graphics/icons/titanium-ore.png", icon_size = 64, icon_mipmaps = 3 },
        "pure", "plate", "dust", "ingot", "molten", "enriched", "pellets"
    },
    additionalIngredient = {
        dustToPure = { type = "fluid", name = "hydrogen-chloride", amount = 4 }
    },
    unlockedBy = {
        oreToDust = "titanium-processing",
        dustToPlate = "titanium-processing"
    },
    effectiveness = 4,
    hardness = 8
})

atom.processing.util.createDefaultData(config)
atom.processing.util.finalizeConfig(config)

atom.processing.materials.titanium = config