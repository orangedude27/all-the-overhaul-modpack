-- Name in game: Biomatter

local recipe = atom.util.Recipe({
    type = "recipe",
    name = "atom-biomass-growing",
    category = "chemistry",
    enabled = true,
    energy_required = 100,
    ingredients = {
        { type = "fluid", name = "petroleum-gas", amount = 1000 },
        { type = "fluid", name = "oxygen", amount = 1000 },
        { "stone", 100 },
        { "wood", 100 },
        { "coke", 100 },
        { "raw-fish", 5 }
    },
    results = {
        { type = "item", name = "biomass", amount = 5 },
    }
})
recipe.unlockedByTechnology("military-science-pack")
recipe.apply()