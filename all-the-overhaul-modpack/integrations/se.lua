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

-- Core fragment processing
-- Results per 20 core fragments
data.raw.recipe["se-core-fragment-omni"].results = {
    -- High yield
    { amount = 4, name = "stone" },
    { amount = 4, name = "iron-ore" },
    { amount = 4, name = "copper-ore" },
    { amount = 4, name = "tin-ore" },
    { amount = 4, name = "lead-ore" },
    { amount = 4, name = "flake-graphite" },

    -- Medium yield
    { amount = 2, name = "coal" },
    { amount = 2, name = "zircon" },
    { amount = 2, name = "aluminum-ore" },
    { amount = 2, name = "zinc-ore" },
    { amount = 2, name = "nickel-ore" },
    { amount = 2, name = "bismuth-ore" },
    { amount = 2, name = "tungsten-ore" },

    -- Low yield
    { amount = 1, name = "indite-ore" },
    { amount = 1, name = "tantalite-ore" },
    { amount = 1, name = "chromite-ore" },
    { amount = 1, name = "manganese-ore" },
    { amount = 1, name = "limestone" },
    { amount = 1, name = "raw-rare-metals" },
    { amount = 1, name = "silver-ore" },

    -- Rare
    { probability = 0.5, amount = 1, name = "uranium-ore" },
    { probability = 0.5, amount = 1, name = "gold-ore" },
    { probability = 0.5, amount = 1, name = "titanium-ore" },
    { probability = 0.5, amount = 1, name = "thorium-ore" },
    { probability = 0.5, amount = 1, name = "cobaltite-ore" },

    -- Fluids
    { amount = 32, name = "crude-oil", type = "fluid" },
    { amount = 16, name = "gas", type = "fluid" },
    { amount = 12, name = "water", type = "fluid" },
    { amount = 6, name = "mineral-water", type = "fluid" },
    { amount = 4, name = "se-pyroflux", type = "fluid" },
}

-- Remove the alternative singularity card
atom.util.recipe.removeByName("singularity-tech-card-alt")