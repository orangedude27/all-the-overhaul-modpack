-- Recipe balancing

-- Electric motor with rare metals
local motorRecipe = data["raw"].recipe["rare-metal-electric-motor"]
motorRecipe.normal.ingredients = {
    { "iron-gear-wheel", 1 },
    { "iron-plate", 1 },
    { "aluminum-cable", 1 },
    { "rare-metals", 1 }
}
motorRecipe.expensive.ingredients = {
    { "iron-gear-wheel", 1 },
    { "iron-plate", 1 },
    { "aluminum-cable", 1 },
    { "rare-metals", 3 }
}
motorRecipe.normal.results[1].amount = 1
motorRecipe.expensive.results[1].amount = 1