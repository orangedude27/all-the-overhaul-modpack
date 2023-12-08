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

end
