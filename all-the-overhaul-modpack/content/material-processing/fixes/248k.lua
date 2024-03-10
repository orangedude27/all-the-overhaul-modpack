-- Remove pure to molen/plate recipes
local stages = { "el", "fi", "fu", "gr" }
for _, stage in pairs(stages) do
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]arc[%-_]pure[%-_]")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]cast[%-_]", { "fi_cast_glass_recipe" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]purify[%-_]", { "el_purify_stone_acidic_recipe" })
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]pure[%-_]")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]%a+[%-_]plate")
    atom.util.recipe.removeByNamePattern("^" .. stage .. "[%-_]%a+[%-_]ingot")
end

atom.util.recipe.removeByName("fu_lead_recipe")

atom.util.item.removeByName("fi_materials_pure_neodym")
atom.util.item.removeByName("fi_arc_neodym")