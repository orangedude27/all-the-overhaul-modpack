local atom_util = require("_data-util")
local Recipe = require('__stdlib__/stdlib/data/recipe')

-- Fix Portable fusion reactor recipe
bobmods.lib.recipe.remove_ingredient("fusion-reactor-equipment", "se-fusion-test-data")
bobmods.lib.recipe.add_new_ingredient("fusion-reactor-equipment", { "fusion-stable-data", 50 })
if mods["RampantArsenal"] then
-- Portable Fusion Reactor MK2
bobmods.lib.recipe.add_new_ingredient("mk3-generator-rampant-arsenal", { "fusion-speed-data", 50 })
-- Portable Nuclear Reactor
bobmods.lib.recipe.add_new_ingredient("nuclear-generator-rampant-arsenal", { "fusion-accuracy-data", 50 })
end
-- Delete HCP circuit
bobmods.lib.recipe.remove_ingredient("se-quantum-processor", "gr_materials_circuit")
bobmods.lib.recipe.hide("gr_circuit_recipe")

data:extend({
--Alt recipe of Tritium
	{
        type = "recipe",
        name = "248k-krastorio2-tritium",
        category = "chemistry",
        energy_required = 1,
        ingredients = {{type="fluid", name="fu_tritium", amount=3}},
        result = "tritium",
        enabled = true
    },
--Data

	
})

-- K2 Integration
atom_util.replace_or_add_ingredient("kr-advanced-assembling-machine", "assembling-machine-3", "5d-assembling-machine-06", 2, false)
atom_util.replace_or_add_ingredient("kr-advanced-assembling-machine", "electric-furnace", "5d-electric-furnace-03", 2, false)

bobmods.lib.recipe.add_new_ingredient("kr-advanced-chemical-plant", "5d-chemical-plant-04")

atom_util.replace_or_add_ingredient("k11-advanced-centrifuge", "centrifuge", "5d-centrifuge-03", 2, false)

bobmods.lib.recipe.remove_ingredient("kr-filtration-plant", "automation-core")
atom_util.replace_or_add_ingredient("kr-filtration-plant", "basic-chemical-plant", "t0-filtration-plant", 1, false)
atom_util.replace_or_add_ingredient("kr-filtration-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-carbide", 5})
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-plate", 20})

bobmods.lib.recipe.remove_ingredient("kr-electrolysis-plant", "automation-core")
atom_util.replace_or_add_ingredient("kr-electrolysis-plant", "graphite", "t0-electrolysis-plant", 1, false)
atom_util.replace_or_add_ingredient("kr-electrolysis-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "tungsten-carbide", 5})
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "hv-power-regulator", 5})

-- T-Lab
data.raw.recipe["fu_lab_recipe"].category = "space-manufacturing"
data.raw.recipe["fu_lab_recipe"].ingredients = {
  {"5d-lab-10", 10},
  {"kr-singularity-lab", 1},
  {"energy-control-unit",50},
  {"se-space-radiator-2",10},
  {"se-space-hypercooler",4},
  {"gr_materials_circuit",100},
  {"fu_materials_energy_charged_crystal",50},
  {"fu_materials_KFK", 100},
  {"fu_materials_TIM", 100},
  {"fu_materials_magnet", 50},
  {"ai-core", 50},
  {"se-naquium-processor", 20},
  {"se-heavy-composite",50},
  {"se-dynamic-emitter",50},
  {"se-nanomaterial",50},
  {"se-naquium-plate",300},
  {"se-naquium-tessaract",5},
  { type = "fluid", name = "se-space-coolant-supercooled", amount = 2000},
}

