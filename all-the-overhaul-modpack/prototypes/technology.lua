local util = require("data-util")

--Adjust technologie prerequisites
log("Adjusting Tech PIG")
util.tech_add_prerequisites("industrial-furnace","space-science-pack")
util.tech_add_prerequisites("automation-3","space-science-pack")
util.tech_add_prerequisites("logistics-3","space-science-pack")
util.tech_add_prerequisites("jetpack-2","space-science-pack")
util.tech_add_prerequisites("se-condenser-turbine","space-science-pack")
util.tech_add_prerequisites("se-fuel-refining","space-science-pack")
util.tech_add_prerequisites("se-processing-beryllium","space-science-pack")
util.tech_add_prerequisites("se-processing-holmium","space-science-pack")
util.tech_add_prerequisites("se-processing-water-ice","space-science-pack")
util.tech_add_prerequisites("se-processing-methane-ice","space-science-pack")
util.tech_add_prerequisites("se-space-capsule-navigation","space-science-pack")
util.tech_add_prerequisites("se-space-manufactory","space-science-pack")
util.tech_add_prerequisites("nuclear-fuel-reprocessing","space-science-pack")

util.tech_add_prerequisites("basic-chemistry","automation-science-pack")
util.tech_add_prerequisites("long-inserters-1","automation-science-pack")
util.tech_add_prerequisites("near-inserters","automation-science-pack")
util.tech_add_prerequisites("graphite-processing","automation-science-pack")
util.tech_add_prerequisites("kr-greenhouse","automation-science-pack")
util.tech_add_prerequisites("tinned-cable","automation-science-pack")
util.tech_add_prerequisites("electric-mining","automation-science-pack")

util.tech_remove_prerequisites("el_ki_eff_1_tech",{"chemical-science-pack"})
util.tech_add_prerequisites("el_ki_eff_1_tech","production-science-pack")
util.tech_add_prerequisites("gimbaled-thruster","mechanical-engineering-2")

util.tech_remove_prerequisites("manganese-smelting",{"automation-science-pack"})
util.tech_remove_prerequisites("steel-processing",{"manganese-smelting"})
util.tech_remove_prerequisites("electricity",{"bismanol"})

util.tech_add_prerequisites("steel-processing", "automation-science-pack")
util.tech_add_prerequisites("manganese-smelting", "bismanol")
util.tech_add_prerequisites("electricity", "manganese-smelting")

util.tech_remove_ingredients("manganese-smelting","automation-science-pack")

--lock techs that use Aluminium ceramic behind it.
util.tech_add_prerequisites("mechanical-engineering", "el_ALK_tech")
util.tech_add_prerequisites("kr-fluids-chemistry", "el_ALK_tech")
--lock tech that uses pcb solder behind it.
util.tech_add_prerequisites("fast-inserter", "pcb-solder")
--Remove gas boiler from gas extraction tech
local gas = data.raw.technology["gas-extraction"].effects
util.remove_recipe_from_effects(gas, "gas-boiler")
--change 248k energy tech prerequisite to energy 1 science, as it is needed to unlock ki2 cubes, witch are needed for energy 2 science
data.raw.technology["fu_energy_tech"].prerequisites = {"se-energy-science-pack-1"}
--adds advanced chemistry as a prereq to needed techs
util.tech_add_prerequisites("graphene","kr-advanced-chemistry")
util.tech_add_prerequisites("carbon-fiber","kr-advanced-chemistry")
--add nitrol to cargo rockets tech
util.tech_add_prerequisites("se-rocket-launch-pad","nitinol-processing")
--add 
util.tech_add_prerequisites("productivity-module-2","fi_modules_1_tech")
util.tech_add_prerequisites("speed-module-2","fi_modules_1_tech")
util.tech_add_prerequisites("effectivity-module-2","fi_modules_1_tech")
util.tech_add_ingredients("bi-tech-bio-farming",{"logistic-science-pack"},false)

