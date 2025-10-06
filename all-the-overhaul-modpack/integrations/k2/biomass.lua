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
        { type = "item", name = "stone", amount = 100 },
        { type = "item", name = "wood", amount = 100 },
        { type = "item", name = "coke", amount = 100 },
        { type = "item", name = "raw-fish", amount = 5 }
    },
    results = {
        { type = "item", name = "kr-biomass", amount = 5 },
    }
})
recipe.unlockedByTechnology("military-science-pack")
recipe.apply()