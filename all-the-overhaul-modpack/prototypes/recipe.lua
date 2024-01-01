local util = require("data-util")
--LDS 248k Recipe fix
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "titanium-plate", 8, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "diamond", 4, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "zirconia", 20, false)
util.replace_or_add_ingredient("fi_low-density-structure_recipe", nil, "carbon-fiber", 20, false)
--Adjust basic electronic components to require more ingredients
util.replace_or_add_ingredient("basic-electronic-components", "copper-cable", "copper-cable", 5, false)
util.replace_or_add_ingredient("basic-electronic-components", "graphite", "graphite", 5, false)
--Adjust Electronic circuits recipies to use less electronic components
util.replace_or_add_ingredient("electronic-circuit", "basic-electronic-components", "basic-electronic-components", 2,
    false)
util.replace_or_add_ingredient("electronic-circuit-silver", "basic-electronic-components", "silver-wire", 4, false)
--Add Mysterious energy crystals to Prod 1
util.replace_or_add_ingredient("productivity-module", "glass", "el_energy_crystal_item", 10, false)
--Adjust Artificial energy crystals to be use more.
util.replace_or_add_ingredient("big-battery-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("se-rtg-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("big-solar-panel-equipment", nil, "fi_energy_crystal_item", 4, false)
util.replace_or_add_ingredient("productivity-module-2", "glass", "fi_energy_crystal_item", 10, false)
--Adjust Refined Crystals to be used more
util.replace_or_add_ingredient("productivity-module-3", "mlcc", "fu_materials_refined_crystal", 4, false)
util.replace_or_add_ingredient("big-battery-mk2-equipment", nil, "fu_materials_refined_crystal", 4, false)
util.replace_or_add_ingredient("big-imersite-solar-panel-equipment", nil, "fu_materials_refined_crystal", 4, false)
--Adding Neodymium to some recipes
util.replace_or_add_ingredient("se-space-hypercooler", nil, "fi_materials_neodym", 15, false)
util.replace_or_add_ingredient("se-space-radiator", nil, "fi_materials_neodym", 15, false)
util.replace_or_add_ingredient("se-space-radiator-2", nil, "fi_materials_neodym", 15, false)
--Adjust 248k recipes to be better balanced
util.replace_or_add_ingredient("steel-plate", "iron-plate", "iron-plate", 10, false)
util.replace_or_add_ingredient("el_purify_iron_recipe", "iron-ore", "iron-ore", 13, false)
util.replace_or_add_ingredient("el_purify_copper_recipe", "copper-ore", "copper-ore", 13, false)
--Changed quantum processors to use hcp instead of blue curcuits
util.replace_or_add_ingredient("se-quantum-processor","processing-unit","gr_materials_circuit", 4 ,false)

--Disable wooden rails and rail conversions
bobmods.lib.recipe.hide("bi-rail-wood")
bobmods.lib.recipe.hide("bi-rail-wood-to-concrete")
bobmods.lib.recipe.hide("bi-plastic-1")
bobmods.lib.recipe.hide("bi-plastic-2")
bobmods.lib.recipe.hide("bi-arboretum")
bobmods.lib.recipe.hide("bi-bio-farm")
bobmods.lib.recipe.hide("bi-bio-greenhouse")

--table.insert(data.raw["assembling-machine"]["chemical-plant-2"].crafting_categories, "basic-chemistry")
--table.insert(data.raw["assembling-machine"]["chemical-plant-3"].crafting_categories, "basic-chemistry")
--table.insert(data.raw["assembling-machine"]["chemical-plant-4"].crafting_categories, "basic-chemistry")

--Change bismuth ammo to output rifle magazines
data.raw.recipe["rifle-magazine-bismuth"].results = { { "rifle-magazine", 1} }
data.raw.recipe["rifle-magazine-bismuth"].main_product = "rifle-magazine"
data.raw.recipe["pistol-magazine-bismuth"].results = { { "firearm-magazine", 1} }
data.raw.recipe["pistol-magazine-bismuth"].main_product = "firearm-magazine"
--change localized name of a few items that have similar names
data.raw.recipe["fu_carbon_fiber_recipe"].localised_name = "Graphite fiber"
data.raw.recipe["fu_KFK_recipe"].localised_name = "Graphite fiber reinforced plastic"
data.raw.recipe["el_lithium_ore_recipe"].localised_name = "Lithium crystal"
data.raw.recipe["el_purify_iron_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_copper_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_aluminum_recipe"].localised_name = "Cloudy water"
data.raw.recipe["el_purify_stone_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fi_dirty_solution_unpack_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fu_treat_slag_recipe"].localised_name = "Cloudy water"
data.raw.recipe["fi_dirty_solution_pack_recipe"].localised_name = "Cloudy water container"

--Change pcb solder(Bismuth) ingredients to solder(BZTIN) and adjust recipe and remove PCB-Solder
--Until I can find a better way to remove pcb solder from recipes that have both, i'm doing this
util.replace_or_add_ingredient("roboport", "pcb-solder", "battery", 50, false)
util.find_and_replace_ingredients({ ["pcb-solder"] = "solder" })
data.raw.recipe["pcb-solder"].localised_name = "Lead Free Solder"
util.replace_or_add_ingredient("pcb-solder", "tin-plate", "tin-plate", 3, false)
util.replace_or_add_ingredient("pcb-solder", "bismuth-plate", "bismuth-plate", 3, false)
data.raw.recipe["pcb-solder"].results = { { "solder", 6 }, { type = "item", name = "silver-ore", amount = 1, catalyst_amount = 1, probability = 0.8 } }
data.raw.recipe["pcb-solder"].main_product = "solder"
data.raw.technology["pcb-solder"].localised_name = "Lead free solder"
data.raw.recipe["pcb-solder"].allow_as_intermediate = false

-- Recipe Modifications and hand crafting fixes
data.raw.recipe["bronze-spring"].allow_as_intermediate = false
data.raw.recipe["blank-tech-card-silver"].results = { {"blank-tech-card", 10} }

-- remove the alternate singularity card
bobmods.lib.recipe.hide("singularity-tech-card-alt")

-- recipese
bobmods.lib.recipe.add_ingredient("fast-road", { "road", 10 })
bobmods.lib.recipe.add_ingredient("rail", { "concrete", 2 })

if mods["big_power_poles_patched"] then
    bobmods.lib.recipe.remove_ingredient("bp_extreme_power_pole", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bp_extreme_power_pole", "steel-plate")
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "acsr-cable", 4 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "iron-stick", 16 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "galvanized-steel-plate", 8 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "lead-plate", 4 })
    bobmods.lib.recipe.add_ingredient("bp_extreme_power_pole", { "concrete", 2 })
end

--Advanced Furnaces 2

