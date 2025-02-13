local util = require("_data-util")
local Tech = require('__jalm__/stdlib/data/technology')

--Adjust technologie prerequisites
log("Adjusting Tech PIG")
util.tech_add_prerequisites("industrial-furnace", "space-science-pack")
util.tech_add_prerequisites("automation-3", "space-science-pack")
util.tech_add_prerequisites("logistics-3", "space-science-pack")
util.tech_add_prerequisites("jetpack-2", "space-science-pack")
util.tech_add_prerequisites("se-condenser-turbine", "space-science-pack")
util.tech_add_prerequisites("se-fuel-refining", "space-science-pack")
util.tech_add_prerequisites("se-processing-beryllium", "space-science-pack")
util.tech_add_prerequisites("se-processing-holmium", "space-science-pack")
util.tech_add_prerequisites("se-processing-water-ice", "space-science-pack")
util.tech_add_prerequisites("se-processing-methane-ice", "space-science-pack")
util.tech_add_prerequisites("se-space-capsule-navigation", "space-science-pack")
util.tech_add_prerequisites("se-space-manufactory", "space-science-pack")
util.tech_add_prerequisites("nuclear-fuel-reprocessing", "space-science-pack")

util.tech_add_prerequisites("basic-chemistry", "automation-science-pack")
util.tech_add_prerequisites("long-inserters-1", "automation-science-pack")
util.tech_add_prerequisites("near-inserters", "automation-science-pack")
util.tech_add_prerequisites("graphite-processing", "automation-science-pack")
util.tech_add_prerequisites("kr-greenhouse", "automation-science-pack")
util.tech_add_prerequisites("tinned-cable", "automation-science-pack")
util.tech_add_prerequisites("electric-mining", "automation-science-pack")

util.tech_remove_prerequisites("el_ki_eff_1_tech", { "chemical-science-pack" })
util.tech_add_prerequisites("el_ki_eff_1_tech", "production-science-pack")
util.tech_add_prerequisites("gimbaled-thruster", "mechanical-engineering-2")

util.tech_remove_prerequisites("manganese-smelting", { "automation-science-pack" })
util.tech_remove_prerequisites("steel-processing", { "manganese-smelting" })
util.tech_remove_prerequisites("electricity", { "bismanol" })

util.tech_add_prerequisites("steel-processing", "automation-science-pack")
util.tech_add_prerequisites("manganese-smelting", "bismanol")
util.tech_add_prerequisites("electricity", "manganese-smelting")

util.tech_remove_ingredients("manganese-smelting", "automation-science-pack")

--lock techs that use aluminum ceramic behind it.
util.tech_add_prerequisites("mechanical-engineering", "el_ALK_tech")
util.tech_add_prerequisites("kr-fluids-chemistry", "el_ALK_tech")
--lock tech that uses pcb solder behind it.
util.tech_add_prerequisites("fast-inserter", "pcb-solder")
if mods["Bio_Industries"] then
    --Remove gas boiler from gas extraction tech
    local gas = data.raw.technology["gas-extraction"].effects
    util.remove_recipe_from_effects(gas, "gas-boiler")
end
if mods["248k"] and mods["space-exploration"] then
    --change 248k energy tech prerequisite to energy 1 science, as it is needed to unlock ki2 cubes, witch are needed for energy 2 science
    data.raw.technology["fu_energy_tech"].prerequisites = { "se-energy-science-pack-1" }
end

--adds advanced chemistry as a prereq to needed techs
util.tech_add_prerequisites("graphene", "kr-advanced-chemistry")
util.tech_add_prerequisites("carbon-fiber", "kr-advanced-chemistry")
--add nitrol to cargo rockets tech
util.tech_add_prerequisites("se-rocket-launch-pad", "nitinol-processing")
--add 
util.tech_add_prerequisites("productivity-module-2", "fi_modules_1_tech")
util.tech_add_prerequisites("speed-module-2", "fi_modules_1_tech")
util.tech_add_prerequisites("effectivity-module-2", "fi_modules_1_tech")
util.tech_add_ingredients("bi-tech-bio-farming", { "logistic-science-pack" }, false)

--Lock recipies behind tech
util.tech_lock_recipes("optics", { "light-buoy" })

if data.raw.recipe["laser-turret"] then
    util.tech_lock_recipes("laser-turret", { "sw-electric-turret" })
end

util.recipe_require_tech("bismuth-plate", "bismanol")

util.tech_lock_recipes("el_purifier_tech", { "ato-bismuth-sorting" })

