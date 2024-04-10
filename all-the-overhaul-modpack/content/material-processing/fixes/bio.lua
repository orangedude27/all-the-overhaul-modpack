-- Use atom-stone-dust instead of stone-crushed
atom.util.recipe.replaceIngredient("stone-crushed", "atom-stone-dust")
atom.util.recipe.replaceResult("stone-crushed", "atom-stone-dust")
data.raw.item["stone-crushed"] = nil

-- Make the stone crusher from bio industries unattractive compared to the masher
data.raw.furnace["bi-stone-crusher"].energy_usage = "500kW"