if mods['Load-Furn-2'] then
--1
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "crucible", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "hardened-hull", 10 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-01", { "zirconium-plate", 10 })
if mods["IfNickel"] then
bobmods.lib.recipe.replace_ingredient("furnace-pro-01", "steel-plate", "nitinol-plate")
else 
bobmods.lib.recipe.replace_ingredient("furnace-pro-01", "steel-plate", "tungsten-plate")
end
--2
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "crucible", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "hardened-hull", 20 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-02", { "zirconium-plate", 20 })
bobmods.lib.recipe.replace_ingredient("furnace-pro-02", "steel-plate", "titanium-plate")
--3
bobmods.lib.recipe.add_new_ingredient("furnace-pro-03", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-03", { "graphite", 10 })
--4
bobmods.lib.recipe.add_new_ingredient("furnace-pro-04", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-04", { "imersium-plate", 10 })
--5
bobmods.lib.recipe.add_new_ingredient("furnace-pro-05", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("furnace-pro-05", { "se-heavy-girder", 10 })

--Add Furnace MK5 in Krastorio's furnace
bobmods.lib.recipe.add_new_ingredient("kr-advanced-furnace", "furnace-pro-05")

else

bobmods.lib.recipe.add_new_ingredient("kr-advanced-furnace", "5d-electric-furnace-03")

end

-- TA Miners
-- Crust Extractor
bobmods.lib.recipe.remove_ingredient("crust_extractor", "pipe")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "speed-module")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "electric-motor")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "engine-unit")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "steel-plate")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "se-vulcanite-block")
bobmods.lib.recipe.remove_ingredient("crust_extractor", "kr-steel-pipe")
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "fi_materials_upgrade", 1 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "area-mining-drill", 1 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "elite-gearbox", 5 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-dynamic-emitter", 5 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "industrial-drill-head", 10 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "speed-module-4", 20 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-heavy-composite", 50 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-heavy-bearing", 50 })
bobmods.lib.recipe.add_new_ingredient("crust_extractor", { "se-space-pipe", 100 })
-- Moho Extractor
bobmods.lib.recipe.remove_ingredient("moho_extractor", "pipe")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "speed-module-2")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "electric-engine-unit")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "steel-plate")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "se-cryonite-rod")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "se-beryllium-ingot")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "se-iridium-ingot")
bobmods.lib.recipe.remove_ingredient("moho_extractor", "kr-steel-pipe")
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "fu_materials_upgrade", 1 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "crust_extractor", 1 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-heavy-assembly", 10 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-dynamic-emitter", 10 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "industrial-drill-head", 20 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "speed-module-5", 20 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "imersium-beam", 100 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-heavy-bearing", 100 })
bobmods.lib.recipe.add_new_ingredient("moho_extractor", { "se-space-pipe", 200 })
-- Mantle Extractor
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "pipe")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "speed-module-3")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "flying-robot-frame")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "steel-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "imersium-beam")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "imersium-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "se-cryonite-rod")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "se-beryllium-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "se-iridium-plate")
bobmods.lib.recipe.remove_ingredient("mantle_extractor", "kr-steel-pipe")
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "gr_materials_upgrade", 1 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "moho_extractor", 1 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-heavy-assembly", 20 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-dynamic-emitter", 20 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "industrial-drill-head", 40 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "speed-module-6", 20 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-naquium-plate", 100 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-heavy-bearing", 200 })
bobmods.lib.recipe.add_new_ingredient("mantle_extractor", { "se-space-pipe", 300 })