--Add new technologys
data:extend {
    {
        type = "technology",
        name = "imersium-walls",
        icon = "__base__/graphics/technology/stone-wall.png",
        icon_size = 256,
        order = "a",
        prerequisites = { "steel-walls", "military-science-pack" },
        unit = {
            count = 400,
            ingredients = {
                { "space-science-pack",         1 },
                { "se-material-science-pack-1", 1 },
                { "military-science-pack",      1 },
            },
            time = 40
        }
    }
}

--Lock recipies behind tech
util.tech_lock_recipes("imersium-walls", { "imersium-wall" })

util.tech_lock_recipes("military-science-pack", { "ato-biomass-growing" })

util.tech_lock_recipes("optics", { "light-buoy" })

if data.raw.recipe["laser-turret"] then util.tech_lock_recipes("laser-turret", { "sw-electric-turret" }) end

util.recipe_require_tech("bismuth-plate","bismanol")

util.tech_lock_recipes("el_purifier_tech", {"ato-bismuth-sorting"})

-- Fix research line of Advanced Furnaces 2
if mods['Load-Furn-2'] then
--1
util.tech_remove_ingredients("furnace-pro-1", {"automation-science-pack","logistic-science-pack"})
util.tech_add_ingredients("furnace-pro-1",
{"automation-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack"},false)
util.tech_add_prerequisites("furnace-pro-1", "se-rocket-science-pack")
if mods["IfNickel"] then
util.tech_add_prerequisites("furnace-pro-1", "nitinol-processing")
end
--2
util.tech_remove_ingredients("furnace-pro-2", {"automation-science-pack","logistic-science-pack","chemical-science-pack"})
util.tech_add_ingredients("furnace-pro-2",
{"automation-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack","space-science-pack"},false)
util.tech_add_prerequisites("furnace-pro-2", "space-science-pack")
--4
util.tech_remove_ingredients("furnace-pro-4", {"automation-science-pack","logistic-science-pack","chemical-science-pack",
"production-science-pack"})
util.tech_add_ingredients("furnace-pro-4",
{"automation-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack","space-science-pack",
"production-science-pack", "utility-science-pack","kr-optimization-tech-card"},false)
util.tech_add_prerequisites("furnace-pro-4", "kr-optimization-tech-card")
--5
util.tech_remove_ingredients("furnace-pro-5", {"automation-science-pack","logistic-science-pack","chemical-science-pack",
"production-science-pack","utility-science-pack"})
util.tech_add_ingredients("furnace-pro-5",
{"automation-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack","space-science-pack",
"production-science-pack", "utility-science-pack","kr-optimization-tech-card","se-material-science-pack-1"},false)
util.tech_remove_prerequisites("furnace-pro-5",{"utility-science-pack"})
util.tech_add_prerequisites("furnace-pro-5", "se-heavy-girder")
-- and integrate it with Krastorio
util.tech_add_prerequisites("kr-advanced-furnace", "furnace-pro-5")

end

