local config = {
    name = "",
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
        dustToEnriched = {
        },
        dustToPure = {
        },
        pureToEnriched = {
        }
    }
}

data:extend(createRefiningData(config))