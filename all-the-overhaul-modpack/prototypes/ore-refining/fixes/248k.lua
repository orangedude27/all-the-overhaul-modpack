-- Remove pure to molen/plate recipes
local stages = { "el", "fi", "fu", "gr" }
for _, stage in pairs(stages) do
    removeRecipesByPattern("^" .. stage .. "[%-_]arc[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]cast[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]purify[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]%a+[%-_]plate")
    removeRecipesByPattern("^" .. stage .. "[%-_]%a+[%-_]ingot")
end

removeRecipesByName("fu_lead_recipe")