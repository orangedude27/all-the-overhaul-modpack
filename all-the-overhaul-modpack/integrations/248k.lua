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

-- Fix stone to energy crystal recipe to get energy crystal production starting
local fi_purify_stone_recipe = atom.util.Recipe("el_purify_stone_acidic_recipe")
fi_purify_stone_recipe.replaceResult("el_materials_pure_iron", "5d-iron-dust", 3)
fi_purify_stone_recipe.replaceResult("el_materials_pure_copper", "5d-copper-dust", 3)
fi_purify_stone_recipe.replaceResult("el_dirty_water", "dirty-water", 40)

-- Remove dirty water and rich water since it competes with the ATOM ore refining process
atom.util.item.removeByName("el_dirty_water")
atom.util.item.removeByName("fi_materials_flourite")
atom.util.item.removeByName("fi_dirty_water")

-- Remove Fluorite, Advanced ore purification and Advanced metal casting technologies
atom.util.technology.replacePrerequisite("fi_purifier_2_tech", "fi_glass_tech")
atom.util.technology.replacePrerequisite("fi_caster_tech", "fi_glass_tech")
data.raw.technology["fi_purifier_tech"] = nil
data.raw.technology["fi_purifier_2_tech"] = nil
data.raw.technology["fi_caster_tech"] = nil
data.raw.technology["fi_flourite_tech"] = nil
