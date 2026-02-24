-- Replace dust from 248k with ATOM dust
atom.util.recipe.replaceIngredient("fi_crushed_coal", "atom-coal-dust")
atom.util.recipe.replaceResult("fi_crushed_coal", "atom-coal-dust")
atom.util.recipe.replaceIngredient("fi_crushed_stone", "atom-stone-dust")
atom.util.recipe.replaceResult("fi_crushed_stone", "atom-stone-dust")
atom.util.recipe.replaceIngredient("fu_crushed_lead", "lead-dust")
atom.util.recipe.replaceResult("fu_crushed_lead", "lead-dust")

-- Remove pure to molen/plate recipes
local stages = { "el", "fi", "fu", "gr" }
for _, stage in pairs(stages) do
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]arc[%-_]pure[%-_]")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]cast[%-_]")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]purify[%-_]", { "el_purify_stone_acidic" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]pure[%-_]", { "fi_pure_fuel", "fi_pure_fuel_recycle" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]%a+[%-_]plate")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]%a+[%-_]ingot")
end

atom.util.recipe.removeByName("fu_lead")
atom.util.recipe.removeByName("fu_lead_crushed")

atom.util.item.removeByName("el_arc_pure_aluminum")
atom.util.item.removeByName("el_arc_pure_copper")
atom.util.item.removeByName("el_arc_pure_iron")
atom.util.item.removeByName("fu_arc_pure_lead")
atom.util.item.removeByName("fi_arc_gold")
atom.util.item.removeByName("fi_arc_titan")
atom.util.item.removeByName("fi_arc_neodym")
atom.util.item.removeByName("fi_pure_neodym")
atom.util.item.removeByName("fu_crushed_lead")
atom.util.item.removeByName("fi_crushed_coal")
atom.util.item.removeByName("fi_crushed_stone")

atom.util.Technology("el_caster_tech").removeRecipe("el_cast_pure_iron")
atom.util.Technology("el_caster_tech").removeRecipe("el_cast_pure_copper")
atom.util.Technology("el_purifier_tech").removeRecipe("el_purify_iron")
