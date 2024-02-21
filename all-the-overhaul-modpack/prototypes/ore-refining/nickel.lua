local config = {
    name = "nickel",
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
        plate = {icon = "__IfNickel__/graphics/icons/nickel-plate.png",                 icon_size = 64},
        dust = {icon = "__all-the-overhaul-modpack__/graphics/icons/atom-nickel-dust.png", icon_size = 32, icon_mipmaps = 3},
        ingot = {icon = "__IfNickel__/graphics/icons/nickel-ingot.png",                 icon_size = 64},
        molten = {icon = "__IfNickel__/graphics/icons/molten-nickel.png",                  icon_size = 64},
        enriched = {icon = "__IfNickel__/graphics/icons/enriched-nickel.png",                    icon_size = 64},
        pure = {icon = "__all-the-overhaul-modpack__/graphics/icons/atom-nickel-pure.png", icon_size = 64},
        pellets = {icon = "__all-the-overhaul-modpack__/graphics/icons/atom-nickel-pellets.png",                   icon_size = 128}
    },
    additionalResults = {
        dustToPlate = {
            { name = "cobaltite-ore", amount = 1}
        },
        dustToEnriched = {
        },
        dustToPure = {
        },
        pureToEnriched = {
        }
    }
}

data:extend(createRefiningData(config))

data:extend({
    oreToDustRecipe(config),
    item(config, "dust"),
    item(config, "pure")
})