-- 248K research balance
-- Rename Fusion tech to Fusion catalogue
data.raw.technology["fu_energy_tech"].localised_name = "Fusion catalogue 2"
data.raw.item["fu_tech_sign_item"].localised_name = "Broad fusion catalogue"
-- Hide the recipe
bobmods.lib.recipe.hide("fu_tech_sign_item")
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
	{
    type = "recipe",
    name = "fusion-stable-data",
		ingredients = {
      { "fu_materials_fusion_card", 1},
      { "se-empty-data", 1},
      { type = "fluid", name = "se-ion-stream", amount=100},
    },
		results = {
			{ name = "fusion-stable-data", amount = 1},
			{ name = "se-contaminated-scrap", amount = 8},
		},
    energy_required = 2,
		main_product = "fusion-stable-data",
		category = "space-collider",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
		name = "fusion-speed-data",
    ingredients = {
			{ "se-material-testing-pack", 1},
			{ "dt-fuel", 1},
			{ "fu_materials_fusion_card", 1},
			{ "se-atomic-data", 1},
			{ "se-entanglement-data", 1},
			{ "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=100},
   },
   results = {
			{ name = "fusion-speed-data", amount = 3},
			{ "dt-fuel", 1},
			{ name = "se-contaminated-scrap", amount = 4},
		},
    energy_required = 2,
		main_product = "fusion-speed-data",
		category = "space-collider",
   enabled = "false",
   always_show_made_in = true,
  },
	{
   type = "recipe",
	 name = "fusion-accuracy-data",
   ingredients = {
			{ "nickel-electromagnet", 1},
			{ "fu_materials_charged_container", 1},
			{ "fu_materials_fusion_card", 1},
			{ "se-pressure-containment-data", 1},
			{ "se-quantum-phenomenon-data", 1},
			{ "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=20},
			{ type = "fluid", name = "se-space-coolant-supercooled", amount=10},
   },
   results = {
			{ name = "fusion-accuracy-data", amount_min = 1, amount_max = 3, probability = 0.5},
			{ "fu_materials_charged_container", 1},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.5},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 4,
		main_product = "fusion-accuracy-data",
		category = "space-collider",
    enabled = "false",
    always_show_made_in = true,
  },
	
	{
    type = "recipe",
    name = "laser-heating-data",
		ingredients = {
      { "fu_materials_laser_card", 1},
      { "fu_materials_TIM", 1},
			{ "se-empty-data", 1},
      { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
    },
		results = {
			{ name = "laser-heating-data", amount = 1},
			{ name = "se-contaminated-scrap", amount = 2},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 10,
		main_product = "laser-heating-data",
		category = "space-laser",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "laser-calculation-data",
		ingredients = {
			{ "scanner", 1},
      { "se-material-testing-pack", 1},
      { "se-explosion-shielding-data", 1},
			{ "fu_materials_laser_card", 1},
			{ "se-empty-data", 1},
      { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
    },
		results = {
			{ name = "laser-calculation-data", amount = 2},
			{ name = "se-contaminated-scrap", amount = 2},
			{ name = "scanner", amount_min = 1, amount_max = 1, probability = 0.95},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 5,
		main_product = "laser-calculation-data",
		category = "space-laser",
		enabled = false,
		always_show_made_in = true,
  },
	{
		type = "recipe",
		name = "laser-decay-data",
		ingredients = {
			{ "spectroscope", 1},
			{ "se-space-mirror", 2},
			{ "se-forcefield-data", 1},
			{ "se-particle-beam-shielding-data", 1},
			{ "fu_materials_laser_card", 1},
			{ "se-empty-data", 2},
			{ type = "fluid", name = "se-space-coolant-supercooled", amount=10},
    },
		results = {
			{ name = "laser-decay-data", amount = 3},
			{ name = "se-junk-data", amount = 1},
			{ name = "se-scrap", amount = 2},
			{ name = "spectroscope", amount_min = 1, amount_max = 1, probability = 0.99},
			{ name = "se-scrap", amount_min = 1, amount_max = 3, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 5,
		main_product = "laser-decay-data",
		category = "space-laser",
		enabled = false,
		always_show_made_in = true,
  },
	
	
	{
    type = "recipe",
    name = "magnet-stabilazer-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "niobium-plate", 1},
      { "fu_materials_magnet_card", 1},
      { "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=50},
      { type = "fluid", name = "se-space-coolant-cold", amount=10},
    },
		results = {
			{ name = "magnet-stabilazer-data", amount_min = 1, amount_max = 1, probability = 0.95},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.04},
			{ name = "niobium-plate", amount_min = 1, amount_max = 1, probability = 0.95},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 10,
		main_product = "magnet-stabilazer-data",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "magnet-trajectory-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "se-electromagnetic-field-data", 1},
			{ "se-polarisation-data", 1},
			{ "fu_materials_magnet", 1},
      { "fu_materials_magnet_card", 1},
      { "se-empty-data", 1},
      { type = "fluid", name = "se-space-coolant-cold", amount=10},
    },
		results = {
			{ name = "magnet-trajectory-data", amount = 3},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 10,
		main_product = "magnet-trajectory-data",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "magnet-contain-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "se-experimental-alloys-data", 1},
			{ "se-superconductivity-data", 1},
			{ "highenergy-data-248", 1},
      { "fu_materials_magnet_card", 1},
      { "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=50},
      { type = "fluid", name = "se-space-coolant-cold", amount=10},
    },
		results = {
			{ name = "magnet-contain-data", amount = 3},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.95},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 10,
		main_product = "magnet-contain-data",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
  },
	
	
	{
    type = "recipe",
    name = "plasma-rotating-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "fu_materials_plasma_card", 1},
      { "se-empty-data", 1},
			{ type = "fluid", name = "se-proton-stream", amount=20},
      { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
    },
		results = {
			{ name = "plasma-rotating-data", amount_min = 1, amount_max = 1, probability = 0.7},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.29},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 5,
		main_product = "plasma-rotating-data",
		category = "space-collider",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "plasma-spinning-data",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "se-quantum-phenomenon-data", 1},
			{ "fu_materials_plasma_card", 1},
      { "se-empty-data", 1},
			{ type = "fluid", name = "se-ion-stream", amount=20},
      { type = "fluid", name = "se-space-coolant-supercooled", amount=10},
    },
		results = {
			{ name = "plasma-spinning-data", amount_min = 1, amount_max = 2, probability = 0.6},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.39},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.25},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 5,
		main_product = "plasma-spinning-data",
		category = "space-collider",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "plasma-star-data",
		ingredients = {
			{ "se-magnetic-canister", 5},
			{ "se-hot-thermodynamics-data", 1},
			{ "se-gravitational-lensing-data", 1},
			{ "se-fusion-test-data", 1},
			{ "fu_materials_plasma_card", 1},
      { "se-empty-data", 1},
			{ type = "fluid", name = "se-particle-stream", amount=100},
    },
		results = {
			{ name = "plasma-star-data", amount_min = 3, amount_max = 3, probability = 0.6},
			{ name = "se-junk-data", amount_min = 1, amount_max = 1, probability = 0.39},
			{ name = "se-scrap", amount = 15},
			{ name = "se-contaminated-scrap", amount = 10},
		},
    main_product = "plasma-star-data",
		category = "space-materialisation",
		enabled = false,
		always_show_made_in = true,
  },
	
	{
    type = "recipe",
    name = "highenergy-data-248",
		ingredients = {
			{ "nickel-electromagnet", 1},
			{ "fi_energy_crystal_charged_item", 1},
      { "se-empty-data", 1},
      { type = "fluid", name = "se-space-coolant-cold", amount=10},
    },
		results = {
			{ name = "highenergy-data-248", amount = 1},
			{ name = "fi_energy_crystal_charged_item", amount_min = 1, amount_max = 1, probability = 0.99},
			{ name = "nickel-electromagnet", amount_min = 1, amount_max = 1, probability = 0.75},
			{ name = "se-contaminated-scrap", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
    energy_required = 10,
		main_product = "highenergy-data-248",
		category = "space-electromagnetics",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "radioisotop-data-248",
		ingredients = {
			{ "fi_plutonium239_item", 1},
			{ "se-empty-data", 1},
    },
		results = {
			{ name = "radioisotop-data-248", amount = 1},
			{ name = "fi_plutonium239_item", amount_min = 1, amount_max = 1, probability = 0.99},
		},
    energy_required = 8,
		main_product = "radioisotop-data-248",
		category = "space-radiation",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "star-data-248",
		ingredients = {
			{ "scanner", 1},
			{ "se-visible-observation-data", 1},
			{ "se-uv-observation-data", 1},
			{ "se-infrared-observation-data", 1},
			{ "se-empty-data", 1},
        },
		results = {
			{ name = "star-data-248", amount = 4},
			{ name = "scanner", amount_min = 1, amount_max = 1, probability = 0.99},
			{ name = "se-scrap", amount_min = 1, amount_max = 1, probability = 0.1},
		},
    energy_required = 8,
		main_product = "star-data-248",
		category = "space-astrometrics",
		enabled = false,
		always_show_made_in = true,
    },
	{
    type = "recipe",
    name = "structural-data-248",
		ingredients = {
			{ "se-material-testing-pack", 3},
			{ "inconel-718", 1},
			{ "low-density-structure", 1},
			{ "aluminum-6061", 1},
			{ "se-empty-data", 3},
			{ type = "fluid", name = "lubricant", amount = 5},
    },
		results = {
			{ name = "structural-data-248", amount = 3},
			{ name = "se-scrap", amount = 6},
			{ type = "fluid", name = "se-contaminated-space-water", amount = 1},
		},
    energy_required = 10,
		main_product = "structural-data-248",
		category = "space-mechanical",
		enabled = false,
		always_show_made_in = true,
    },

	{
		type = "recipe",
		name = "fusion-catalogue-1",
		allow_productivity = true,
		ingredients = {
			{ "highenergy-data-248", 1 },
			{ "radioisotop-data-248", 1 },
			{ "star-data-248", 1 },
			{ "structural-data-248", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fusion-catalogue-1", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fusion-catalogue-1",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fusion-catalogue-2",
		allow_productivity = true,
		ingredients = {
			{ "fusion-stable-data", 1 },
			{ "laser-heating-data", 1 },
			{ "magnet-stabilazer-data", 1 },
			{ "plasma-rotating-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fu_tech_sign_item", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fu_tech_sign_item",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fusion-catalogue-3",
		allow_productivity = true,
		ingredients = {
			{ "fusion-speed-data", 1 },
			{ "laser-calculation-data", 1 },
			{ "magnet-trajectory-data", 1 },
			{ "plasma-spinning-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fusion-catalogue-3", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fusion-catalogue-3",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	{
		type = "recipe",
		name = "fusion-catalogue-4",
		allow_productivity = true,
		ingredients = {
			{ "fusion-accuracy-data", 1 },
			{ "laser-decay-data", 1 },
			{ "magnet-contain-data", 1 },
			{ "plasma-star-data", 1 },
			{ type = "fluid", name = "se-space-coolant-cold", amount=10},
		},
		results = {
			{ name = "fusion-catalogue-4", amount = 1},
			{ type = "fluid", name = "se-space-coolant-hot", amount=10},
		},
		energy_required = 20,
		main_product = "fusion-catalogue-4",
		category = "catalogue-creation-1",
		enabled = false,
		always_show_made_in = true,
	},
	
	{
    type = "recipe",
    name = "fusion-science-pack-1",
    allow_productivity = true,
		ingredients = {
          { "fusion-catalogue-1", 1 },
          { "chromium-plate", 20 },
          { "se-significant-data", 1 },
          { type = "fluid", name = "se-space-coolant-cold", amount = 20},
    },
    results = {
          { name = "fusion-science-pack-1", amount = 2},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
    },
		energy_required = 30,
    main_product = "fusion-science-pack-1",
    category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "fusion-science-pack-2",
    allow_productivity = true,
		ingredients = {
		      { "se-significant-data", 1 },
          { "fu_tech_sign_item", 1 },
          { "fusion-science-pack-1", 2 },
          { type = "fluid", name = "se-space-coolant-cold", amount = 20},
    },
    results = {
          { name = "fusion-science-pack-2", amount = 4},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
    },
		energy_required = 30,
    main_product = "fusion-science-pack-2",
    category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "fusion-science-pack-3",
    allow_productivity = true,
		ingredients = {
		  { "se-significant-data", 1 },
		  { "fu_materials_magnet", 1},
      { "fusion-catalogue-3", 1 },
		  { "fusion-science-pack-2", 4 },
      { type = "fluid", name = "se-space-coolant-cold", amount = 20},
    },
    results = {
          { name = "fusion-science-pack-3", amount = 6},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
    },
		energy_required = 30,
    main_product = "fusion-science-pack-3",
    category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
  },
	{
    type = "recipe",
    name = "fusion-science-pack-4",
    allow_productivity = true,
		ingredients = {
		  { "se-significant-data", 1 },
		  { "tritium", 1},
      { "fusion-catalogue-4", 1 },
		  { "fusion-science-pack-3", 6 },
      { type = "fluid", name = "se-space-coolant-cold", amount = 20},
    },
    results = {
          { name = "fusion-science-pack-4", amount = 8},
          { name = "se-junk-data", amount = 6},
          { type = "fluid", name = "se-space-coolant-hot", amount = 20},
    },
		energy_required = 30,
    main_product = "fusion-science-pack-4",
    category = "science-pack-creation-1",
		enabled = false,
		always_show_made_in = true,
  },
	
})


-- 5DIM Machines
-- K2 Integration
util.replace_or_add_ingredient("kr-advanced-assembling-machine", "assembling-machine-3", "5d-assembling-machine-06", 2, false)
util.replace_or_add_ingredient("kr-advanced-assembling-machine", "electric-furnace", "5d-electric-furnace-03", 2, false)

bobmods.lib.recipe.add_new_ingredient("kr-advanced-chemical-plant", "5d-chemical-plant-04")

util.replace_or_add_ingredient("k11-advanced-centrifuge", "centrifuge", "5d-centrifuge-03", 2, false)

bobmods.lib.recipe.remove_ingredient("kr-filtration-plant", "automation-core")
util.replace_or_add_ingredient("kr-filtration-plant", "basic-chemical-plant", "t0-filtration-plant", 1, false)
util.replace_or_add_ingredient("kr-filtration-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-carbide", 5})
bobmods.lib.recipe.add_new_ingredient("kr-filtration-plant", { "tungsten-plate", 20})

bobmods.lib.recipe.remove_ingredient("kr-electrolysis-plant", "automation-core")
util.replace_or_add_ingredient("kr-electrolysis-plant", "graphite", "t0-electrolysis-plant", 1, false)
util.replace_or_add_ingredient("kr-electrolysis-plant", "flow-controller", "advanced-multi-cylinder-engine", 2, false)
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "tungsten-carbide", 5})
bobmods.lib.recipe.add_new_ingredient("kr-electrolysis-plant", { "hv-power-regulator", 5})

util.replace_or_add_ingredient("biusart-lab", "lab", "5d-lab-03", 1, false)

bobmods.lib.recipe.add_new_ingredient("kr-singularity-lab", { "5d-lab-09", 10 })

util.replace_or_add_ingredient("se-space-science-lab", "biusart-lab", "5d-lab-04", 10, false)

bobmods.lib.recipe.add_new_ingredient("se-nexus", { "5d-lab-10", 10 })

util.replace_or_add_ingredient("gr_lab_recipe", "lab", "5d-lab-10", 40, false)

util.replace_or_add_ingredient("fu_fusor_recipe", "lab", "5d-lab-04", 10, false)
util.replace_or_add_ingredient("fu_fusor_recipe", "low-density-structure", "heat-resistant-low-density-structure", 100, false)

util.replace_or_add_ingredient("gr_charger_recipe", "lab", "5d-lab-10", 10, false)
bobmods.lib.recipe.add_new_ingredient("gr_charger_recipe", { "kr-stabilizer-charging-station", 1 })

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

-- Assembler
-- 04
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-04", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-04", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("5d-assembling-machine-04", "steel-plate", "nitinol-plate", 9, false)
util.replace_or_add_ingredient("5d-assembling-machine-04", "steel-gear-wheel", "imersium-gear-wheel", 8, false)
util.replace_or_add_ingredient("5d-assembling-machine-04", "productivity-module", "cermet", 2, false)
-- 05
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-05", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-05", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("5d-assembling-machine-05", "titanium-plate", "se-heavy-girder", 9, false)
util.replace_or_add_ingredient("5d-assembling-machine-05", "iron-gear-wheel", "imersium-gear-wheel", 8, false)
util.replace_or_add_ingredient("5d-assembling-machine-05", "steel-plate", "cermet", 2, false)
util.replace_or_add_ingredient("5d-assembling-machine-05", "speed-module-2", "processing-unit", 5, false)
util.replace_or_add_ingredient("5d-assembling-machine-05", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 06
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-06", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-06", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("5d-assembling-machine-06", "titanium-plate", "imersium-beam", 9, false)
util.replace_or_add_ingredient("5d-assembling-machine-06", "iron-gear-wheel", "se-heavy-bearing", 8, false)
util.replace_or_add_ingredient("5d-assembling-machine-06", "steel-plate", "se-aeroframe-scaffold", 20, false)
util.replace_or_add_ingredient("5d-assembling-machine-06", "productivity-module-2", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("5d-assembling-machine-06", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 07
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-07", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-07", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-07", { "se-heavy-bearing", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-07", { "se-aeroframe-bulkhead", 10 })
util.replace_or_add_ingredient("5d-assembling-machine-07", "titanium-plate", "imersium-beam", 9, false)
util.replace_or_add_ingredient("5d-assembling-machine-07", "speed-module-3", "advanced-processing-unit", 10, false)
util.replace_or_add_ingredient("5d-assembling-machine-07", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 08
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-08", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-08", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-08", { "se-heavy-bearing", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-08", { "se-aeroframe-bulkhead", 10 })
util.replace_or_add_ingredient("5d-assembling-machine-08", "titanium-plate", "imersium-beam", 9, false)
util.replace_or_add_ingredient("5d-assembling-machine-08", "productivity-module-3", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-assembling-machine-08", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 09
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-09", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-09", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-09", { "se-heavy-bearing", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-09", { "se-aeroframe-bulkhead", 10 })
util.replace_or_add_ingredient("5d-assembling-machine-09", "speed-module-3", "se-nanomaterial", 10, false)
util.replace_or_add_ingredient("5d-assembling-machine-09", "low-density-structure", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-assembling-machine-09", "processing-unit", "gr_materials_circuit", 15, false)
util.replace_or_add_ingredient("5d-assembling-machine-09", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 10
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-10", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-10", { "se-heavy-bearing", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-assembling-machine-10", { "se-aeroframe-bulkhead", 10 })
util.replace_or_add_ingredient("5d-assembling-machine-10", "productivity-module-3", "se-nanomaterial", 10, false)
util.replace_or_add_ingredient("5d-assembling-machine-10", "low-density-structure", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-assembling-machine-10", "processing-unit", "gr_materials_circuit", 20, false)
util.replace_or_add_ingredient("5d-assembling-machine-10", "tungsten-carbide", "se-naquium-cube", 1, false)

-- Electronic machine
-- 01
util.replace_or_add_ingredient("mini-assembler-1", "burner-assembling-machine", "automation-core", 3, false)
util.replace_or_add_ingredient("mini-assembler-1", "articulated-mechanism", "articulated-mechanism", 2, false)
-- 02
-- Nothing
-- 03
-- it doesn't work!!!
bobmods.lib.recipe.remove_ingredient("mini-assembler-3", "advanced-gearbox")
bobmods.lib.recipe.remove_ingredient("mini-assembler-3", "complex-joint")
bobmods.lib.recipe.remove_ingredient("mini-assembler-3", "advanced-machining-tool")
util.replace_or_add_ingredient("mini-assembler-3", "steel-plate", "automation-core-3", 1, false)
-- 04
bobmods.lib.recipe.add_new_ingredient("mini-assembler-4", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-4", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-4", { "imersium-gear-wheel", 4 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-4", { "processing-unit", 2 })
util.replace_or_add_ingredient("mini-assembler-4", "assembling-machine-3", "mini-assembler-3", 1, false)
util.replace_or_add_ingredient("mini-assembler-4", "steel-plate", "nitinol-plate", 9, false)
util.replace_or_add_ingredient("mini-assembler-4", "productivity-module", "cermet", 1, false)
-- 05
bobmods.lib.recipe.add_new_ingredient("mini-assembler-5", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-5", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("mini-assembler-5", "titanium-plate", "se-heavy-girder", 2, false)
util.replace_or_add_ingredient("mini-assembler-5", "iron-gear-wheel", "imersium-gear-wheel", 4, false)
util.replace_or_add_ingredient("mini-assembler-5", "steel-plate", "cermet", 1, false)
util.replace_or_add_ingredient("mini-assembler-5", "speed-module-2", "processing-unit", 5, false)
util.replace_or_add_ingredient("mini-assembler-5", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 06
bobmods.lib.recipe.add_new_ingredient("mini-assembler-6", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-6", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("mini-assembler-6", "titanium-plate", "imersium-beam", 2, false)
util.replace_or_add_ingredient("mini-assembler-6", "iron-gear-wheel", "se-heavy-bearing", 2, false)
util.replace_or_add_ingredient("mini-assembler-6", "steel-plate", "se-aeroframe-scaffold", 5, false)
util.replace_or_add_ingredient("mini-assembler-6", "productivity-module-2", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("mini-assembler-6", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 07
bobmods.lib.recipe.add_new_ingredient("mini-assembler-7", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-7", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-7", { "se-heavy-bearing", 2 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-7", { "se-aeroframe-bulkhead", 5 })
util.replace_or_add_ingredient("mini-assembler-7", "titanium-plate", "imersium-beam", 2, false)
util.replace_or_add_ingredient("mini-assembler-7", "speed-module-3", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("mini-assembler-7", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 08
bobmods.lib.recipe.add_new_ingredient("mini-assembler-8", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-8", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-8", { "se-heavy-bearing", 2 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-8", { "se-aeroframe-bulkhead", 5 })
util.replace_or_add_ingredient("mini-assembler-8", "titanium-plate", "imersium-beam", 2, false)
util.replace_or_add_ingredient("mini-assembler-8", "productivity-module-3", "gr_materials_circuit", 5, false)
util.replace_or_add_ingredient("mini-assembler-8", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 09
bobmods.lib.recipe.add_new_ingredient("mini-assembler-9", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-9", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-9", { "se-heavy-bearing", 2 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-9", { "se-aeroframe-bulkhead", 5 })
util.replace_or_add_ingredient("mini-assembler-9", "speed-module-3", "se-nanomaterial", 5, false)
util.replace_or_add_ingredient("mini-assembler-9", "low-density-structure", "se-heavy-assembly", 2, false)
util.replace_or_add_ingredient("mini-assembler-9", "processing-unit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("mini-assembler-9", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 10
bobmods.lib.recipe.add_new_ingredient("mini-assembler-10", { "solder", 5 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-10", { "se-heavy-bearing", 2 })
bobmods.lib.recipe.add_new_ingredient("mini-assembler-10", { "se-aeroframe-bulkhead", 5})
util.replace_or_add_ingredient("mini-assembler-10", "productivity-module-3", "se-nanomaterial", 5, false)
util.replace_or_add_ingredient("mini-assembler-10", "low-density-structure", "se-heavy-assembly", 2, false)
util.replace_or_add_ingredient("mini-assembler-10", "processing-unit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("mini-assembler-10", "tungsten-carbide", "se-naquium-cube", 1, false)

-- Centrifuge
-- 02
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-02", { "imersite-crystal", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-02", { "bearing", 20 })
util.replace_or_add_ingredient("5d-centrifuge-02", "steel-plate", "se-heat-shielding", 40, false)
util.replace_or_add_ingredient("5d-centrifuge-02", "advanced-circuit", "processing-unit", 40, false)
-- 03
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-03", { "imersium-beam", 50 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-03", { "bearing", 30 })
util.replace_or_add_ingredient("5d-centrifuge-03", "steel-plate", "se-heat-shielding", 40, false)
util.replace_or_add_ingredient("5d-centrifuge-03", "advanced-circuit", "processing-unit", 50, false)
-- 04
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-04", { "se-heavy-girder", 50 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-04", { "bearing", 40 })
util.replace_or_add_ingredient("5d-centrifuge-04", "low-density-structure", "se-heat-shielding", 40, false)
util.replace_or_add_ingredient("5d-centrifuge-04", "steel-plate", "nitinol-plate", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-04", "iron-gear-wheel", "imersium-gear-wheel", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-04", "advanced-circuit", "advanced-processing-unit", 50, false)
-- 05
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-05", { "se-heavy-girder", 50 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-05", { "bearing", 50 })
util.replace_or_add_ingredient("5d-centrifuge-05", "low-density-structure", "se-heat-shielding", 40, false)
util.replace_or_add_ingredient("5d-centrifuge-05", "steel-plate", "nitinol-plate", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-05", "iron-gear-wheel", "imersium-gear-wheel", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-05", "processing-unit", "advanced-processing-unit", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-05", "speed-module", "fu_materials_TIM", 40, false)
-- 06
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-06", { "imersium-beam", 50 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-06", { "se-heavy-bearing", 50 })
util.replace_or_add_ingredient("5d-centrifuge-06", "low-density-structure", "se-heat-shielding", 40, false)
util.replace_or_add_ingredient("5d-centrifuge-06", "steel-plate", "se-aeroframe-scaffold", 100, false)
util.replace_or_add_ingredient("5d-centrifuge-06", "iron-gear-wheel", "imersium-gear-wheel", 60, false)
util.replace_or_add_ingredient("5d-centrifuge-06", "processing-unit", "advanced-processing-unit", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-06", "productivity-module", "fu_materials_TIM", 50, false)
-- 07
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-07", { "imersium-beam", 60 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-07", { "se-heavy-bearing", 60 })
util.replace_or_add_ingredient("5d-centrifuge-07", "low-density-structure", "se-heat-shielding", 40, false)
util.replace_or_add_ingredient("5d-centrifuge-07", "steel-plate", "se-aeroframe-bulkhead", 100, false)
util.replace_or_add_ingredient("5d-centrifuge-07", "iron-gear-wheel", "imersium-gear-wheel", 70, false)
util.replace_or_add_ingredient("5d-centrifuge-07", "processing-unit", "advanced-processing-unit", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-07", "speed-module-2", "fu_materials_TIM", 60, false)
-- 08
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-08", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-08", { "imersium-beam", 60 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-08", { "se-heavy-bearing", 60 })
util.replace_or_add_ingredient("5d-centrifuge-08", "low-density-structure", "se-heat-shielding", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-08", "steel-plate", "se-aeroframe-bulkhead", 100, false)
util.replace_or_add_ingredient("5d-centrifuge-08", "iron-gear-wheel", "imersium-gear-wheel", 80, false)
util.replace_or_add_ingredient("5d-centrifuge-08", "processing-unit", "gr_materials_circuit", 50, false)
util.replace_or_add_ingredient("5d-centrifuge-08", "productivity-module-2", "fu_materials_TIM", 60, false)
-- 09
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-09", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-09", { "se-heavy-assembly", 20 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-09", { "se-heavy-bearing", 60 })
util.replace_or_add_ingredient("5d-centrifuge-09", "low-density-structure", "se-nanomaterial", 20, false)
util.replace_or_add_ingredient("5d-centrifuge-09", "steel-plate", "se-aeroframe-bulkhead", 100, false)
util.replace_or_add_ingredient("5d-centrifuge-09", "iron-gear-wheel", "imersium-gear-wheel", 90, false)
util.replace_or_add_ingredient("5d-centrifuge-09", "processing-unit", "gr_materials_circuit", 60, false)
util.replace_or_add_ingredient("5d-centrifuge-09", "speed-module-3", "fu_materials_TIM", 80, false)
-- 10
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-10", { "se-heavy-assembly", 20 })
bobmods.lib.recipe.add_new_ingredient("5d-centrifuge-10", { "se-heavy-bearing", 60 })
util.replace_or_add_ingredient("5d-centrifuge-10", "low-density-structure", "se-nanomaterial", 20, false)
util.replace_or_add_ingredient("5d-centrifuge-10", "steel-plate", "se-aeroframe-bulkhead", 100, false)
util.replace_or_add_ingredient("5d-centrifuge-10", "iron-gear-wheel", "imersium-gear-wheel", 100, false)
util.replace_or_add_ingredient("5d-centrifuge-10", "processing-unit", "gr_materials_circuit", 80, false)
util.replace_or_add_ingredient("5d-centrifuge-10", "productivity-module-2", "se-naquium-cube", 1, false)

-- Oil Refinery
-- 02
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-02", { "advanced-multi-cylinder-engine", 4 })
util.replace_or_add_ingredient("5d-oil-refinery-02", "steel-plate", "tungsten-plate", 15, false)
util.replace_or_add_ingredient("5d-oil-refinery-02", "iron-gear-wheel", "steel-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-oil-refinery-02", "electronic-circuit", "glass", 15, false)
-- 03
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-03", { "advanced-multi-cylinder-engine", 6 })
util.replace_or_add_ingredient("5d-oil-refinery-03", "steel-plate", "imersium-beam", 15, false)
util.replace_or_add_ingredient("5d-oil-refinery-03", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-oil-refinery-03", "pipe", "kr-steel-pipe", 10, false)
util.replace_or_add_ingredient("5d-oil-refinery-03", "electronic-circuit", "fi_materials_glass", 15, false)
-- 04
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-04", { "advanced-multi-cylinder-engine", 8 })
util.replace_or_add_ingredient("5d-oil-refinery-04", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("5d-oil-refinery-04", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-oil-refinery-04", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-oil-refinery-04", "advanced-circuit", "fi_materials_glass", 20, false)
-- 05
util.replace_or_add_ingredient("5d-oil-refinery-05", "speed-module", "se-bioscrubber", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-05", "steel-plate", "se-heavy-girder", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-05", "iron-gear-wheel", "imersium-gear-wheel", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-05", "pipe", "brass-pipe", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-05", "advanced-circuit", "fi_materials_glass", 30, false)
-- 06
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-06", { "se-aeroframe-scaffold", 50 })
util.replace_or_add_ingredient("5d-oil-refinery-06", "productivity-module", "se-bioscrubber", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-06", "steel-plate", "se-heavy-girder", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-06", "iron-gear-wheel", "imersium-gear-wheel", 30, false)
util.replace_or_add_ingredient("5d-oil-refinery-06", "pipe", "brass-pipe", 30, false)
util.replace_or_add_ingredient("5d-oil-refinery-06", "advanced-circuit", "fi_materials_glass", 40, false)
-- 07
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-07", { "se-aeroframe-bulkhead", 50 })
util.replace_or_add_ingredient("5d-oil-refinery-07", "speed-module-2", "se-bioscrubber", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-07", "steel-plate", "se-heavy-girder", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-07", "iron-gear-wheel", "imersium-gear-wheel", 40, false)
util.replace_or_add_ingredient("5d-oil-refinery-07", "pipe", "brass-pipe", 40, false)
util.replace_or_add_ingredient("5d-oil-refinery-07", "advanced-circuit", "fi_materials_glass", 50, false)
-- 08
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-08", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-08", { "se-aeroframe-bulkhead", 50 })
util.replace_or_add_ingredient("5d-oil-refinery-08", "productivity-module-2", "se-bioscrubber", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-08", "steel-plate", "se-heavy-girder", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-08", "iron-gear-wheel", "imersium-gear-wheel", 50, false)
util.replace_or_add_ingredient("5d-oil-refinery-08", "pipe", "brass-pipe", 50, false)
util.replace_or_add_ingredient("5d-oil-refinery-08", "advanced-circuit", "fi_materials_glass", 60, false)
-- 09
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-09", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-09", { "se-aeroframe-bulkhead", 50 })
util.replace_or_add_ingredient("5d-oil-refinery-09", "speed-module-3", "se-bioscrubber", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-09", "steel-plate", "se-nanomaterial", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-09", "iron-gear-wheel", "se-heavy-assembly", 50, false)
util.replace_or_add_ingredient("5d-oil-refinery-09", "pipe", "brass-pipe", 50, false)
util.replace_or_add_ingredient("5d-oil-refinery-09", "processing-unit", "fi_materials_glass", 80, false)
-- 10
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-oil-refinery-10", { "se-aeroframe-bulkhead", 50 })
util.replace_or_add_ingredient("5d-oil-refinery-10", "speed-module-3", "se-bioscrubber", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-10", "steel-plate", "se-nanomaterial", 20, false)
util.replace_or_add_ingredient("5d-oil-refinery-10", "iron-gear-wheel", "se-heavy-assembly", 50, false)
util.replace_or_add_ingredient("5d-oil-refinery-10", "pipe", "brass-pipe", 50, false)
util.replace_or_add_ingredient("5d-oil-refinery-10", "processing-unit", "se-naquium-cube", 1, false)

-- Chemical reactor
-- 02
util.replace_or_add_ingredient("5d-chemical-plant-02", "steel-plate", "tungsten-plate", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-02", "iron-gear-wheel", "steel-gear-wheel", 5, false)
util.replace_or_add_ingredient("5d-chemical-plant-02", "electronic-circuit", "advanced-circuit", 5, false)
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-02", { "advanced-multi-cylinder-engine", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-02", { "fi_materials_glass", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-02", { "tungsten-carbide", 2})
-- 03
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-03", { "cermet", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-03", { "advanced-multi-cylinder-engine", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-03", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-03", "electronic-circuit", "processing-unit", 5, false)
util.replace_or_add_ingredient("5d-chemical-plant-03", "steel-plate", "imersium-beam", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-03", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-03", "pipe", "kr-steel-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-03", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 04
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-04", { "cermet", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-04", { "advanced-multi-cylinder-engine", 6 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-04", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-04", "advanced-circuit", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("5d-chemical-plant-04", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-04", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-04", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-04", "tungsten-carbide", "cobalt-carbide", 2, false)
-- 05
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-05", { "cermet", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-05", { "advanced-multi-cylinder-engine", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-05", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-05", "advanced-circuit", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("5d-chemical-plant-05", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-05", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-05", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-05", "tungsten-carbide", "cobalt-carbide", 2, false)
util.replace_or_add_ingredient("5d-chemical-plant-05", "speed-module", "se-bioscrubber", 10, false)
-- 06
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-06", { "se-aeroframe-scaffold", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-06", { "advanced-multi-cylinder-engine", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-06", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-06", "advanced-circuit", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("5d-chemical-plant-06", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-06", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-06", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-06", "tungsten-carbide", "cobalt-carbide", 2, false)
util.replace_or_add_ingredient("5d-chemical-plant-06", "productivity-module", "se-bioscrubber", 10, false)
-- 07
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-07", { "advanced-multi-cylinder-engine", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-07", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-07", "low-density-structure", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-07", "advanced-circuit", "advanced-processing-unit", 5, false)
util.replace_or_add_ingredient("5d-chemical-plant-07", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-07", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-07", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-07", "tungsten-carbide", "cobalt-carbide", 2, false)
util.replace_or_add_ingredient("5d-chemical-plant-07", "speed-module-2", "se-bioscrubber", 10, false)
-- 08
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-08", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-08", { "advanced-multi-cylinder-engine", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-08", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-08", "low-density-structure", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-08", "advanced-circuit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-08", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("5d-chemical-plant-08", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-08", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-08", "tungsten-carbide", "cobalt-carbide", 2, false)
util.replace_or_add_ingredient("5d-chemical-plant-08", "productivity-module-2", "se-bioscrubber", 10, false)
-- 09
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-09", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-09", { "advanced-multi-cylinder-engine", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-09", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-09", "low-density-structure", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-09", "processing-unit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-09", "steel-plate", "se-nanomaterial", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-09", "iron-gear-wheel", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-09", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-09", "tungsten-carbide", "cobalt-carbide", 2, false)
util.replace_or_add_ingredient("5d-chemical-plant-09", "speed-module-3", "se-bioscrubber", 10, false)
-- 10
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-10", { "advanced-multi-cylinder-engine", 10 })
bobmods.lib.recipe.add_new_ingredient("5d-chemical-plant-10", { "fi_materials_glass", 10 })
util.replace_or_add_ingredient("5d-chemical-plant-10", "low-density-structure", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-10", "processing-unit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-10", "steel-plate", "se-nanomaterial", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-10", "iron-gear-wheel", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-10", "pipe", "brass-pipe", 10, false)
util.replace_or_add_ingredient("5d-chemical-plant-10", "tungsten-carbide", "se-naquium-cube", 1, false)
util.replace_or_add_ingredient("5d-chemical-plant-10", "productivity-module-3", "se-bioscrubber", 10, false)

-- Furnaces
-- 02
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-02", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-02", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-02", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-02", { "imersite-crystal", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-02", "steel-plate", "nitinol-plate", 9, false)
util.replace_or_add_ingredient("5d-electric-furnace-02", "advanced-circuit", "se-heat-shielding", 10, false)
-- 03
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-03", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-03", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-03", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-03", { "el_energy_crystal_charged_item", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-03", "steel-plate", "imersium-plate", 9, false)
util.replace_or_add_ingredient("5d-electric-furnace-03", "advanced-circuit", "se-heat-shielding", 10, false)
-- 04
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-04", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-04", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-04", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-04", { "fi_energy_crystal_charged_item", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-04", "steel-plate", "se-heavy-girder", 9, false)
util.replace_or_add_ingredient("5d-electric-furnace-04", "advanced-circuit", "se-heat-shielding", 10, false)
-- 05
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-05", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-05", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-05", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-05", { "fu_materials_energy_charged_crystal", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-05", "speed-module", "fu_materials_TIM", 5, false)
util.replace_or_add_ingredient("5d-electric-furnace-05", "steel-plate", "se-heavy-girder", 9, false)
util.replace_or_add_ingredient("5d-electric-furnace-05", "advanced-circuit", "se-heat-shielding", 10, false)
-- 06
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-06", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-06", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-06", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-06", { "fu_materials_energy_charged_crystal", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-06", "productivity-module", "fu_materials_TIM", 5, false)
util.replace_or_add_ingredient("5d-electric-furnace-06", "steel-plate", "se-aeroframe-scaffold", 10, false)
util.replace_or_add_ingredient("5d-electric-furnace-06", "advanced-circuit", "se-heat-shielding", 10, false)
-- 07
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-07", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-07", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-07", { "hv-power-regulator", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-07", { "fu_materials_energy_charged_crystal", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-07", "speed-module-2", "fu_materials_TIM", 5, false)
util.replace_or_add_ingredient("5d-electric-furnace-07", "steel-plate", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-electric-furnace-07", "advanced-circuit", "se-heat-shielding", 10, false)
-- 08
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-08", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-08", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-08", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-08", { "fu_materials_energy_charged_crystal", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-08", "productivity-module-2", "fu_materials_TIM", 5, false)
util.replace_or_add_ingredient("5d-electric-furnace-08", "steel-plate", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-electric-furnace-08", "low-density-structure", "se-heat-shielding", 10, false)
-- 09
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-09", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-09", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-09", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-09", { "fu_materials_energy_charged_crystal", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-09", "speed-module-3", "se-nanomaterial", 5, false)
util.replace_or_add_ingredient("5d-electric-furnace-09", "steel-plate", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-electric-furnace-09", "low-density-structure", "se-heat-shielding", 10, false)
-- 10
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-10", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-10", { "temperature-sensor", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-electric-furnace-10", { "se-naquium-cube", 1 })
util.replace_or_add_ingredient("5d-electric-furnace-10", "productivity-module-3", "se-nanomaterial", 5, false)
util.replace_or_add_ingredient("5d-electric-furnace-10", "steel-plate", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-electric-furnace-10", "low-density-structure", "se-heat-shielding", 10, false)

-- Labs
-- 02
util.replace_or_add_ingredient("5d-lab-02", "transport-belt", "glass", 10, false)
util.replace_or_add_ingredient("5d-lab-02", "bakelite", "zircaloy-4", 10, false)
-- 03
bobmods.lib.recipe.add_new_ingredient("5d-lab-03", { "scanner", 5 })
util.replace_or_add_ingredient("5d-lab-03", "transport-belt", "fi_materials_glass", 10, false)
util.replace_or_add_ingredient("5d-lab-03", "bakelite", "nitinol-plate", 10, false)
util.replace_or_add_ingredient("5d-lab-03", "electronic-circuit", "processing-unit", 10, false)
-- 04
bobmods.lib.recipe.add_new_ingredient("5d-lab-04", { "scanner", 5 })
util.replace_or_add_ingredient("5d-lab-04", "fast-transport-belt", "fi_materials_glass", 10, false)
util.replace_or_add_ingredient("5d-lab-04", "steel-plate", "imersium-plate", 10, false)
util.replace_or_add_ingredient("5d-lab-04", "advanced-circuit", "advanced-processing-unit", 10, false)
util.replace_or_add_ingredient("5d-lab-04", "5d-lab-03", "biusart-lab", 1, false)
-- 05
util.replace_or_add_ingredient("5d-lab-05", "fast-transport-belt", "fi_materials_glass", 10, false)
util.replace_or_add_ingredient("5d-lab-05", "steel-plate", "se-heavy-girder", 10, false)
util.replace_or_add_ingredient("5d-lab-05", "advanced-circuit", "advanced-processing-unit", 10, false)
util.replace_or_add_ingredient("5d-lab-05", "speed-module", "scanner", 5, false)
-- 06
util.replace_or_add_ingredient("5d-lab-06", "fast-transport-belt", "fi_materials_glass", 10, false)
util.replace_or_add_ingredient("5d-lab-06", "steel-plate", "se-aeroframe-scaffold", 10, false)
util.replace_or_add_ingredient("5d-lab-06", "advanced-circuit", "advanced-processing-unit", 10, false)
util.replace_or_add_ingredient("5d-lab-06", "productivity-module", "scanner", 5, false)
-- 07
util.replace_or_add_ingredient("5d-lab-07", "express-transport-belt", "fi_materials_glass", 10, false)
util.replace_or_add_ingredient("5d-lab-07", "steel-plate", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-lab-07", "advanced-circuit", "advanced-processing-unit", 10, false)
util.replace_or_add_ingredient("5d-lab-07", "speed-module-2", "scanner", 5, false)
-- 08
util.replace_or_add_ingredient("5d-lab-08", "low-density-structure", "ai-core", 1, false)
util.replace_or_add_ingredient("5d-lab-08", "express-transport-belt", "fi_materials_glass", 10, false)
util.replace_or_add_ingredient("5d-lab-08", "steel-plate", "se-aeroframe-bulkhead", 10, false)
util.replace_or_add_ingredient("5d-lab-08", "advanced-circuit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-lab-08", "productivity-module-2", "scanner", 5, false)
-- 09
util.replace_or_add_ingredient("5d-lab-09", "low-density-structure", "ai-core", 1, false)
util.replace_or_add_ingredient("5d-lab-09", "express-transport-belt", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-lab-09", "steel-plate", "se-nanomaterial", 10, false)
util.replace_or_add_ingredient("5d-lab-09", "advanced-circuit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-lab-09", "speed-module-3", "se-dynamic-emitter", 5, false)
-- 10
util.replace_or_add_ingredient("5d-lab-10", "low-density-structure", "ai-core", 1, false)
util.replace_or_add_ingredient("5d-lab-10", "express-transport-belt", "se-heavy-assembly", 10, false)
util.replace_or_add_ingredient("5d-lab-10", "steel-plate", "se-nanomaterial", 10, false)
util.replace_or_add_ingredient("5d-lab-10", "processing-unit", "gr_materials_circuit", 10, false)
util.replace_or_add_ingredient("5d-lab-10", "productivity-module-3", "se-naquium-cube", 1, false)

-- Masher
-- 01
util.replace_or_add_ingredient("5d-masher-01", "electronic-circuit", "electric-motor", 2, false)
util.replace_or_add_ingredient("5d-masher-01", "steel-plate", "articulated-mechanism", 5, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-01", { "aluminum-plate", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-01", { "stone-brick", 4 })
-- 02
util.replace_or_add_ingredient("5d-masher-02", "steel-plate", "motorized-articulator", 5, false)
util.replace_or_add_ingredient("5d-masher-02", "iron-gear-wheel", "steel-gear-wheel", 10, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-02", { "gearbox", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-02", { "tungsten-plate", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-02", { "stone-brick", 4 })
-- 03
util.replace_or_add_ingredient("5d-masher-03", "advanced-circuit", "processing-unit", 4, false)
util.replace_or_add_ingredient("5d-masher-03", "steel-plate", "motorized-articulator", 5, false)
util.replace_or_add_ingredient("5d-masher-03", "iron-gear-wheel", "steel-gear-wheel", 10, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-03", { "advanced-gearbox", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-03", { "nitinol-plate", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-03", { "concrete", 4 })
-- 04
util.replace_or_add_ingredient("5d-masher-04", "advanced-circuit", "advanced-processing-unit", 4, false)
util.replace_or_add_ingredient("5d-masher-04", "steel-plate", "complex-joint", 5, false)
util.replace_or_add_ingredient("5d-masher-04", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-04", { "advanced-gearbox", 2 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-04", { "imersium-plate", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-04", { "concrete", 4 })
-- 05
util.replace_or_add_ingredient("5d-masher-05", "advanced-circuit", "advanced-processing-unit", 4, false)
util.replace_or_add_ingredient("5d-masher-05", "steel-plate", "complex-joint", 5, false)
util.replace_or_add_ingredient("5d-masher-05", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-masher-05", "speed-module", "advanced-gearbox", 2, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-05", { "se-heavy-girder", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-05", { "concrete", 4 })
-- 06
util.replace_or_add_ingredient("5d-masher-06", "advanced-circuit", "advanced-processing-unit", 4, false)
util.replace_or_add_ingredient("5d-masher-06", "steel-plate", "se-aeroframe-scaffold", 5, false)
util.replace_or_add_ingredient("5d-masher-06", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-masher-06", "productivity-module", "elite-gearbox", 2, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-06", { "se-heavy-girder", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-06", { "concrete", 4 })
-- 07
util.replace_or_add_ingredient("5d-masher-07", "processing-unit", "advanced-processing-unit", 4, false)
util.replace_or_add_ingredient("5d-masher-07", "steel-plate", "se-aeroframe-bulkhead", 5, false)
util.replace_or_add_ingredient("5d-masher-07", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-masher-07", "speed-module-2", "elite-gearbox", 2, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-07", { "se-heavy-girder", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-07", { "concrete", 4 })
-- 08
util.replace_or_add_ingredient("5d-masher-08", "processing-unit", "gr_materials_circuit", 4, false)
util.replace_or_add_ingredient("5d-masher-08", "steel-plate", "se-aeroframe-bulkhead", 5, false)
util.replace_or_add_ingredient("5d-masher-08", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-masher-08", "productivity-module-2", "elite-gearbox", 2, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-08", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-08", { "se-heavy-girder", 4 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-08", { "concrete", 4 })
-- 09
util.replace_or_add_ingredient("5d-masher-09", "processing-unit", "gr_materials_circuit", 4, false)
util.replace_or_add_ingredient("5d-masher-09", "steel-plate", "se-aeroframe-bulkhead", 5, false)
util.replace_or_add_ingredient("5d-masher-09", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-masher-09", "speed-module-3", "se-heavy-assembly", 2, false)
util.replace_or_add_ingredient("5d-masher-09", "low-density-structure", "se-nanomaterial", 4, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-09", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-09", { "concrete", 4 })
-- 10
util.replace_or_add_ingredient("5d-masher-10", "processing-unit", "gr_materials_circuit", 4, false)
util.replace_or_add_ingredient("5d-masher-10", "steel-plate", "se-aeroframe-bulkhead", 5, false)
util.replace_or_add_ingredient("5d-masher-10", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("5d-masher-10", "productivity-module-3", "se-heavy-assembly", 2, false)
util.replace_or_add_ingredient("5d-masher-10", "low-density-structure", "se-nanomaterial", 4, false)
bobmods.lib.recipe.add_new_ingredient("5d-masher-10", { "ai-core", 1 })
bobmods.lib.recipe.add_new_ingredient("5d-masher-10", { "se-naquium-cube", 1 })

-- Hide nuke recipes
bobmods.lib.recipe.hide("5d-steam-turbine-02")
bobmods.lib.recipe.hide("5d-steam-turbine-03")
bobmods.lib.recipe.hide("5d-steam-turbine-04")
bobmods.lib.recipe.hide("5d-steam-turbine-05")
bobmods.lib.recipe.hide("5d-steam-turbine-06")
bobmods.lib.recipe.hide("5d-steam-turbine-07")
bobmods.lib.recipe.hide("5d-steam-turbine-08")
bobmods.lib.recipe.hide("5d-steam-turbine-09")
bobmods.lib.recipe.hide("5d-steam-turbine-10")

bobmods.lib.recipe.hide("5d-heat-exchanger-02")
bobmods.lib.recipe.hide("5d-heat-exchanger-03")
bobmods.lib.recipe.hide("5d-heat-exchanger-04")
bobmods.lib.recipe.hide("5d-heat-exchanger-05")
bobmods.lib.recipe.hide("5d-heat-exchanger-06")
bobmods.lib.recipe.hide("5d-heat-exchanger-07")
bobmods.lib.recipe.hide("5d-heat-exchanger-08")
bobmods.lib.recipe.hide("5d-heat-exchanger-09")
bobmods.lib.recipe.hide("5d-heat-exchanger-10")

bobmods.lib.recipe.hide("5d-heat-pipe-02")
bobmods.lib.recipe.hide("5d-heat-pipe-03")
bobmods.lib.recipe.hide("5d-heat-pipe-04")
bobmods.lib.recipe.hide("5d-heat-pipe-05")
bobmods.lib.recipe.hide("5d-heat-pipe-06")
bobmods.lib.recipe.hide("5d-heat-pipe-07")
bobmods.lib.recipe.hide("5d-heat-pipe-08")
bobmods.lib.recipe.hide("5d-heat-pipe-09")
bobmods.lib.recipe.hide("5d-heat-pipe-10")

bobmods.lib.recipe.hide("5d-nuclear-reactor-02")
bobmods.lib.recipe.hide("5d-nuclear-reactor-03")
bobmods.lib.recipe.hide("5d-nuclear-reactor-04")
bobmods.lib.recipe.hide("5d-nuclear-reactor-05")
bobmods.lib.recipe.hide("5d-nuclear-reactor-06")
bobmods.lib.recipe.hide("5d-nuclear-reactor-07")
bobmods.lib.recipe.hide("5d-nuclear-reactor-08")
bobmods.lib.recipe.hide("5d-nuclear-reactor-09")
bobmods.lib.recipe.hide("5d-nuclear-reactor-10")


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

-- Fix burner assembler
--util.replace_or_add_ingredient("burner-assembling-machine", "iron-gear-wheel", "automation-core", 2, false)
--util.replace_or_add_ingredient("burner-assembling-machine", "aluminum-plate", "aluminum-plate", 8, false)
--bobmods.lib.recipe.add_new_ingredient("burner-assembling-machine", { "stone-brick", 4 })


--HCP circuit
util.replace_or_add_ingredient("big-battery-mk3-equipment", "processing-unit", "gr_materials_circuit", 2, false)
util.replace_or_add_ingredient("battery-mk3-equipment", "processing-unit", "gr_materials_circuit", 1, false)

util.replace_or_add_ingredient("se-space-supercomputer-3", "advanced-processing-unit", "gr_materials_circuit", 1000, false)
bobmods.lib.recipe.add_new_ingredient("se-space-supercomputer-3", { "gr_materials_circuit", 50 })

util.replace_or_add_ingredient("se-thruster-suit-3", "processing-unit", "gr_materials_circuit", 100, false)
util.replace_or_add_ingredient("se-thruster-suit-4", "processing-unit", "gr_materials_circuit", 200, false)

bobmods.lib.recipe.add_new_ingredient("se-big-turbine", { "gr_materials_circuit", 20 })

util.replace_or_add_ingredient("se-energy-transmitter-emitter", "processing-unit", "gr_materials_circuit", 100, false)
util.replace_or_add_ingredient("se-energy-transmitter-injector", "processing-unit", "gr_materials_circuit", 50, false)
util.replace_or_add_ingredient("se-energy-receiver", "processing-unit", "gr_materials_circuit", 50, false)

util.replace_or_add_ingredient("fusion-reactor-equipment", "processing-unit", "gr_materials_circuit", 150, false)

util.replace_or_add_ingredient("se-antimatter-reactor", "processing-unit", "gr_materials_circuit", 500, false)

util.replace_or_add_ingredient("antimatter-turret-rocket", "processing-unit", "gr_materials_circuit", 1, false)
util.replace_or_add_ingredient("antimatter-rocket", "processing-unit", "gr_materials_circuit", 1, false)
util.replace_or_add_ingredient("antimatter-artillery-shell", "processing-unit", "gr_materials_circuit", 1, false)
util.replace_or_add_ingredient("antimatter-railgun-shell", "processing-unit", "gr_materials_circuit", 1, false)

util.replace_or_add_ingredient("kr-stabilizer-charging-station", "processing-unit", "gr_materials_circuit", 1, false)

util.replace_or_add_ingredient("fu_star_engine_core_entity", "processing-unit", "gr_materials_circuit", 3000, false)

bobmods.lib.recipe.add_new_ingredient("kr-antimatter-reactor", { "gr_materials_circuit", 100 })
bobmods.lib.recipe.add_new_ingredient("antimatter-reactor-equipment", { "gr_materials_circuit", 50 })

bobmods.lib.recipe.add_new_ingredient("kr-energy-storage", { "gr_materials_circuit", 10 })

bobmods.lib.recipe.add_new_ingredient("se-nexus", { "gr_materials_circuit", 10 })

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
            {type="fluid", name="depleted-acid", amount=50},
            {type="item", name="gr_materials_circuit", amount=1},
        },
		main_product = "gr_materials_circuit",
		allow_decomposition = false
	},
})
