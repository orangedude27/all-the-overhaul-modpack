--Adjust technologie prerequisites
log("Adjusting Tech PIG")
atom.util.Technology("industrial-furnace").addPrerequisite("space-science-pack")
atom.util.Technology("automation-3").addPrerequisite("space-science-pack")
atom.util.Technology("logistics-3").addPrerequisite("space-science-pack")
atom.util.Technology("jetpack-2").addPrerequisite("space-science-pack")
atom.util.Technology("se-condenser-turbine").addPrerequisite("space-science-pack")
atom.util.Technology("se-fuel-refining").addPrerequisite("space-science-pack")
atom.util.Technology("se-processing-beryllium").addPrerequisite("space-science-pack")
atom.util.Technology("se-processing-holmium").addPrerequisite("space-science-pack")
atom.util.Technology("se-processing-water-ice").addPrerequisite("space-science-pack")
atom.util.Technology("se-processing-methane-ice").addPrerequisite("space-science-pack")
atom.util.Technology("se-space-capsule-navigation").addPrerequisite("space-science-pack")
atom.util.Technology("se-space-manufactory").addPrerequisite("space-science-pack")
atom.util.Technology("nuclear-fuel-reprocessing").addPrerequisite("space-science-pack")

atom.util.Technology("basic-chemistry").addPrerequisite("automation-science-pack")
atom.util.Technology("long-inserters-1").addPrerequisite("automation-science-pack")
atom.util.Technology("near-inserters").addPrerequisite("automation-science-pack")
atom.util.Technology("graphite-processing").addPrerequisite("automation-science-pack")
atom.util.Technology("kr-greenhouse").addPrerequisite("automation-science-pack")
atom.util.Technology("tinned-cable").addPrerequisite("automation-science-pack")
atom.util.Technology("electric-mining").addPrerequisite("automation-science-pack")

atom.util.Technology("el_ki_eff_1_tech").removePrerequisite({ "chemical-science-pack" })
atom.util.Technology("el_ki_eff_1_tech").addPrerequisite("production-science-pack")
atom.util.Technology("gimbaled-thruster").addPrerequisite("mechanical-engineering-2")

atom.util.Technology("manganese-smelting").removePrerequisite({ "automation-science-pack" })
atom.util.Technology("steel-processing").removePrerequisite({ "manganese-smelting" })

atom.util.Technology("steel-processing").addPrerequisite("automation-science-pack")

atom.util.Technology("manganese-smelting").removeIngredient("automation-science-pack")
atom.util.Technology("bismanol").removeIngredient("automation-science-pack")

--lock techs that use aluminum ceramic behind it.
atom.util.Technology("mechanical-engineering").addPrerequisite("el_ALK_tech")
atom.util.Technology("kr-fluids-chemistry").addPrerequisite("el_ALK_tech")
--lock tech that uses pcb solder behind it.
atom.util.Technology("fast-inserter").addPrerequisite("pcb-solder")
--Remove gas boiler from gas extraction tech
atom.util.Technology("gas-extraction").removeRecipe("gas-boiler")
--change 248k energy tech prerequisite to energy 1 science, as it is needed to unlock ki2 cubes, witch are needed for energy 2 science
data.raw.technology["fu_energy_tech"].prerequisites = { "se-energy-science-pack-1" }
--adds advanced chemistry as a prereq to needed techs
atom.util.Technology("graphene").addPrerequisite("kr-advanced-chemistry")
atom.util.Technology("carbon-fiber").addPrerequisite("kr-advanced-chemistry")
--add nitrol to cargo rockets tech
atom.util.Technology("se-rocket-launch-pad").addPrerequisite("nitinol-processing")
--add
atom.util.Technology("productivity-module-2").addPrerequisite("fi_modules_1_tech")
atom.util.Technology("speed-module-2").addPrerequisite("fi_modules_1_tech")
atom.util.Technology("efficiency-module-2").addPrerequisite("fi_modules_1_tech")
atom.util.Technology("bi-tech-bio-farming").addIngredient({ "logistic-science-pack" })

--Lock recipies behind tech
atom.util.technology.lockRecipes("lamp", { "light-buoy" })

if data.raw.recipe["laser-turret"] then
    atom.util.technology.lockRecipes("laser-turret", { "sw-electric-turret" })
end

atom.util.technology.lockRecipes("el_purifier_tech", { "ato-bismuth-sorting" })

