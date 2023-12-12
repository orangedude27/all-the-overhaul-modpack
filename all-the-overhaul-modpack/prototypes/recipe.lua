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

bobmods.lib.recipe.add_new_ingredient("kr-advanced-furnace", "electric-furnace-3")

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

-- Bob's Assembly
-- K2 Integration
util.replace_or_add_ingredient("kr-advanced-assembling-machine", "assembling-machine-3", "assembling-machine-6", 2, false)
util.replace_or_add_ingredient("kr-advanced-assembling-machine", "electric-furnace", "electric-furnace-3", 2, false)

bobmods.lib.recipe.add_new_ingredient("kr-advanced-chemical-plant", "chemical-plant-4")

util.replace_or_add_ingredient("k11-advanced-centrifuge", "centrifuge", "centrifuge-3", 2, false)

-- Electronic machine
util.replace_or_add_ingredient("electronics-machine-1", "iron-plate", "aluminum-plate", 5, false)
util.replace_or_add_ingredient("electronics-machine-1", nil, "articulated-mechanism", 2, false)

bobmods.lib.recipe.remove_ingredient("electronics-machine-2", "steel-plate")
bobmods.lib.recipe.remove_ingredient("electronics-machine-2", "steel-gear")
bobmods.lib.recipe.add_new_ingredient("electronics-machine-2", { "automation-core-2", 1 })
bobmods.lib.recipe.add_new_ingredient("electronics-machine-2", { "solder", 3 })

util.replace_or_add_ingredient("electronics-machine-3", "titanium-plate", "automation-core-3", 1, false)
util.replace_or_add_ingredient("electronics-machine-3", "iron-gear-wheel", "imersium-gear-wheel", 4, false)
bobmods.lib.recipe.add_new_ingredient("electronics-machine-3", { "solder", 8 })

-- Assembler
bobmods.lib.recipe.add_new_ingredient("assembling-machine-4", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("assembling-machine-4", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("assembling-machine-4", "steel-plate", "nitinol-plate", 9, false)
util.replace_or_add_ingredient("assembling-machine-4", "steel-gear-wheel", "imersium-gear-wheel", 8, false)

bobmods.lib.recipe.add_new_ingredient("assembling-machine-5", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("assembling-machine-5", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("assembling-machine-5", "titanium-plate", "se-heavy-girder", 9, false)
util.replace_or_add_ingredient("assembling-machine-5", "iron-gear-wheel", "imersium-gear-wheel", 8, false)

bobmods.lib.recipe.add_new_ingredient("assembling-machine-6", { "solder", 8 })
bobmods.lib.recipe.add_new_ingredient("assembling-machine-6", { "hv-power-regulator", 1 })
util.replace_or_add_ingredient("assembling-machine-6", "titanium-plate", "imersium-beam", 9, false)
util.replace_or_add_ingredient("assembling-machine-6", "iron-gear-wheel", "se-heavy-bearing", 8, false)

-- Centrifuge
bobmods.lib.recipe.add_new_ingredient("centrifuge-2", { "imersium-beam", 50 })
bobmods.lib.recipe.add_new_ingredient("centrifuge-2", { "bearing", 20 })
bobmods.lib.recipe.add_new_ingredient("centrifuge-2", { "se-heat-shielding", 40 })

bobmods.lib.recipe.add_new_ingredient("centrifuge-3", { "se-heavy-girder", 50 })
bobmods.lib.recipe.add_new_ingredient("centrifuge-3", { "bearing", 40 })
bobmods.lib.recipe.add_new_ingredient("centrifuge-3", { "se-heat-shielding", 40 })
util.replace_or_add_ingredient("centrifuge-3", "steel-plate", "nitinol-plate", 50, false)

-- Oil Refinery
util.replace_or_add_ingredient("oil-refinery-2", "steel-plate", "tungsten-plate", 15, false)

bobmods.lib.recipe.add_new_ingredient("oil-refinery-3", { "advanced-multi-cylinder-engine", 6 })
util.replace_or_add_ingredient("oil-refinery-3", "titanium-plate", "imersium-beam", 15, false)
util.replace_or_add_ingredient("oil-refinery-3", "steel-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("oil-refinery-3", "pipe", "kr-steel-pipe", 10, false)

bobmods.lib.recipe.remove_ingredient("oil-refinery-4", "tungsten-plate")
bobmods.lib.recipe.add_new_ingredient("oil-refinery-4", { "advanced-multi-cylinder-engine", 8 })
util.replace_or_add_ingredient("oil-refinery-4", "titanium-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("oil-refinery-4", "steel-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("oil-refinery-4", "pipe", "brass-pipe", 10, false)

-- Chemical reactor
util.replace_or_add_ingredient("chemical-plant-2", "steel-plate", "tungsten-plate", 15, false)

bobmods.lib.recipe.add_new_ingredient("chemical-plant-3", { "advanced-multi-cylinder-engine", 6 })
util.replace_or_add_ingredient("chemical-plant-3", "titanium-plate", "imersium-beam", 15, false)
util.replace_or_add_ingredient("chemical-plant-3", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("chemical-plant-3", "pipe", "kr-steel-pipe", 10, false)

bobmods.lib.recipe.remove_ingredient("chemical-plant-4", "tungsten-plate")
bobmods.lib.recipe.add_new_ingredient("chemical-plant-4", { "advanced-multi-cylinder-engine", 8 })
util.replace_or_add_ingredient("chemical-plant-4", "steel-plate", "se-heavy-girder", 15, false)
util.replace_or_add_ingredient("chemical-plant-4", "iron-gear-wheel", "imersium-gear-wheel", 10, false)
util.replace_or_add_ingredient("chemical-plant-4", "pipe", "brass-pipe", 10, false)