-- Electronic machine
-- 01
Recipe("mini-assembler-1"):replace_ingredient("burner-assembling-machine", { "automation-core", 3 })
Recipe("mini-assembler-1"):replace_ingredient("articulated-mechanism", { "articulated-mechanism", 2 })
-- 02
-- Nothing
-- 03
Recipe("mini-assembler-3"):remove_ingredient("advanced-gearbox", true)
Recipe("mini-assembler-3"):remove_ingredient("complex-joint", true)
Recipe("mini-assembler-3"):remove_ingredient("advanced-machining-tool", true)
Recipe("mini-assembler-3"):replace_ingredient("steel-plate", { "automation-core-3", 1 })
-- 04
Recipe("mini-assembler-4"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-4"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-4"):add_ingredient({ "imersium-gear-wheel", 4 })
Recipe("mini-assembler-4"):add_ingredient({ "processing-unit", 2 })
Recipe("mini-assembler-4"):replace_ingredient("assembling-machine-3", {"mini-assembler-3", 1})
Recipe("mini-assembler-4"):replace_ingredient("steel-plate", {"nitinol-plate", 9})
Recipe("mini-assembler-4"):replace_ingredient("productivity-module", {"cermet", 1})
-- 05
Recipe("mini-assembler-5"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-5"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-5"):replace_ingredient("titanium-plate", { "se-heavy-girder", 2 })
Recipe("mini-assembler-5"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
Recipe("mini-assembler-5"):replace_ingredient("steel-plate", { "cermet", 1 })
Recipe("mini-assembler-5"):replace_ingredient("speed-module-2", { "processing-unit", 5 })
Recipe("mini-assembler-5"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 06
Recipe("mini-assembler-6"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-6"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-6"):replace_ingredient("titanium-plate", { "imersium-beam", 2 })
Recipe("mini-assembler-6"):replace_ingredient("iron-gear-wheel", { "se-heavy-bearing", 2 })
Recipe("mini-assembler-6"):replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 5 })
Recipe("mini-assembler-6"):replace_ingredient("productivity-module-2", { "advanced-processing-unit", 5 })
Recipe("mini-assembler-6"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 07
Recipe("mini-assembler-7"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-7"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-7"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-7"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-7"):replace_ingredient("titanium-plate", { "imersium-beam", 2 })
Recipe("mini-assembler-7"):replace_ingredient("speed-module-3", { "advanced-processing-unit", 5 })
Recipe("mini-assembler-7"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 08
Recipe("mini-assembler-8"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-8"):add_ingredient({ "ai-core", 1 })
Recipe("mini-assembler-8"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-8"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-8"):replace_ingredient("titanium-plate", { "imersium-beam", 2 })
Recipe("mini-assembler-8"):replace_ingredient("productivity-module-3", { "gr_materials_circuit", 5 })
Recipe("mini-assembler-8"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 09
Recipe("mini-assembler-9"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-9"):add_ingredient({ "ai-core", 1 })
Recipe("mini-assembler-9"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-9"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-9"):replace_ingredient("speed-module-3", { "se-nanomaterial", 5 })
Recipe("mini-assembler-9"):replace_ingredient("low-density-structure", { "se-heavy-assembly", 2 })
Recipe("mini-assembler-9"):replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
Recipe("mini-assembler-9"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 10
Recipe("mini-assembler-10"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-10"):add_ingredient({ "ai-core", 1 })
Recipe("mini-assembler-10"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-10"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-10"):replace_ingredient("productivity-module-3", { "se-nanomaterial", 5 })
Recipe("mini-assembler-10"):replace_ingredient("low-density-structure", { "se-heavy-assembly", 2 })
Recipe("mini-assembler-10"):replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
Recipe("mini-assembler-10"):replace_ingredient("tungsten-carbide", { "se-naquium-cube", 1 })

--set all the crafting categories for the new electronics assemblers

Recipe("basic-electronic-components"):change_category("electronics")
Recipe("basic-electronic-components-silver"):change_category("electronics")
Recipe("automation-core"):change_category("electronics")
Recipe("blank-tech-card"):change_category("electronics")
Recipe("electronic-components"):change_category("electronics-machine")
Recipe("advanced-electronic-components"):change_category("electronics-machine")
Recipe("gold-wire"):change_category("electronics-machine")
Recipe("integrated-circuit"):change_category("electronics-machine")
Recipe("tantalum-capacitor"):change_category("electronics-machine")
Recipe("temperature-sensor"):change_category("electronics-machine")
Recipe("mlcc"):change_category("electronics-machine")
Recipe("nickel-electromagnet"):change_category("electronics-machine")
Recipe("optical-fiber"):change_category("electronics-machine")
Recipe("silver-wire"):change_category("electronics-machine")
Recipe("tinned-cable"):change_category("electronics-machine")
Recipe("advanced-cable"):change_category("electronics-machine")
Recipe("advanced-processing-unit"):change_category("electronics-machine")
Recipe("advanced-cable"):change_category("electronics-machine")
Recipe("advanced-processing-unit"):change_category("electronics-machine")

Recipe("electronic-circuit"):change_category("crafting")
Recipe("processing-unit"):change_category("crafting-with-fluid")
Recipe("rocket-control-unit"):change_category("crafting")

data.raw["assembling-machine"]["mini-assembler-1"].crafting_categories = {"electronics"}
data.raw["assembling-machine"]["mini-assembler-2"].crafting_categories = {"electronics", "electronics-machine"}
data.raw["assembling-machine"]["mini-assembler-3"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-4"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-5"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-6"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-7"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-8"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-9"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}
data.raw["assembling-machine"]["mini-assembler-10"].crafting_categories = {"electronics", "electronics-machine", "crafting-or-electromagnetics"}

table.insert(data.raw["assembling-machine"]["assembling-machine-1"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-04"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-05"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-06"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-07"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-08"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-09"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["5d-assembling-machine-10"].crafting_categories, "crafting-or-electromagnetics")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-farm")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "biofarm-mod-greenhouse")
table.insert(data.raw["assembling-machine"]["kr-greenhouse"].crafting_categories, "growing")

data:extend({
-- Fix coke recipe
	{
		type = "recipe",
		name = "coke",
		category = "smelting",
		energy_required = 16,
		enabled = false,
		allow_productivity = true,
		ingredients = {
			{ "coal", 6 },
			{ "wood", 6 },
		},
		result = "coke",
		result_count = 6,
	},
	
-- Fix stone recipe
	{
		type = "recipe",
		name = "stone-brick",
		category = "smelting",
		energy_required = 16,
		enabled = true,
		allow_productivity = true,
		ingredients = {
			{ "stone", 5 },
			{ "zircon", 5 },
		},
		result = "stone-brick",
		result_count = 5,
	},
})

--HCP circuit
atom_util.replace_or_add_ingredient("big-battery-mk3-equipment", "processing-unit", "gr_materials_circuit", 2, false)
atom_util.replace_or_add_ingredient("battery-mk3-equipment", "processing-unit", "gr_materials_circuit", 1, false)

atom_util.replace_or_add_ingredient("se-space-supercomputer-3", "advanced-processing-unit", "gr_materials_circuit", 1000, false)
bobmods.lib.recipe.add_new_ingredient("se-space-supercomputer-3", { "gr_materials_circuit", 50 })

atom_util.replace_or_add_ingredient("se-thruster-suit-3", "processing-unit", "gr_materials_circuit", 100, false)
atom_util.replace_or_add_ingredient("se-thruster-suit-4", "processing-unit", "gr_materials_circuit", 200, false)

bobmods.lib.recipe.add_new_ingredient("se-big-turbine", { "gr_materials_circuit", 20 })

atom_util.replace_or_add_ingredient("se-energy-transmitter-emitter", "processing-unit", "gr_materials_circuit", 100, false)
atom_util.replace_or_add_ingredient("se-energy-transmitter-injector", "processing-unit", "gr_materials_circuit", 50, false)
atom_util.replace_or_add_ingredient("se-energy-receiver", "processing-unit", "gr_materials_circuit", 50, false)

atom_util.replace_or_add_ingredient("fusion-reactor-equipment", "processing-unit", "gr_materials_circuit", 150, false)

atom_util.replace_or_add_ingredient("se-antimatter-reactor", "processing-unit", "gr_materials_circuit", 500, false)

atom_util.replace_or_add_ingredient("antimatter-turret-rocket", "processing-unit", "gr_materials_circuit", 1, false)
atom_util.replace_or_add_ingredient("antimatter-rocket", "processing-unit", "gr_materials_circuit", 1, false)
atom_util.replace_or_add_ingredient("antimatter-artillery-shell", "processing-unit", "gr_materials_circuit", 1, false)
atom_util.replace_or_add_ingredient("antimatter-railgun-shell", "processing-unit", "gr_materials_circuit", 1, false)

atom_util.replace_or_add_ingredient("kr-stabilizer-charging-station", "processing-unit", "gr_materials_circuit", 1, false)

atom_util.replace_or_add_ingredient("fu_star_engine_core_entity", "processing-unit", "gr_materials_circuit", 3000, false)

bobmods.lib.recipe.add_new_ingredient("kr-antimatter-reactor", { "gr_materials_circuit", 100 })
bobmods.lib.recipe.add_new_ingredient("antimatter-reactor-equipment", { "gr_materials_circuit", 50 })

bobmods.lib.recipe.add_new_ingredient("kr-energy-storage", { "gr_materials_circuit", 10 })

bobmods.lib.recipe.add_new_ingredient("se-nexus", { "gr_materials_circuit", 10 })

data.raw.fluid["hydrogen"].fuel_value = "150kJ"

data:extend({
	{
		type = "recipe",
		name = "hcp-board",
		category = "electronics-machine",
		energy_required = 10,
		enabled = false,
		ingredients =
		{
			{"gr_materials_pcb", 1},
			{"se-holmium-plate", 1},
			{"tin-plate", 2},
			{type="fluid", name="ferric-chloride-solution", amount=5}
		},
		result = "hcp-board",
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "pcb-recipe",
		category = "crafting-with-fluid",
		energy_required = 2,
		enabled = false,
		ingredients = {
            {type="fluid", name="se-vitalic-acid", amount=4},
            {type="item", name="fi_materials_glass_fiber", amount=1},
            {type="item", name="fu_materials_carbon_fiber", amount=1},
            {type="item", name="plastic-bar", amount=4},
        },
        results = {
            {type="item", name="gr_materials_pcb", amount=6},
        },
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "hcp-circuit",
		category = "crafting-with-fluid",
		energy_required = 1,
		enabled = false,
		ingredients = {
            {type="item", name="se-superconductive-cable", amount=2},
			{type="item", name="advanced-electronic-components", amount=3},
			{type="item", name="electronic-components", amount=2},
            {type="item", name="hcp-board", amount=1},
            {type="fluid", name="fi_strong_acid", amount=50},
        },
        results = {
			data.raw.fluid["depleted-acid"] and {type="fluid", name="depleted-acid", amount=50} or nil,
            {type="item", name="gr_materials_circuit", amount=1},
        },
		main_product = "gr_materials_circuit",
		allow_decomposition = false
	},
})

-- Add usage for Fenolic Board
Recipe("circuit-board"):add_ingredient({ "phenolic-board", 1 })


-- Change recipes of drills
Recipe("kr-electric-mining-drill-mk3"):replace_ingredient("se-dynamic-emitter", { "imersium-gear-wheel", 5 })
Recipe("kr-electric-mining-drill-mk3"):replace_ingredient("elite-gearbox", { "advanced-gearbox", 4 })
Recipe("kr-electric-mining-drill-mk3"):replace_ingredient("se-heavy-composite", { "nitinol-plate", 4 })
Recipe("kr-electric-mining-drill-mk3"):replace_ingredient("area-mining-drill", { "kr-electric-mining-drill-mk2", 1 })
Recipe("kr-electric-mining-drill-mk3"):add_ingredient({ "cobalt-carbide", 5 })
Recipe("kr-electric-mining-drill-mk3"):add_ingredient({ "fu_materials_KFK", 6 })
Recipe("kr-electric-mining-drill-mk3"):add_ingredient({ "processing-unit", 5 })

Recipe("area-mining-drill"):replace_ingredient("kr-electric-mining-drill-mk2", { "kr-electric-mining-drill-mk3", 1 })
Recipe("area-mining-drill"):replace_ingredient("advanced-gearbox", { "elite-gearbox", 4 })
Recipe("area-mining-drill"):replace_ingredient("processing-unit", { "advanced-processing-unit", 5 })
Recipe("area-mining-drill"):replace_ingredient("motorized-articulator", { "advanced-machining-tool", 10 })
Recipe("area-mining-drill"):add_ingredient({ "se-aeroframe-pole", 5 })

-- Add coke and coal to graphite recipes
data:extend({
    {
        type = "recipe",
        name = "raw-graphite-coke",
        icons = {
            { icon = "__Nylon__/graphics/icons/raw-graphite.png", icon_size = 128 },
            atom.util.icon.createSmallIcon({ icon = "__Krastorio2Assets__/icons/items-with-variations/coke/coke.png", icon_size = 64, icon_mipmaps = 4 })
        },
        category = "biofarm-mod-smelting",
        order = "d[graphite]",
        enabled = false,
        energy_required = 1.6,
        ingredients = { { "coke", 1 } },
        results = { { "raw-graphite", 1 } },
    },
    {
        type = "recipe",
        name = "raw-graphite-charcoal",
        icons = {
            { icon = "__Nylon__/graphics/icons/raw-graphite.png", icon_size = 128 },
            atom.util.icon.createSmallIcon({ icon = "__Bio_Industries__/graphics/icons/charcoal.png", icon_size = 64, icon_mipmaps = 4 })
        },
        category = "biofarm-mod-smelting",
        order = "d[graphite]",
        enabled = false,
        energy_required = 1.6,
        ingredients = { { "wood-charcoal", 1 } },
        results = { { "raw-graphite", 1 } },
    },
    {
        type = "recipe",
        name = "raw-graphite-coal",
        icons = {
            { icon = "__Nylon__/graphics/icons/raw-graphite.png", icon_size = 128 },
            atom.util.icon.createSmallIcon(atom.processing.materials.coal.icons.dust)
        },
        category = "biofarm-mod-smelting",
        order = "d[graphite]",
        enabled = false,
        energy_required = 1.6,
        ingredients = { { atom.processing.materials.coal.itemNames.dust, 2 } },
        results = { { "raw-graphite", 1 } },
    }
})
table.insert(data.raw.technology["bi-tech-coal-processing-1"].effects, { type = "unlock-recipe", recipe = "raw-graphite-coke" })
table.insert(data.raw.technology["bi-tech-coal-processing-1"].effects, { type = "unlock-recipe", recipe = "raw-graphite-charcoal" })
table.insert(data.raw.technology["bi-tech-coal-processing-1"].effects, { type = "unlock-recipe", recipe = "raw-graphite-coal" })