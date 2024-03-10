-- Remove ingot refining techs
data.raw.technology["fu_gold_ingot_tech"] = nil
data.raw.technology["fu_lead_ingot_tech"] = nil
data.raw.technology["fu_titan_ingot_tech"] = nil
data.raw.technology["fu_neodym_ingot_tech"] = nil

-- Replace dust from 248k with ATOM dust
atom.util.recipe.replaceIngredient("fi_crushed_coal_item", "atom-coal-dust")
atom.util.recipe.replaceResult("fi_crushed_coal_item", "atom-coal-dust")
atom.util.recipe.replaceIngredient("fi_crushed_stone_item", "atom-stone-dust")
atom.util.recipe.replaceResult("fi_crushed_stone_item", "atom-stone-dust")