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
atom.util.Technology("nuclear-waste-extraction").removePrerequisite("rich-water-filtration")
data.raw.technology["rich-water-filtration"] = nil

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
atom.util.recipe.replaceIngredient("el_lithium_item", "lithium")
atom.util.recipe.replaceResult("el_lithium_item", "lithium")
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

-- Remove HCP circuit
atom.util.item.removeByName("fi_materials_hcp")

-- Adjust T-Lab recipe
table.assign(data.raw.recipe["fu_lab_recipe"], {
    category = "space-manufacturing",
    ingredients = {
        { "5d-lab-10", 10 },
        { "kr-singularity-lab", 1 },
        { "energy-control-unit", 50 },
        { "se-space-radiator-2", 10 },
        { "se-space-hypercooler", 4 },
        { "gr_materials_circuit", 100 },
        { "fu_materials_energy_charged_crystal", 50 },
        { "fu_materials_KFK", 100 },
        { "fu_materials_TIM", 100 },
        { "fu_materials_magnet", 50 },
        { "ai-core", 50 },
        { "se-naquium-processor", 20 },
        { "se-heavy-composite", 50 },
        { "se-dynamic-emitter", 50 },
        { "se-nanomaterial", 50 },
        { "se-naquium-plate", 300 },
        { "se-naquium-tessaract", 5 },
        { type = "fluid", name = "se-space-coolant-supercooled", amount = 2000 },
    }
})

-- Make fuel categories of burner generator match vanilla boiler
data.raw["burner-generator"]["el_burner_entity"].burner.fuel_categories = data.raw.boiler["boiler"].energy_source.fuel_categories

data:extend({
    -- Integrate tritium from 248k with K2
    {
        type = "recipe",
        name = "248k-krastorio2-tritium",
        category = "chemistry",
        energy_required = 1,
        ingredients = { { type = "fluid", name = "fu_tritium", amount = 3 } },
        result = "tritium",
        enabled = true
    }
})

-- Set diesel train sounds to vanilla locomotive because the diesel train sounds are annoying
local dieselTrain = data.raw.locomotive["el_diesel_train_entity"]
local vanillaLocomotive = data.raw.locomotive["locomotive"]
dieselTrain.open_sound = vanillaLocomotive.open_sound
dieselTrain.close_sound = vanillaLocomotive.close_sound
dieselTrain.working_sound = vanillaLocomotive.working_sound
dieselTrain.mined_sound = vanillaLocomotive.mined_sound
dieselTrain.sound_minimum_speed = vanillaLocomotive.sound_minimum_speed
dieselTrain.sound_scaling_ratio = vanillaLocomotive.sound_scaling_ratio
