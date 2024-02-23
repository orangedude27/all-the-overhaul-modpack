local config = {
    name = "",
    order = "",
    itemNames = {
        ore = "",
        plate = "",
        dust = "",
        ingot = "",
        molten = "",
        enriched = "",
        pure = "",
        pellets = ""
    },
    icons = {
        ore = ,
        plate = ,
        dust = ,
        ingot = ,
        molten = ,
        enriched = ,
        pure = ,
        pellets =
    },
    additionalResults = {
        oreToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-plate", amount = 1, probability = 0.5 }
        },
        dustToPlate = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-plate", amount = 1, probability = 0.5 }
        },
        dustToIngot = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        dustToEnriched = {
            { name = "silver-ore", amount = 1, probability = 0.5 },
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        dustToPure = {
            { name = "bismuth-ore", amount = 1, probability = 0.5 }
        },
        pureToEnriched = {
            { name = "silver-ore", amount = 1, probability = 0.5 }
        }
    }
}

data:extend(createRefiningData(config))