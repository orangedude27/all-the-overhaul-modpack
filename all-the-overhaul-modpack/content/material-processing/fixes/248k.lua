-- Replace dust from 248k with ATOM dust
atom.util.recipe.replaceIngredient("fi_crushed_coal_item", "atom-coal-dust")
atom.util.recipe.replaceResult("fi_crushed_coal_item", "atom-coal-dust")
atom.util.recipe.replaceIngredient("fi_crushed_stone_item", "atom-stone-dust")
atom.util.recipe.replaceResult("fi_crushed_stone_item", "atom-stone-dust")
atom.util.recipe.replaceIngredient("fu_crushed_lead_item", "lead-dust")
atom.util.recipe.replaceResult("fu_crushed_lead_item", "lead-dust")

-- Remove pure to molen/plate recipes
local stages = { "el", "fi", "fu", "gr" }
for _, stage in pairs(stages) do
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]arc[%-_]pure[%-_]")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]cast[%-_]", { "fi_cast_glass_recipe" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]purify[%-_]", { "el_purify_stone_acidic_recipe" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]pure[%-_]", { "fi_pure_fuel_recipe", "fi_pure_fuel_recycle_recipe" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]%a+[%-_]plate")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]%a+[%-_]ingot")
end

atom.util.recipe.removeByName("fu_lead_recipe")
atom.util.recipe.removeByName("fu_lead_crushed_recipe")

atom.util.item.removeByName("el_arc_pure_aluminum")
atom.util.item.removeByName("el_arc_pure_copper")
atom.util.item.removeByName("el_arc_pure_iron")
atom.util.item.removeByName("fu_arc_pure_lead")
atom.util.item.removeByName("fi_arc_gold")
atom.util.item.removeByName("fi_arc_titan")
atom.util.item.removeByName("fi_arc_neodym")
atom.util.item.removeByName("fi_materials_pure_neodym")
atom.util.item.removeByName("fu_crushed_lead_item")
atom.util.item.removeByName("fi_crushed_coal_item")
atom.util.item.removeByName("fi_crushed_stone_item")

atom.util.Technology("el_caster_tech").removeRecipe("el_cast_pure_iron_recipe")
atom.util.Technology("el_caster_tech").removeRecipe("el_cast_pure_copper_recipe")
atom.util.Technology("el_purifier_tech").removeRecipe("el_purify_iron_recipe")
