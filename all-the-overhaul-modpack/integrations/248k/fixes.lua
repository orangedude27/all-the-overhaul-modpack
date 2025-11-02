require("solar")

-- Add ingoing pipe connection to the arc furnace for Pyroflux
local arcFurnace = data.raw["assembling-machine"]["el_arc_furnace_entity"]
for i = 1, 2 do
    local fluidBox = arcFurnace.fluid_boxes[i]
    fluidBox.production_type = "input"
    fluidBox.pipe_connections[1].flow_direction = "input"
end

-- Increase speed of el_arc_furnace_entity
arcFurnace.crafting_speed = 4
arcFurnace.energy_usage = "1600kW"

-- Allow productivity modules in el_purifier_entity, add a third module slot and increase crafting speed
local purifier = data.raw["assembling-machine"]["el_purifier_entity"]
table.insert(purifier.allowed_effects, "productivity")
purifier.module_slots = 3
purifier.crafting_speed = 4
purifier.energy_usage = "320kW"

-- Allow productivity modules in el_caster_entity, add a third module slot and increase crafting speed
local caster = data.raw["assembling-machine"]["el_caster_entity"]
table.insert(caster, "productivity")
caster.module_slots = 3
caster.crafting_speed = 4
caster.energy_usage = "800kW"

-- Remove ingot refining techs
data.raw.technology["fu_gold_ingot_tech"] = nil
data.raw.technology["fu_lead_ingot_tech"] = nil
data.raw.technology["fu_titan_ingot_tech"] = nil
data.raw.technology["fu_neodym_ingot_tech"] = nil

-- Fix stone to energy crystal recipe to get energy crystal production starting
local fi_purify_stone_recipe = atom.util.Recipe("el_purify_stone_acidic_recipe")
fi_purify_stone_recipe.replaceResult("el_materials_pure_iron", "5d-iron-dust", 3)
fi_purify_stone_recipe.replaceResult("el_materials_pure_copper", "5d-copper-dust", 3)
fi_purify_stone_recipe.replaceResult("el_dirty_water", "kr-dirty-water", 40)

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
atom.util.item.migrate("el_lithium_item", "kr-lithium")

-- Adjust low density structure recipe
local lds = data.raw.recipe["fi_low-density-structure_recipe"]
lds.ingredients = {
    { type = "item", name = "titanium-plate", amount = 4 },
    { type = "item", name = "niobium-plate", amount = 10 },
    { type = "item", name = "carbon-fiber", amount = 10 },
    { type = "item", name = "bismuth-glass", amount = 4 },
    { type = "item", name = "el_materials_ALK", amount = 5 },
    { type = "item", name = "chromel-r-fabric", amount = 5 },
    { type = "fluid", name = "helium", amount = 20 }
}
lds.results[1].amount = 2
lds.category = "laser-milling-exclusive"
atom.util.Recipe(lds).allowProductivity()

-- Energy crystal usage
atom.util.Recipe("productivity-module").addIngredient("el_energy_crystal_item", 10)
atom.util.Recipe("productivity-module-2").addIngredient("el_energy_crystal_item", 10)
atom.util.Recipe("kr-big-battery-equipment").addIngredient("el_energy_crystal_item", 4)
atom.util.Recipe("se-rtg-equipment").addIngredient("el_energy_crystal_item", 4)
atom.util.Recipe("kr-big-solar-panel-equipment").addIngredient("el_energy_crystal_item", 4)

-- Refined crystal usage
atom.util.Recipe("productivity-module-3").replaceIngredient("mlcc", "fu_materials_refined_crystal", 4)
atom.util.Recipe("kr-big-battery-mk2-equipment").addIngredient("fu_materials_refined_crystal", 4)
atom.util.Recipe("kr-big-superior-solar-panel-equipment").addIngredient("fu_materials_refined_crystal", 4)

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
        { type = "item", name = "kr-singularity-lab", amount = 2 },
        { type = "item", name = "kr-energy-control-unit", amount = 50 },
        { type = "item", name = "se-space-radiator-2", amount = 10 },
        { type = "item", name = "se-space-hypercooler", amount = 4 },
        { type = "item", name = "gr_materials_circuit", amount = 100 },
        { type = "item", name = "fu_materials_energy_charged_crystal", amount = 50 },
        { type = "item", name = "fu_materials_KFK", amount = 100 },
        { type = "item", name = "fu_materials_TIM", amount = 100 },
        { type = "item", name = "fu_materials_magnet", amount = 50 },
        { type = "item", name = "kr-ai-core", amount = 50 },
        { type = "item", name = "se-naquium-processor", amount = 20 },
        { type = "item", name = "se-heavy-composite", amount = 50 },
        { type = "item", name = "se-dynamic-emitter", amount = 50 },
        { type = "item", name = "se-nanomaterial", amount = 50 },
        { type = "item", name = "se-naquium-plate", amount = 300 },
        { type = "item", name = "se-naquium-tessaract", amount = 5 },
        { type = "fluid", name = "se-space-coolant-supercooled", amount = 2000 },
    }
})

-- Reset S-Lab inputs
data.raw.lab["gr_lab_entity"].inputs = {
    "se-rocket-science-pack",
    "gr_materials_red_pack_item",
    "gr_materials_green_pack_item",
    "gr_materials_blue_pack_item",
    "gr_materials_purple_pack_item",
    "gr_materials_yellow_pack_item",
    "gr_materials_grey_pack_item",
    "gr_materials_white_pack_item"
}

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
        results = {{type="item", name="kr-tritium", amount=1}},
        enabled = true
    }
})

-- Remove hydrofluoric acid
atom.util.recipe.replaceIngredient("fi_strong_acid", "el_acidic_water")
atom.util.item.removeByName("fi_strong_acid")

-- Balance Nuclear assembling machine to compete with Assembling machine mk3
local nuclearAssembler = data.raw["assembling-machine"]["fi_crafter_entity"]
nuclearAssembler.module_slots = 5
nuclearAssembler.energy_source.fuel_inventory_size = 1
nuclearAssembler.energy_source.burnt_inventory_size = 1

-- Reduce energy usage of advanced roboport to sane values
data.raw["roboport"]["fi_robo_port_entity"].energy_usage = "200kW"
data.raw["roboport"]["fi_robo_port_entity"].energy_source.input_flow_limit = "8MW"
data.raw["roboport"]["fi_robo_charger_entity"].energy_usage = "100kW"
data.raw["roboport"]["fi_robo_charger_entity"].energy_source.input_flow_limit = "8MW"