-- Fix research line of Advanced Furnaces 2
if mods['Load-Furn-2'] then
    --1
    util.tech_remove_ingredients("furnace-pro-1", { "automation-science-pack", "logistic-science-pack" })
    util.tech_add_ingredients("furnace-pro-1",
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack" }, false)
    util.tech_add_prerequisites("furnace-pro-1", "se-rocket-science-pack")
    if mods["IfNickel"] then
        util.tech_add_prerequisites("furnace-pro-1", "nitinol-processing")
    end
    --2
    util.tech_remove_ingredients("furnace-pro-2", { "automation-science-pack", "logistic-science-pack", "chemical-science-pack" })
    util.tech_add_ingredients("furnace-pro-2",
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack" }, false)
    util.tech_add_prerequisites("furnace-pro-2", "space-science-pack")
    --4
    util.tech_remove_ingredients("furnace-pro-4", { "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                    "production-science-pack" })
    util.tech_add_ingredients("furnace-pro-4",
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
              "production-science-pack", "utility-science-pack", "kr-optimization-tech-card" }, false)
    util.tech_add_prerequisites("furnace-pro-4", "kr-optimization-tech-card")
    --5
    util.tech_remove_ingredients("furnace-pro-5", { "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                    "production-science-pack", "utility-science-pack" })
    util.tech_add_ingredients("furnace-pro-5",
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
              "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1" }, false)
    util.tech_remove_prerequisites("furnace-pro-5", { "utility-science-pack" })
    util.tech_add_prerequisites("furnace-pro-5", "se-heavy-girder")
    -- and integrate it with Krastorio
    util.tech_add_prerequisites("kr-advanced-furnace", "furnace-pro-5")

end

util.tech_remove_prerequisites("fu_TIM_tech", { "fu_stage_tech" })

-- Vanilla Changes
data.raw.technology["nuclear-fuel-reprocessing"] = nil

-- 248K research balance
-- Remove Fusion Tech by 248K
data.raw.technology["fu_stage_tech"] = nil
-- Lock recipe
util.tech_lock_recipes("fu_activator_tech", { "248k-krastorio2-tritium" })
util.tech_add_prerequisites("el_ki_sup_2_tech", "space-science-pack")
util.tech_add_prerequisites("fi_ki_eff_1_tech", "production-science-pack")
util.tech_add_prerequisites("mini-assembler-3", "production-science-pack")
util.tech_add_prerequisites("electric-foundry", "production-science-pack")
util.tech_add_prerequisites("robot-attrition-explosion-safety", "utility-science-pack")

util.tech_add_ingredients("inserter-capacity-bonus-4", {"production-science-pack"}, false)

-- Research line
-- Fusion science pack 1 
util.tech_add_prerequisites("fu_TIM_tech", "space-fusion-science-pack")

util.tech_add_ingredients("fu_TIM_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_lead_ingot_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_titan_ingot_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_gold_ingot_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_neodym_ingot_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_ingot_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_lead_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_laser_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_magnet_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_plasma_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_basic_elements_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_fusor_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_crystal_tech", { "fusion-science-pack-1" }, false)
util.tech_add_ingredients("fu_upgrade_tech", { "fusion-science-pack-1" }, false)

-- Fusion science pack 2
util.tech_remove_prerequisites("fusion-reactor-equipment", { "se-energy-science-pack-4" })

util.tech_add_prerequisites("fu_robo_tech", "space-fusion-science-pack-2")
util.tech_add_prerequisites("fi_modules_3_tech", "space-fusion-science-pack-2")
util.tech_add_prerequisites("kr-imersite-solar-panel-equipment", "space-fusion-science-pack-2")
util.tech_add_prerequisites("fusion-reactor-equipment", "space-fusion-science-pack-2")
util.tech_add_prerequisites("se-space-material-fabricator", "space-fusion-science-pack-2")
util.tech_add_prerequisites("kr-fusion-energy", "space-fusion-science-pack-2")
util.tech_add_prerequisites("fu_hydrogen_1_tech", "space-fusion-science-pack-2")

util.tech_remove_ingredients("fusion-reactor-equipment", "se-energy-science-pack-4")

util.tech_add_ingredients("fu_robo_tech", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("fi_modules_3_tech", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("kr-imersite-solar-panel-equipment", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("fusion-reactor-equipment", { "fusion-science-pack-2", "se-energy-science-pack-3" }, false)
util.tech_add_ingredients("kr-matter-tech-card", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("se-material-catalogue-1", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("se-space-material-fabricator", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("kr-fusion-energy", { "fusion-science-pack-2" }, false)
util.tech_add_ingredients("fu_hydrogen_1_tech", { "fusion-science-pack-2" }, false)

-- Fusion science pack 3
util.tech_add_prerequisites("fu_hydrogen_2_tech", "space-fusion-science-pack-3")
util.tech_add_prerequisites("fu_tokamak_tech", "space-fusion-science-pack-3")
util.tech_add_prerequisites("fu_turbine_tech", "space-fusion-science-pack-3")
util.tech_add_prerequisites("fu_reactor_tech", "space-fusion-science-pack-3")
util.tech_add_prerequisites("se-space-matter-fusion", "space-fusion-science-pack-3")

util.tech_remove_ingredients("fu_tokamak_tech", "se-energy-science-pack-1")
util.tech_remove_ingredients("fu_reactor_tech", "se-energy-science-pack-1")

util.tech_add_ingredients("fu_hydrogen_2_tech", { "fusion-science-pack-3" }, false)
util.tech_add_ingredients("fu_tokamak_tech", { "fusion-science-pack-3", "se-energy-science-pack-3" }, false)
util.tech_add_ingredients("fu_turbine_tech", { "fusion-science-pack-3", "se-energy-science-pack-3" }, false)
util.tech_add_ingredients("fu_reactor_tech", { "fusion-science-pack-3", "se-energy-science-pack-3" }, false)
util.tech_add_ingredients("fu_activator_tech", { "fusion-science-pack-3", "se-energy-science-pack-3" }, false)
util.tech_add_ingredients("se-space-matter-fusion", { "fusion-science-pack-3" }, false)

-- Fusion science pack 4
util.tech_add_prerequisites("fu_hydrogen_3_tech", "space-fusion-science-pack-4")
util.tech_add_prerequisites("se-big-heat-exchanger", "space-fusion-science-pack-4")
util.tech_add_prerequisites("se-antimatter-production", "space-fusion-science-pack-4")

util.tech_add_ingredients("fu_hydrogen_3_tech", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("se-big-heat-exchanger", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("se-big-turbine", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("se-antimatter-production", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("se-antimatter-reactor", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("se-antimatter-engine", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("kr-antimatter-reactor", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("kr-antimatter-reactor-equipment", { "fusion-science-pack-4" }, false)
util.tech_add_ingredients("kr-antimatter-ammo", { "fusion-science-pack-4" }, false)

-- Rampant technology
if mods["RampantArsenal"] then
    util.tech_add_prerequisites("rampant-arsenal-technology-generator-equipment-2", "space-fusion-science-pack-3")
    util.tech_add_prerequisites("rampant-arsenal-technology-generator-equipment-2", "se-energy-science-pack-4")

    util.tech_add_ingredients("rampant-arsenal-technology-generator-equipment-2", { "se-energy-science-pack-4", "fusion-science-pack-3" }, false)

    util.tech_add_prerequisites("rampant-arsenal-technology-generator-equipment-3", "space-fusion-science-pack-4")

    util.tech_add_ingredients("rampant-arsenal-technology-generator-equipment-3", { "se-energy-science-pack-4", "fusion-science-pack-4" }, false)
end

if mods["248k"] then
    -- Change count
    data.raw.technology["fu_hydrogen_1_tech"].unit.count = 600
    data.raw.technology["fu_hydrogen_2_tech"].unit.count = 800
    data.raw.technology["fu_hydrogen_3_tech"].unit.count = 1000
end

-- Delete unusing research line
util.tech_remove_prerequisites("kr-imersium-processing", { "fu_crystal_tech" })
-- Add usage for Optimization card
util.tech_add_ingredients("se-astronomic-science-pack-1", { "kr-optimization-tech-card" }, false)
util.tech_add_ingredients("se-biological-science-pack-1", { "kr-optimization-tech-card" }, false)
util.tech_add_ingredients("se-energy-science-pack-1", { "kr-optimization-tech-card" }, false)
util.tech_add_ingredients("se-material-science-pack-1", { "kr-optimization-tech-card" }, false)

util.tech_remove_prerequisites("kr-battery-mk3-equipment", { "se-superconductive-cable" })
util.tech_add_prerequisites("kr-battery-mk3-equipment", "hcp-circuit")

util.tech_remove_prerequisites("se-space-supercomputer-3", { "se-superconductive-cable" })
util.tech_add_prerequisites("se-space-supercomputer-3", "hcp-circuit")

util.tech_remove_prerequisites("se-thruster-suit-3", { "se-superconductive-cable" })
util.tech_add_prerequisites("se-thruster-suit-3", "hcp-circuit")

util.tech_remove_prerequisites("se-big-turbine", { "se-superconductive-cable" })
util.tech_add_prerequisites("se-big-turbine", "hcp-circuit")

util.tech_remove_prerequisites("se-energy-beaming", { "se-superconductive-cable" })
util.tech_add_prerequisites("se-energy-beaming", "hcp-circuit")

util.tech_remove_prerequisites("fusion-reactor-equipment", { "se-superconductive-cable" })
util.tech_add_prerequisites("fusion-reactor-equipment", "hcp-circuit")

-- Electronic machine
-- TODO: We need to find a new way to hide this particular research
-- bobmods.lib.tech.hide("mini-basic")

if mods["mini-machines"] then
    -- 01
    data.raw.technology["mini-assembler-1"].unit.count = 30
    util.tech_remove_prerequisites("mini-assembler-1", { "mini-basic" })
    -- 02
    data.raw.technology["mini-assembler-2"].unit.count = 50
    -- 03
    data.raw.technology["mini-assembler-3"].unit.count = 100
    if mods["OD27_5dim_core"] then
        -- 04
        data.raw.technology["mini-assembler-4"].unit.count = 200
        util.tech_add_ingredients("mini-assembler-4", { "space-science-pack", "kr-optimization-tech-card" }, false)
        -- 05
        data.raw.technology["mini-assembler-5"].unit.count = 300
        util.tech_add_ingredients("mini-assembler-5", { "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" }, false)
        -- 06
        data.raw.technology["mini-assembler-6"].unit.count = 400
        util.tech_remove_ingredients("mini-assembler-6", { "se-material-science-pack-1" })
        util.tech_add_ingredients("mini-assembler-6", { "utility-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "se-astronomic-science-pack-2" }, false)
        -- 07
        data.raw.technology["mini-assembler-7"].unit.count = 500
        util.tech_remove_ingredients("mini-assembler-7", { "se-material-science-pack-2" })
        util.tech_add_ingredients("mini-assembler-7", { "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
        -- 08
        data.raw.technology["mini-assembler-8"].unit.count = 600
        util.tech_add_ingredients("mini-assembler-8", { "kr-optimization-tech-card", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" }, false)
        -- 09
        data.raw.technology["mini-assembler-9"].unit.count = 700
        util.tech_add_ingredients("mini-assembler-9", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" }, false)
        -- 10
        data.raw.technology["mini-assembler-10"].unit.count = 800
        util.tech_add_ingredients("mini-assembler-10", { "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" }, false)
    end
end

data:extend({
    {
        type = "technology",
        name = "t-lab",
        effects = {
            { type = "unlock-recipe", recipe = "fu_lab_recipe" },
        },
        icon = "__248k__/ressources/techs/fu_lab_tech.png",
        icon_size = 128,
        prerequisites = { "se-deep-space-science-pack-4" },
        unit = {
            count = 10000,
            time = 30,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "se-rocket-science-pack", 1 },
                { "space-science-pack", 1 },
                { "production-science-pack", 1 },
                { "utility-science-pack", 1 },
                { "se-material-science-pack-4", 1 },
                { "se-energy-science-pack-4", 1 },
                { "se-biological-science-pack-4", 1 },
                { "se-astronomic-science-pack-4", 1 },
                { "fusion-science-pack-4", 1 },
                { "se-deep-space-science-pack-4", 1 },
            },
        },
    },
})

if mods["Krastorio2"] then
    -- K2 technologies
    util.tech_lock_recipes("kr-fluids-chemistry", { "t0-filtration-plant" })
    util.tech_lock_recipes("kr-fluids-chemistry", { "t0-electrolysis-plant" })

    util.tech_lock_recipes("t0-filtration-plant", { "kr-filtration-plant" })
    util.tech_lock_recipes("t0-electrolysis-plant", { "kr-electrolysis-plant" })

    -- Change research or Drills
    data.raw.technology["kr-electric-mining-drill-mk3"].prerequisites = { "kr-electric-mining-drill-mk2", "kr-optimization-tech-card" }
    util.tech_remove_ingredients("kr-electric-mining-drill-mk3", { "production-science-pack", "utility-science-pack", "se-energy-science-pack-4", "se-material-science-pack-3", "advanced-tech-card" })
    util.tech_add_ingredients("kr-electric-mining-drill-mk3", { "kr-optimization-tech-card" }, false)

    util.tech_remove_prerequisites("area-mining-drill", { "production-science-pack", "kr-electric-mining-drill-mk2" })
    util.tech_add_prerequisites("area-mining-drill", { "se-heavy-bearing", "mining-drill-mk3", "se-aeroframe-pole" })
    util.tech_add_ingredients("area-mining-drill", { "utility-science-pack", "se-material-science-pack-2", "se-astronomic-science-pack-1" }, false)

    util.tech_remove_prerequisites("se-processing-iridium", { "area-mining-drill" })
    util.tech_add_prerequisites("se-processing-iridium", { "kr-electric-mining-drill-mk3" })
end