-- Change miners
-- Remove T3 Miner by Krastorio
bobmods.lib.tech.hide("kr-electric-mining-drill-mk3")
-- Add TA Miners
-- Crust Extractor
data.raw.technology["crust_extractor"].unit.count = 600
data.raw.technology["crust_extractor"].unit.time = 80
util.tech_remove_prerequisites("crust_extractor", {"speed-module","chemical-science-pack"})
util.tech_add_prerequisites("crust_extractor","se-heavy-composite")
util.tech_add_prerequisites("crust_extractor","se-dynamic-emitter")
util.tech_add_prerequisites("crust_extractor","kr-advanced-tech-card")
util.tech_add_prerequisites("crust_extractor","area-mining-drill")
util.tech_add_prerequisites("crust_extractor","fi_upgrade_tech")
util.tech_remove_ingredients("crust_extractor", {"automation-science-pack","logistic-science-pack","checmical-science-pack"})
util.tech_add_ingredients("crust_extractor",
{"production-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack","space-science-pack",
"production-science-pack","utility-science-pack","advanced-tech-card","se-energy-science-pack-4","se-material-science-pack-3"},false)
--Moho Extractor
data.raw.technology["moho_extractor"].unit.count = 800
data.raw.technology["moho_extractor"].unit.time = 100
util.tech_remove_prerequisites("moho_extractor", {"speed-module-2","production-science-pack"})
util.tech_add_prerequisites("moho_extractor","se-heavy-assembly")
util.tech_add_prerequisites("moho_extractor","fu_upgrade_tech")
util.tech_remove_ingredients("moho_extractor", {"automation-science-pack","logistic-science-pack","checmical-science-pack",
"se-rocket-science-pack","space-science-pack","production-science-pack"})
util.tech_add_ingredients("moho_extractor",
{"production-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack","space-science-pack",
"production-science-pack","utility-science-pack","advanced-tech-card","se-energy-science-pack-4","se-material-science-pack-4"},false)
--Mantle Extractor
data.raw.technology["mantle_extractor"].unit.count = 1000
data.raw.technology["mantle_extractor"].unit.time = 120
util.tech_remove_prerequisites("mantle_extractor", {"speed-module-3","robotics","utility-science-pack"})
util.tech_add_prerequisites("mantle_extractor","se-processing-naquium")
util.tech_add_prerequisites("mantle_extractor","gr_upgrade_tech")
util.tech_remove_ingredients("mantle_extractor", {"automation-science-pack","logistic-science-pack","checmical-science-pack",
"se-rocket-science-pack","space-science-pack","production-science-pack","utility-science-pack"})
util.tech_add_ingredients("mantle_extractor",
{"production-science-pack","logistic-science-pack","chemical-science-pack","se-rocket-science-pack","space-science-pack",
"production-science-pack","utility-science-pack","advanced-tech-card","se-astronomic-science-pack-4","se-energy-science-pack-4",
"se-material-science-pack-4","matter-tech-card"},false)

-- 248K research balance
-- Hide Fusion Tech by 248K
bobmods.lib.tech.hide("fu_stage_tech")
bobmods.lib.tech.hide("fu_energy_tech")
-- Lock recipe
util.tech_lock_recipes("fu_activator_tech", { "248k-krastorio2-tritium" })
-- New technologies
data:extend({
    {
        type = "technology",
        name = "space-fusion-catalogue",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-catalogue-1"},
			{type = "unlock-recipe", recipe = "highenergy-data-248"},
			{type = "unlock-recipe", recipe = "radioisotop-data-248"},
			{type = "unlock-recipe", recipe = "star-data-248"},
			{type = "unlock-recipe", recipe = "structural-data-248"}
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-1.png",
        icon_size = 128,
        prerequisites = {"utility-science-pack", "fi_robo_tech", "fi_crystal_tech", "fi_solid_reactor_tech", "fi_train_tech",
			"se-space-radiation-laboratory", "se-space-astrometrics-laboratory", "se-space-electromagnetics-laboratory", "se-space-mechanical-laboratory"},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-optimization-tech-card", 1 },
            },
        },
    },
	{
        type = "technology",
        name = "space-fusion-catalogue-2",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-catalogue-2"},
			{type = "unlock-recipe", recipe = "fusion-stable-data"},
			{type = "unlock-recipe", recipe = "laser-heating-data"},
			{type = "unlock-recipe", recipe = "magnet-stabilazer-data"},
			{type = "unlock-recipe", recipe = "plasma-rotating-data"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-2.png",
        icon_size = 128,
        prerequisites = {"se-space-particle-collider", "fu_laser_tech", "fu_magnet_tech", "fu_plasma_tech", "fu_fusor_tech"},
        unit = {
            count = 10,
			time = 60,
            ingredients = {
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "se-energy-science-pack-1", 1 },
				{ "fusion-science-pack-1", 1 },
            },
        },
    },
	{
        type = "technology",
        name = "space-fusion-catalogue-3",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-catalogue-3"},
			{type = "unlock-recipe", recipe = "fusion-speed-data"},
			{type = "unlock-recipe", recipe = "laser-calculation-data"},
			{type = "unlock-recipe", recipe = "magnet-trajectory-data"},
			{type = "unlock-recipe", recipe = "plasma-spinning-data"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-3.png",
        icon_size = 128,
        prerequisites = {"kr-fusion-energy"},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "se-energy-science-pack-2", 1 },
				{ "fusion-science-pack-1", 1 },
				{ "fusion-science-pack-2", 1 },
            },
        },
    },
	{
        type = "technology",
        name = "space-fusion-catalogue-4",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-catalogue-4"},
			{type = "unlock-recipe", recipe = "fusion-accuracy-data"},
			{type = "unlock-recipe", recipe = "laser-decay-data"},
			{type = "unlock-recipe", recipe = "magnet-contain-data"},
			{type = "unlock-recipe", recipe = "plasma-star-data"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-catalogue-4.png",
        icon_size = 128,
        prerequisites = {"fu_activator_tech"},
        unit = {
            count = 500,
			time = 60,
            ingredients = {
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "se-energy-science-pack-3", 1 },
				{ "fusion-science-pack-1", 1 },
				{ "fusion-science-pack-2", 1 },
				{ "fusion-science-pack-3", 1 },
            },
        },
    },
	
	{
        type = "technology",
        name = "space-fusion-science-pack",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-science-pack-1"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-science-pack-1.png",
        icon_size = 128,
        prerequisites = {"space-fusion-catalogue"},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
                { "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "kr-optimization-tech-card", 1 },
            },
        },
    },
	{
        type = "technology",
        name = "space-fusion-science-pack-2",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-science-pack-2"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-science-pack-2.png",
        icon_size = 128,
        prerequisites = {"space-fusion-catalogue-2"},
        unit = {
            count = 100,
			time = 60,
            ingredients = {
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "fusion-science-pack-1", 1 },
            },
        },
    },
	{
        type = "technology",
        name = "space-fusion-science-pack-3",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-science-pack-3"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-science-pack-3.png",
        icon_size = 128,
        prerequisites = {"space-fusion-catalogue-3"},
        unit = {
            count = 200,
			time = 60,
            ingredients = {
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "fusion-science-pack-1", 1 },
				{ "fusion-science-pack-2", 1 },
            },
        },
    },
	{
        type = "technology",
        name = "space-fusion-science-pack-4",
        effects = {
            {type = "unlock-recipe", recipe = "fusion-science-pack-4"},
        },
		icon = "__all-the-overhaul-modpack__/graphics/icons/fusion-science-pack-4.png",
        icon_size = 128,
        prerequisites = {"space-fusion-catalogue-4"},
        unit = {
            count = 500,
			time = 60,
            ingredients = {
				{ "se-rocket-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "fusion-science-pack-1", 1 },
				{ "fusion-science-pack-2", 1 },
				{ "fusion-science-pack-3", 1 },
            },
        },
    },
	
})
-- Research line
-- Fusion science pack 1 
util.tech_add_prerequisites("fu_TIM_tech","space-fusion-science-pack")

