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
    removeRecipesByPattern("^" .. stage .. "[%-_]pure[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]%a+[%-_]plate")
    removeRecipesByPattern("^" .. stage .. "[%-_]%a+[%-_]ingot")
end

removeRecipeByName("fu_lead_recipe")

-- re-add exceptions
for _, recipe in pairs(exceptions) do
    data.raw.recipe[recipe.name] = recipe
end

-- Remove Advanced ore purification and Advanced metal casting technologies
for _, technology in pairs(data.raw.technology) do
    if technology.prerequisites then
        for i, prerequisite in pairs(technology.prerequisites) do
            if prerequisite == "fi_caster_tech" then
                technology.prerequisites[i] = "fi_flourite_tech"
            end
        end
    end
end
data.raw.technology["fi_purifier_tech"] = nil
data.raw.technology["fi_caster_tech"] = nil

-- Add ingoing pipe connection to the arc furnace for Pyroflux
local arcFurnace = data.raw["assembling-machine"]["el_arc_furnace_entity"]
for i = 1, 2 do
    local fluidBox = arcFurnace.fluid_boxes[i]
    fluidBox.production_type = "input"
    fluidBox.base_level = -1
    fluidBox.pipe_connections[1].type = "input"
end

-- Allow productivity modules in el_purifier_entity and add a third module slot
table.insert(data.raw["assembling-machine"]["el_purifier_entity"].allowed_effects, "productivity")
data.raw["assembling-machine"]["el_purifier_entity"].module_specification.module_slots = 3

-- Allow productivity modules in el_caster_entity and add a fourth module slot
table.insert(data.raw["assembling-machine"]["el_caster_entity"].allowed_effects, "productivity")
data.raw["assembling-machine"]["el_caster_entity"].module_specification.module_slots = 4