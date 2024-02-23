-- Store some exceptions
local exceptions = {
    data.raw.recipe["fi_arc_glass_recipe"],
    data.raw.recipe["fi_cast_glass_recipe"]
}

-- Remove pure to molen/plate recipes
local stages = { "el", "fi", "fu", "gr" }
for _, stage in pairs(stages) do
    removeRecipesByPattern("^" .. stage .. "[%-_]arc[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]cast[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]purify[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]%a+[%-_]plate")
    removeRecipesByPattern("^" .. stage .. "[%-_]%a+[%-_]ingot")
end

removeRecipeByName("fu_lead_recipe")

-- re-add exceptions
data:extend(exceptions)

-- Allow productivity modules in el_purifier_entity
table.insert(data.raw["assembling-machine"]["el_purifier_entity"].allowed_effects, "productivity")