util.tech_add_ingredients("fu_TIM_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_lead_ingot_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_titan_ingot_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_gold_ingot_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_neodym_ingot_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_ingot_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_lead_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_laser_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_magnet_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_plasma_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_basic_elements_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_fusor_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_crystal_tech",{"fusion-science-pack-1"},false)
util.tech_add_ingredients("fu_upgrade_tech",{"fusion-science-pack-1"},false)

-- Fusion science pack 2
util.tech_remove_prerequisites("fusion-reactor-equipment", {"se-energy-science-pack-4"})

util.tech_add_prerequisites("fu_robo_tech","space-fusion-science-pack-2")
util.tech_add_prerequisites("fi_modules_3_tech","space-fusion-science-pack-2")
util.tech_add_prerequisites("kr-imersite-solar-panel-equipment","space-fusion-science-pack-2")
util.tech_add_prerequisites("fusion-reactor-equipment","space-fusion-science-pack-2")
util.tech_add_prerequisites("se-space-material-fabricator","space-fusion-science-pack-2")
util.tech_add_prerequisites("kr-fusion-energy","space-fusion-science-pack-2")
util.tech_add_prerequisites("fu_hydrogen_1_tech","space-fusion-science-pack-2")

util.tech_remove_ingredients("fusion-reactor-equipment","se-energy-science-pack-4")

