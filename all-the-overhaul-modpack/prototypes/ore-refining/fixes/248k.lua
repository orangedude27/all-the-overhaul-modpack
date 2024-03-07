local util = require("data-util")

-- Store some exceptions
local exceptions = {
    data.raw.recipe["fi_arc_glass_recipe"],
    data.raw.recipe["fi_cast_glass_recipe"]
}

-- Remove pure to molen/plate recipes
local stages = { "el", "fi", "fu", "gr" }
for _, stage in pairs(stages) do
    removeRecipesByPattern("^" .. stage .. "[%-_]arc[%-_]pure[%-_]")
    removeRecipesByPattern("^" .. stage .. "[%-_]arc[%-_]glass[%-_]")
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

-- Increase speed of el_arc_furnace_entity
arcFurnace.crafting_speed = 4
arcFurnace.energy_usage = "1600kW"

-- Allow productivity modules in el_purifier_entity, add a third module slot and increase crafting speed
local purifier = data.raw["assembling-machine"]["el_purifier_entity"]
table.insert(purifier.allowed_effects, "productivity")
purifier.module_specification.module_slots = 3
purifier.crafting_speed = 4
purifier.energy_usage = "320kW"

-- Allow productivity modules in el_caster_entity, add a third module slot and increase crafting speed
local caster = data.raw["assembling-machine"]["el_caster_entity"]
table.insert(caster, "productivity")
caster.module_specification.module_slots = 3
caster.crafting_speed = 4
caster.energy_usage = "800kW"

-- Use atom-coal-dust instead of fi_crushed_coal_item
util.find_and_replace_ingredients({["fi_crushed_coal_item"] = "atom-coal-dust"})
util.find_and_replace_results({["fi_crushed_coal_item"] = "atom-coal-dust"})

-- Use atom-stone-dust instead of fi_crushed_stone_item
util.find_and_replace_ingredients({["fi_crushed_stone_item"] = "atom-stone-dust"})
util.find_and_replace_results({["fi_crushed_stone_item"] = "atom-stone-dust"})