-- Fix research line of Advanced Furnaces 2
if mods['Load-Furn-2'] then
    --1
    atom.util.Technology("furnace-pro-1").removeIngredient({ "automation-science-pack", "logistic-science-pack" })
    atom.util.Technology("furnace-pro-1").addIngredient(
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack" })
    atom.util.Technology("furnace-pro-1").addPrerequisite("se-rocket-science-pack")
    if mods["IfNickel"] then
        atom.util.Technology("furnace-pro-1").addPrerequisite("nitinol-processing")
    end
    --2
    atom.util.Technology("furnace-pro-2").removeIngredient({ "automation-science-pack", "logistic-science-pack", "chemical-science-pack" })
    atom.util.Technology("furnace-pro-2").addIngredient(
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack" })
    atom.util.Technology("furnace-pro-2").addPrerequisite("space-science-pack")
    --4
    atom.util.Technology("furnace-pro-4").removeIngredient({ "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                    "production-science-pack" })
    atom.util.Technology("furnace-pro-4").addIngredient(
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
              "production-science-pack", "utility-science-pack", "kr-optimization-tech-card" })
    atom.util.Technology("furnace-pro-4").addPrerequisite("kr-optimization-tech-card")
    --5
    atom.util.Technology("furnace-pro-5").removeIngredient({ "automation-science-pack", "logistic-science-pack", "chemical-science-pack",
                                                    "production-science-pack", "utility-science-pack" })
    atom.util.Technology("furnace-pro-5").addIngredient(
            { "automation-science-pack", "logistic-science-pack", "chemical-science-pack", "se-rocket-science-pack", "space-science-pack",
              "production-science-pack", "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1" })
    atom.util.Technology("furnace-pro-5").removePrerequisite({ "utility-science-pack" })
    atom.util.Technology("furnace-pro-5").addPrerequisite("se-heavy-girder")
    -- and integrate it with Krastorio
    atom.util.Technology("kr-advanced-furnace").addPrerequisite("furnace-pro-5")

end

atom.util.Technology("fu_TIM_tech").removePrerequisite({ "fu_stage_tech" })
atom.util.Technology("fu_KFK_tech").removePrerequisite({ "fu_stage_tech" })

-- Vanilla Changes
data.raw.technology["nuclear-fuel-reprocessing"] = nil

-- 248K research balance
-- Remove Fusion Tech by 248K
data.raw.technology["fu_stage_tech"] = nil
-- Lock recipe
atom.util.technology.lockRecipes("fu_activator_tech", { "248k-krastorio2-tritium" })
atom.util.Technology("el_ki_sup_2_tech").addPrerequisite("space-science-pack")
atom.util.Technology("fi_ki_eff_1_tech").addPrerequisite("production-science-pack")
atom.util.Technology("mini-assembler-3").addPrerequisite("production-science-pack")
atom.util.Technology("electric-foundry").addPrerequisite("production-science-pack")
atom.util.Technology("robot-attrition-explosion-safety").addPrerequisite("utility-science-pack")

atom.util.Technology("inserter-capacity-bonus-4").addIngredient({"production-science-pack"})

-- Research line
-- Fusion science pack 1
atom.util.Technology("fu_TIM_tech").addPrerequisite("space-fusion-science-pack")

atom.util.Technology("fu_TIM_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_lead_ingot_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_titan_ingot_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_gold_ingot_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_neodym_ingot_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_ingot_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_lead_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_laser_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_magnet_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_plasma_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_basic_elements_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_fusor_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_crystal_tech").addIngredient({ "fusion-science-pack-1" })
atom.util.Technology("fu_upgrade_tech").addIngredient({ "fusion-science-pack-1" })

-- Fusion science pack 2
atom.util.Technology("fission-reactor-equipment").removePrerequisite({ "se-energy-science-pack-4" })

atom.util.Technology("fu_robo_tech").addPrerequisite("space-fusion-science-pack-2")
atom.util.Technology("fi_modules_3_tech").addPrerequisite("space-fusion-science-pack-2")
atom.util.Technology("kr-imersite-solar-panel-equipment").addPrerequisite("space-fusion-science-pack-2")
atom.util.Technology("fission-reactor-equipment").addPrerequisite("space-fusion-science-pack-2")
atom.util.Technology("se-space-material-fabricator").addPrerequisite("space-fusion-science-pack-2")
atom.util.Technology("kr-fusion-energy").addPrerequisite("space-fusion-science-pack-2")
atom.util.Technology("fu_hydrogen_1_tech").addPrerequisite("space-fusion-science-pack-2")

atom.util.Technology("fission-reactor-equipment").removeIngredient("se-energy-science-pack-4")

atom.util.Technology("fu_robo_tech").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("fi_modules_3_tech").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("kr-imersite-solar-panel-equipment").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("fission-reactor-equipment").addIngredient({ "fusion-science-pack-2", "se-energy-science-pack-3" })
atom.util.Technology("kr-matter-tech-card").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("se-material-catalogue-1").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("se-space-material-fabricator").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("kr-fusion-energy").addIngredient({ "fusion-science-pack-2" })
atom.util.Technology("fu_hydrogen_1_tech").addIngredient({ "fusion-science-pack-2" })

-- Fusion science pack 3
atom.util.Technology("fu_hydrogen_2_tech").addPrerequisite("space-fusion-science-pack-3")
atom.util.Technology("fu_tokamak_tech").addPrerequisite("space-fusion-science-pack-3")
atom.util.Technology("fu_turbine_tech").addPrerequisite("space-fusion-science-pack-3")
atom.util.Technology("fu_reactor_tech").addPrerequisite("space-fusion-science-pack-3")
atom.util.Technology("se-space-matter-fusion").addPrerequisite("space-fusion-science-pack-3")

atom.util.Technology("fu_tokamak_tech").removeIngredient("se-energy-science-pack-1")
atom.util.Technology("fu_reactor_tech").removeIngredient("se-energy-science-pack-1")

atom.util.Technology("fu_hydrogen_2_tech").addIngredient({ "fusion-science-pack-3" })
atom.util.Technology("fu_tokamak_tech").addIngredient({ "fusion-science-pack-3", "se-energy-science-pack-3" })
atom.util.Technology("fu_turbine_tech").addIngredient({ "fusion-science-pack-3", "se-energy-science-pack-3" })
atom.util.Technology("fu_reactor_tech").addIngredient({ "fusion-science-pack-3", "se-energy-science-pack-3" })
atom.util.Technology("fu_activator_tech").addIngredient({ "fusion-science-pack-3", "se-energy-science-pack-3" })
atom.util.Technology("se-space-matter-fusion").addIngredient({ "fusion-science-pack-3" })

-- Fusion science pack 4
atom.util.Technology("fu_hydrogen_3_tech").addPrerequisite("space-fusion-science-pack-4")
atom.util.Technology("se-big-heat-exchanger").addPrerequisite("space-fusion-science-pack-4")
atom.util.Technology("se-antimatter-production").addPrerequisite("space-fusion-science-pack-4")

atom.util.Technology("fu_hydrogen_3_tech").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("se-big-heat-exchanger").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("se-big-turbine").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("se-antimatter-production").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("se-antimatter-reactor").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("se-antimatter-engine").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("kr-antimatter-reactor").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("kr-antimatter-reactor-equipment").addIngredient({ "fusion-science-pack-4" })
atom.util.Technology("kr-antimatter-ammo").addIngredient({ "fusion-science-pack-4" })

-- Rampant technology
if mods["RampantArsenal"] then
    atom.util.Technology("rampant-arsenal-technology-generator-equipment-2").addPrerequisite("space-fusion-science-pack-3")
    atom.util.Technology("rampant-arsenal-technology-generator-equipment-2").addPrerequisite("se-energy-science-pack-4")

    atom.util.Technology("rampant-arsenal-technology-generator-equipment-2").addIngredient({ "se-energy-science-pack-4", "fusion-science-pack-3" })

    atom.util.Technology("rampant-arsenal-technology-generator-equipment-3").addPrerequisite("space-fusion-science-pack-4")

    atom.util.Technology("rampant-arsenal-technology-generator-equipment-3").addIngredient({ "se-energy-science-pack-4", "fusion-science-pack-4" })
end

-- Change count
data.raw.technology["fu_hydrogen_1_tech"].unit.count = 600
data.raw.technology["fu_hydrogen_2_tech"].unit.count = 800
data.raw.technology["fu_hydrogen_3_tech"].unit.count = 1000
-- Delete unusing research line
atom.util.Technology("kr-imersium-processing").removePrerequisite({ "fu_crystal_tech" })
-- Add usage for Optimization card
atom.util.Technology("se-astronomic-science-pack-1").addIngredient({ "kr-optimization-tech-card" })
atom.util.Technology("se-biological-science-pack-1").addIngredient({ "kr-optimization-tech-card" })
atom.util.Technology("se-energy-science-pack-1").addIngredient({ "kr-optimization-tech-card" })
atom.util.Technology("se-material-science-pack-1").addIngredient({ "kr-optimization-tech-card" })

atom.util.Technology("kr-battery-mk3-equipment").removePrerequisite({ "se-superconductive-cable" })
atom.util.Technology("kr-battery-mk3-equipment").addPrerequisite("hcp-circuit")

atom.util.Technology("se-space-supercomputer-3").removePrerequisite({ "se-superconductive-cable" })
atom.util.Technology("se-space-supercomputer-3").addPrerequisite("hcp-circuit")

atom.util.Technology("se-thruster-suit-3").removePrerequisite({ "se-superconductive-cable" })
atom.util.Technology("se-thruster-suit-3").addPrerequisite("hcp-circuit")

atom.util.Technology("se-big-turbine").removePrerequisite({ "se-superconductive-cable" })
atom.util.Technology("se-big-turbine").addPrerequisite("hcp-circuit")

atom.util.Technology("se-energy-beaming").removePrerequisite({ "se-superconductive-cable" })
atom.util.Technology("se-energy-beaming").addPrerequisite("hcp-circuit")

atom.util.Technology("fission-reactor-equipment").removePrerequisite({ "se-superconductive-cable" })
atom.util.Technology("fission-reactor-equipment").addPrerequisite("hcp-circuit")

-- Electronic machine
if settings.startup["mini-tech-tree"].value then
    bobmods.lib.tech.hide("mini-basic")
    -- 01
    data.raw.technology["mini-assembler-1"].unit.count = 30
    atom.util.Technology("mini-assembler-1").removePrerequisite({ "mini-basic" })
    -- 02
    data.raw.technology["mini-assembler-2"].unit.count = 50
    -- 03
    data.raw.technology["mini-assembler-3"].unit.count = 100
    -- 04
    data.raw.technology["mini-assembler-4"].unit.count = 200
    atom.util.Technology("mini-assembler-4").addIngredient({ "space-science-pack", "kr-optimization-tech-card" })
    -- 05
    data.raw.technology["mini-assembler-5"].unit.count = 300
    atom.util.Technology("mini-assembler-5").addIngredient({ "utility-science-pack", "kr-optimization-tech-card", "se-material-science-pack-1", "se-energy-science-pack-1" })
    -- 06
    data.raw.technology["mini-assembler-6"].unit.count = 400
    atom.util.Technology("mini-assembler-6").removeIngredient({ "se-material-science-pack-1" })
    atom.util.Technology("mini-assembler-6").addIngredient({ "utility-science-pack", "production-science-pack", "kr-optimization-tech-card", "se-material-science-pack-2", "se-energy-science-pack-2", "se-astronomic-science-pack-2" })
    -- 07
    data.raw.technology["mini-assembler-7"].unit.count = 500
    atom.util.Technology("mini-assembler-7").removeIngredient({ "se-material-science-pack-2" })
    atom.util.Technology("mini-assembler-7").addIngredient({ "kr-optimization-tech-card", "se-material-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" })
    -- 08
    data.raw.technology["mini-assembler-8"].unit.count = 600
    atom.util.Technology("mini-assembler-8").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-3", "se-energy-science-pack-3", "se-astronomic-science-pack-3" })
    -- 09
    data.raw.technology["mini-assembler-9"].unit.count = 700
    atom.util.Technology("mini-assembler-9").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" })
    -- 10
    data.raw.technology["mini-assembler-10"].unit.count = 800
    atom.util.Technology("mini-assembler-10").addIngredient({ "kr-optimization-tech-card", "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4", "se-deep-space-science-pack-1" })
end

data:extend({
    {
        type = "technology",
        name = "t-lab",
        effects = {
            { type = "unlock-recipe", recipe = "fu_lab_recipe" },
        },
        icon = "__248k-Redux-graphics__/ressources/techs/fu_lab_tech.png",
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

-- K2 technologies
atom.util.technology.lockRecipes("kr-fluids-chemistry", { "t0-filtration-plant" })
atom.util.technology.lockRecipes("kr-fluids-chemistry", { "t0-electrolysis-plant" })

atom.util.technology.lockRecipes("t0-filtration-plant", { "kr-filtration-plant" })
atom.util.technology.lockRecipes("t0-electrolysis-plant", { "kr-electrolysis-plant" })

-- Change research or Drills
data.raw.technology["kr-electric-mining-drill-mk3"].prerequisites = { "kr-electric-mining-drill-mk2", "kr-optimization-tech-card" }
atom.util.Technology("kr-electric-mining-drill-mk3").removeIngredient({ "production-science-pack", "utility-science-pack", "se-energy-science-pack-4", "se-material-science-pack-3", "kr-advanced-tech-card" })
atom.util.Technology("kr-electric-mining-drill-mk3").addIngredient({ "kr-optimization-tech-card" })

atom.util.Technology("area-mining-drill").removePrerequisite({ "production-science-pack", "kr-electric-mining-drill-mk2" })
atom.util.Technology("area-mining-drill").addPrerequisite({ "se-heavy-bearing", "mining-drill-mk3", "se-aeroframe-pole" })
atom.util.Technology("area-mining-drill").addIngredient({ "utility-science-pack", "se-material-science-pack-2", "se-astronomic-science-pack-1" })

atom.util.Technology("se-processing-iridium").removePrerequisite({ "area-mining-drill" })
atom.util.Technology("se-processing-iridium").addPrerequisite({ "kr-electric-mining-drill-mk3" })