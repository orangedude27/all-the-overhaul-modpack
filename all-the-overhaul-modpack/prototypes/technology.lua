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