util.tech_add_ingredients("fu_robo_tech",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("fi_modules_3_tech",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("kr-imersite-solar-panel-equipment",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("fusion-reactor-equipment",{"fusion-science-pack-2", "se-energy-science-pack-3"},false)
util.tech_add_ingredients("kr-matter-tech-card",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("se-material-catalogue-1",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("se-space-material-fabricator",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("kr-fusion-energy",{"fusion-science-pack-2"},false)
util.tech_add_ingredients("fu_hydrogen_1_tech",{"fusion-science-pack-2"},false)

-- Fusion science pack 3
util.tech_add_prerequisites("fu_hydrogen_2_tech","space-fusion-science-pack-3")
util.tech_add_prerequisites("fu_tokamak_tech","space-fusion-science-pack-3")
util.tech_add_prerequisites("fu_turbine_tech","space-fusion-science-pack-3")
util.tech_add_prerequisites("fu_reactor_tech","space-fusion-science-pack-3")
util.tech_add_prerequisites("se-space-matter-fusion","space-fusion-science-pack-3")

util.tech_remove_ingredients("fu_tokamak_tech","se-energy-science-pack-1")
util.tech_remove_ingredients("fu_reactor_tech","se-energy-science-pack-1")

util.tech_add_ingredients("fu_hydrogen_2_tech",{"fusion-science-pack-3"},false)
util.tech_add_ingredients("fu_tokamak_tech",{"fusion-science-pack-3","se-energy-science-pack-3"},false)
util.tech_add_ingredients("fu_turbine_tech",{"fusion-science-pack-3","se-energy-science-pack-3"},false)
util.tech_add_ingredients("fu_reactor_tech",{"fusion-science-pack-3","se-energy-science-pack-3"},false)
util.tech_add_ingredients("fu_activator_tech",{"fusion-science-pack-3","se-energy-science-pack-3"},false)
util.tech_add_ingredients("se-space-matter-fusion",{"fusion-science-pack-3"},false)

-- Fusion science pack 4
util.tech_add_prerequisites("fu_hydrogen_3_tech","space-fusion-science-pack-4")
util.tech_add_prerequisites("se-big-heat-exchanger","space-fusion-science-pack-4")
util.tech_add_prerequisites("se-antimatter-production","space-fusion-science-pack-4")

util.tech_add_ingredients("fu_hydrogen_3_tech",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("se-big-heat-exchanger",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("se-big-turbine",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("se-antimatter-production",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("se-antimatter-reactor",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("se-antimatter-engine",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("kr-antimatter-reactor",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("kr-antimatter-reactor-equipment",{"fusion-science-pack-4"},false)
util.tech_add_ingredients("kr-antimatter-ammo",{"fusion-science-pack-4"},false)

-- Rampant technology
if mods["RampantArsenal"] then
util.tech_add_prerequisites("rampant-arsenal-technology-generator-equipment-2","space-fusion-science-pack-3")
util.tech_add_prerequisites("rampant-arsenal-technology-generator-equipment-2","se-energy-science-pack-4")

util.tech_add_ingredients("rampant-arsenal-technology-generator-equipment-2",{"se-energy-science-pack-4", "fusion-science-pack-3"},false)

util.tech_add_prerequisites("rampant-arsenal-technology-generator-equipment-3","space-fusion-science-pack-4")

util.tech_add_ingredients("rampant-arsenal-technology-generator-equipment-3",{"se-energy-science-pack-4", "fusion-science-pack-4"},false)
end

-- Change count
data.raw.technology["fu_hydrogen_1_tech"].unit.count = 600
data.raw.technology["fu_hydrogen_2_tech"].unit.count = 800
data.raw.technology["fu_hydrogen_3_tech"].unit.count = 1000
-- Delete unusing research line
util.tech_remove_prerequisites("kr-imersium-processing", {"fu_crystal_tech"})
-- Add usage for Optimization card
util.tech_add_ingredients("se-space-science-lab",{"kr-optimization-tech-card"},false)
util.tech_add_ingredients("se-astronomic-science-pack-1",{"kr-optimization-tech-card"},false)
util.tech_add_ingredients("se-biological-science-pack-1",{"kr-optimization-tech-card"},false)
util.tech_add_ingredients("se-energy-science-pack-1",{"kr-optimization-tech-card"},false)
util.tech_add_ingredients("se-material-science-pack-1",{"kr-optimization-tech-card"},false)

