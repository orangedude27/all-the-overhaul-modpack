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

-- Merge 248k lithium into K2 lithium
local lithium248k = data.raw.technology["el_lithium_tech"]
local lithiumK2 = data.raw.technology["kr-lithium-processing"]
atom.util.technology.replacePrerequisite("kr-lithium-processing", "kr-advanced-chemistry")
table.assign(lithium248k.effects, lithiumK2.effects)
table.assign(lithium248k, {
    icon = lithiumK2.icon,
    icon_size = lithiumK2.icon_size,
    icon_mipmaps = lithiumK2.icon_mipmaps,
})
data.raw.technology["kr-lithium-processing"] = nil
atom.util.item.removeByName("el_lithium_item")

-- Adjust low density structure recipe
local lds = atom.util.Recipe("fi_low-density-structure_recipe")
lds.addIngredient("titanium-plate", 8)
lds.addIngredient("diamond", 4)
lds.addIngredient("zirconia", 20)
lds.addIngredient("carbon-fiber", 20)
lds.prototype.category = "crafting"

-- Energy crystal usage
atom.util.Recipe("productivity-module").addIngredient("el_energy_crystal_item", 10)
atom.util.Recipe("productivity-module-2").addIngredient("el_energy_crystal_item", 10)
atom.util.Recipe("big-battery-equipment").addIngredient("el_energy_crystal_item", 4)
atom.util.Recipe("se-rtg-equipment").addIngredient("el_energy_crystal_item", 4)
atom.util.Recipe("big-solar-panel-equipment").addIngredient("el_energy_crystal_item", 4)

-- Refined crystal usage
atom.util.Recipe("productivity-module-3").replaceIngredient("mlcc", "fu_materials_refined_crystal", 4)
atom.util.Recipe("big-battery-mk2-equipment").addIngredient("fu_materials_refined_crystal", 4)
atom.util.Recipe("big-imersite-solar-panel-equipment").addIngredient("fu_materials_refined_crystal", 4)

-- Neodymium usage
atom.util.Recipe("se-space-hypercooler").addIngredient("fi_materials_neodym", 15)
atom.util.Recipe("se-space-radiator").addIngredient("fi_materials_neodym", 15)
atom.util.Recipe("se-space-radiator-2").addIngredient("fi_materials_neodym", 15)

-- Adjust quantum processor recipe
atom.util.Recipe("se-quantum-processor").replaceIngredient("processing-unit", "gr_materials_circuit", 4)

-- Change localized name of a few things that have similar names
data.raw.recipe["fu_carbon_fiber_recipe"].localised_name = "Graphite fiber"
data.raw.recipe["fu_KFK_recipe"].localised_name = "Graphite fiber reinforced plastic"
data.raw.item["fu_tech_sign_item"].localised_name = "Broad fusion catalogue"
data.raw.technology["fu_energy_tech"].localised_name = "Fusion catalogue 2"
