local function dirtyWaterRecipe(recipeName, mainResult, mainProbability, secondaryResult, secondaryProbability)
    local recipe = data.raw.recipe[recipeName]
    table.assign(recipe, {
        results = {
            { type = "fluid", name = "water", amount = 90, ignored_by_productivity = 90, ignored_by_stats = 90 },
            { type = "item", name = "atom-stone-dust", amount = 1, probability = 0.3 },
            { type = "item", name = mainResult, amount = 1, probability = mainProbability },
            secondaryResult and { type = "item", name = secondaryResult, amount = 1, probability = secondaryProbability } or nil
        },
        main_product = mainResult,
        subgroup = "water"
    })
end

-- High yield
dirtyWaterRecipe("kr-filter-iron-ore-from-dirty-water", "5d-iron-dust", 0.4)
dirtyWaterRecipe("kr-filter-copper-ore-from-dirty-water", "5d-copper-dust", 0.4)
dirtyWaterRecipe("dirty-water-filtration-graphite", "flake-graphite", 0.2) -- Flake graphite has no dust variant
dirtyWaterRecipe("dirty-water-filtration-tin", "atom-tin-dust", 0.4)
dirtyWaterRecipe("dirty-water-filtration-lead", "lead-dust", 0.4, "5d-copper-dust", 0.1)

-- Medium yield
dirtyWaterRecipe("dirty-water-filtration-aluminum", "atom-aluminum-dust", 0.2, "silica", 0.2)
dirtyWaterRecipe("dirty-water-filtration-bismuth", "atom-bismuth-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-chromium", "atom-chromium-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-cobalt", "atom-cobalt-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-indium", "atom-indium-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-manganese", "atom-manganese-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-nickel", "atom-nickel-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-tantalite", "atom-tantalite-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-tungsten", "tungsten-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-zinc", "atom-zinc-dust", 0.2)
dirtyWaterRecipe("dirty-water-filtration-zircon", "atom-zirconium-dust", 0.2)

-- Low yield
dirtyWaterRecipe("dirty-water-filtration-gold", "atom-gold-dust", 0.1, "5d-copper-dust", 0.1)
dirtyWaterRecipe("kr-filter-rare-metal-ore-from-dirty-water", "atom-rare-metals-dust", 0.1)
dirtyWaterRecipe("dirty-water-filtration-silver", "atom-silver-dust", 0.1, "atom-bismuth-dust", 0.1)
dirtyWaterRecipe("dirty-water-filtration-titanium", "titanium-dust", 0.1)

-- Set subgroup for SE advanced filtration
data.raw.recipe["se-kr-dirty-water-filtration-holmium"].subgroup = "water"
data.raw.recipe["se-kr-dirty-water-filtration-iridium"].subgroup = "water"

-- Add recipe for stone dust to dirty water
local stoneRecipe = atom.util.Recipe(table.deepcopy(data.raw.recipe["el_purify_stone_acidic_recipe"]))
table.assign(stoneRecipe.prototype, {
    name = "atom-dirty-water-stone-dust",
    ingredients = {
        { type = "fluid", name = "water", amount = 100, ignored_by_productivity = 100, ignored_by_stats = 100 },
        { type = "item", name = "atom-stone-dust", amount = 4 },
        { type = "fluid", name = "el_acidic_water", amount = 1 }
    },
    results = { { type = "fluid", name = "kr-dirty-water", amount = 100, ignored_by_productivity = 100, ignored_by_stats = 100 } },
    main_product = "kr-dirty-water",
    icons = { { icon = data.raw.fluid["kr-dirty-water"].icon, icon_size = data.raw.fluid["kr-dirty-water"].icon_size } },
    subgroup = "water"
})
stoneRecipe.apply()
stoneRecipe.unlockedByTechnology("kr-enriched-ores")