-- Fixes for 2.0 where the source of the difference to 1.1 is either not clear or there are breaking changes in another mod

local Recipe = atom.util.Recipe
local Technology = atom.util.Technology

-- Circuit board
Recipe("circuit-board").addIngredient("phenolic-board")

-- Electronic circuit
Recipe("electronic-circuit").addIngredient("basic-electronic-components", 2)
Recipe("electronic-circuit").addIngredient("basic-circuit-board", 2)
Recipe("electronic-circuit-in-laser-mill").addIngredient("basic-electronic-components", 2)
Recipe("electronic-circuit-in-laser-mill").addIngredient("basic-circuit-board", 2)
Recipe("electronic-circuit-handcraft-only").addIngredient("basic-electronic-components", 10)
Recipe("electronic-circuit-handcraft-only").addIngredient("basic-circuit-board", 2)
Recipe("electronic-circuit-handcraft-only-in-laser-mill").addIngredient("basic-electronic-components", 10)
Recipe("electronic-circuit-handcraft-only-in-laser-mill").addIngredient("basic-circuit-board", 2)

-- Electronic components
local electronic_components = Recipe("kr-electronic-components")
electronic_components.removeIngredient("plastic-bar")
electronic_components.replaceIngredient("basic-electronic-components", 2)
electronic_components.replaceIngredient("BOBMD-electronic-components", 2)

-- Electronic components with lithium
local electronic_components_lithium = Recipe("kr-electronic-components-with-lithium")
electronic_components_lithium.replaceIngredient("silicon-wafer", 3)
electronic_components_lithium.removeIngredient("kr-nitric-acid")
electronic_components_lithium.assign({ category = "crafting" })

local efficient_fabrication = atom.util.Technology("se-kr-efficient-fabrication")
efficient_fabrication.setPrerequisites({ "se-energy-science-pack-1" })
efficient_fabrication.addIngredient("productivity-science-pack")
efficient_fabrication.addIngredient("automation-science-pack")
efficient_fabrication.addIngredient("logistic-science-pack")
efficient_fabrication.addIngredient("chemical-science-pack")
efficient_fabrication.removeIngredient("se-biological-science-pack-2")
efficient_fabrication.removeIngredient("production-science-pack")
efficient_fabrication.prototype.icons[2].shift = efficient_fabrication.prototype.icons[3].shift
table.remove(efficient_fabrication.prototype.icons, 3)

-- Zirconium plate / Zircalloy 4
local zirconium_plate = Recipe("zirconium-plate")
zirconium_plate.replaceIngredient("zirconium-sponge", "zirconia", 15)
zirconium_plate.replaceResult("zirconium-plate", 5)
Recipe("zircaloy-4").replaceIngredient("zirconium-sponge", "zirconium-plate")

-- Exoskeleton
local exoskeleton_equipment = Recipe("exoskeleton-equipment")
exoskeleton_equipment.replaceIngredient("titanium-plate", 20)
exoskeleton_equipment.replaceIngredient("electric-engine-unit", 30)
exoskeleton_equipment.replaceIngredient("advanced-circuit", "processing-unit")

-- Lubricant
Recipe("lubricant").replaceIngredient("heavy-oil", 10)

-- Multi-cylinder engine
local multi_cylinder_engine = Recipe("engine-unit")
multi_cylinder_engine.removeIngredient("steel-plate")
multi_cylinder_engine.removeIngredient("el_materials_ALK")

-- Medium electric pole
Recipe("medium-electric-pole").removeIngredient("el_materials_ALK")

-- Chemical plant
local chemical_plant = Recipe("chemical-plant")
chemical_plant.removeIngredient("lead-plate")
chemical_plant.removeIngredient("el_materials_ALK")

-- Centrifuge
Recipe("centrifuge").removeIngredient("lead-plate")

-- Construction robot
Recipe("construction-robot").replaceIngredient("electronic-circuit", 2)

-- Processing unit
Recipe("processing-unit").replaceIngredient("advanced-electronic-components", 2)
Recipe("processing-unit-in-laser-mill").replaceIngredient("advanced-electronic-components", 2)
Recipe("processing-unit").removeIngredient("solder")
Recipe("processing-unit").replaceIngredient("solder", 6)
Recipe("processing-unit-in-laser-mill").removeIngredient("solder")
Recipe("processing-unit-in-laser-mill").replaceIngredient("solder", 6)

-- Assembling machine 1
local assembling_machine_1 = Recipe("assembling-machine-1")
assembling_machine_1.removeIngredient("kr-iron-beam")
assembling_machine_1.removeIngredient("iron-gear-wheel")
assembling_machine_1.removeIngredient("lead-plate")

-- Assembling machine 2
Recipe("assembling-machine-2").removeIngredient("el_materials_ALK")

-- Assembling machine 3
Recipe("assembling-machine-3").replaceIngredient("titanium-plate", "hv-power-regulator", 1)

-- Lab 1
local lab_1 = Recipe("lab")
lab_1.removeIngredient("aluminum-cable")
lab_1.removeIngredient("kr-iron-beam")
lab_1.removeIngredient("aluminum-plate")
lab_1.removeIngredient("lead-plate")
lab_1.addIngredient("kr-automation-core", 3)

-- Electric furnace 2
Recipe("5d-electric-furnace-02").replaceIngredient("tungsten-plate", "stone-brick", 5)

-- Chemical tech card
Recipe("chemical-science-pack").removeIngredient("engine-unit")

-- Electric mining drill
local electric_mining_drill = Recipe("electric-mining-drill")
electric_mining_drill.removeIngredient("kr-iron-beam")
electric_mining_drill.removeIngredient("iron-gear-wheel")

-- Electrolysis plant 2
local electrolysis_plant_2 = Recipe("kr-electrolysis-plant")
electrolysis_plant_2.addIngredient("hv-power-regulator", 5)
electrolysis_plant_2.addIngredient("kr-automation-core", 3)
electrolysis_plant_2.addIngredient("tungsten-carbide", 5)

-- Filtration plant 2
local filtration_plant_2 = Recipe("kr-filtration-plant")
filtration_plant_2.addIngredient("kr-automation-core", 3)
filtration_plant_2.addIngredient("tungsten-plate", 20)
filtration_plant_2.addIngredient("tungsten-carbide", 5)

-- Foundry
local foundry = Recipe("foundry")
if foundry then
    foundry.replaceIngredient("crucible", "stone-brick", 20)
end

-- Atmospheric condenser
Recipe("kr-atmospheric-condenser").replaceIngredient("advanced-multi-cylinder-engine", 2)

-- Oil refinery
Recipe("oil-refinery").removeIngredient("el_materials_ALK")

-- Gimbaled thruster
Recipe("gimbaled-thruster").removeIngredient("temperature-sensor")

-- Radar
Recipe("radar").replaceIngredient("basic-circuit-board", "kr-automation-core", 4)

-- Rocket control unit
local rocket_control_unit = Recipe("rocket-control-unit")
rocket_control_unit.replaceIngredient("advanced-circuit", 5)
rocket_control_unit.replaceIngredient("gyro", "tracker")
rocket_control_unit.addIngredient("kr-glass", 5)

-- Low density structure
Recipe("low-density-structure").removeIngredient("titanium-plate")
Recipe("low-density-structure-in-orbit").removeIngredient("titanium-plate")
Recipe("low-density-structure-nanotubes").removeIngredient("titanium-plate")
Recipe("low-density-structure-nanotubes-in-orbit").removeIngredient("titanium-plate")

-- Gyroscope
Recipe("gyro").removeIngredient("xenon")

-- Cargo pod
Recipe("se-cargo-rocket-cargo-pod").replaceIngredient("motorized-articulator", "fast-inserter")

-- Biter research data
Recipe("kr-biter-research-data").replaceIngredient("kr-coke", "gunpowder", 10)

-- Solar panel
Recipe("solar-panel").removeIngredient("kr-iron-beam")

-- Solar cell
Recipe("solar-cell").replaceIngredient("silicon-wafer", "kr-silicon")

-- Biomatter
Recipe("kr-biomass").removeIngredient("kr-biomass")

-- Advanced circuit
Recipe("advanced-circuit").replaceIngredient("solder", 4)
Recipe("advanced-circuit").replaceIngredient("kr-electronic-components", 2)
Recipe("advanced-circuit-in-laser-mill").replaceIngredient("solder", 4)
Recipe("advanced-circuit-in-laser-mill").replaceIngredient("kr-electronic-components", 2)

-- Phenolic board stone
Recipe("phenolic-board-stone").replaceResult("phenolic-board", 2)

-- Fullerenes
data.raw.recipe["fullerenes"].category = "chemistry"

-- Pollution filter
data.raw["recipe"]["kr-pollution-filter"].category = "crafting"
data.raw["recipe"]["kr-restore-used-pollution-filter"].category = "crafting-with-fluid"

-- Pump speed kind of break old games so we choose something inbetween
data.raw["pump"]["pump"].pumping_speed = 80
data.raw["pump"]["kr-steel-pump"].pumping_speed = 160

-- K2 steel pipes using a separate category breaks old games and breaks underground distance progression
data.raw["pipe"]["kr-steel-pipe"].fluid_box.pipe_connections[1].connection_category = nil
data.raw["pipe"]["kr-steel-pipe"].fluid_box.pipe_connections[2].connection_category = nil
data.raw["pipe"]["kr-steel-pipe"].fluid_box.pipe_connections[3].connection_category = nil
data.raw["pipe"]["kr-steel-pipe"].fluid_box.pipe_connections[4].connection_category = nil
data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].fluid_box.pipe_connections[1].connection_category = nil
data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].fluid_box.pipe_connections[2].connection_category = nil

-- Offshore pump doesn't use energy
data.raw["offshore-pump"]["offshore-pump"].energy_source = { type = "void" }

-- Revert fluid box changes of the bio lab
local biolab_fluidboxes = data.raw["assembling-machine"]["kr-bio-lab"].fluid_boxes
biolab_fluidboxes[2].pipe_connections = {
    { flow_direction = "input-output", direction = defines.direction.east, position = { 3, 0 } },
    { flow_direction = "input-output", direction = defines.direction.west, position = { -3, 0 } },
}
biolab_fluidboxes[3] = nil

-- Technologies
local greenhouse = Technology("kr-greenhouse")
greenhouse.replacePrerequisite("steam-power", "basic-fluid-handling")
greenhouse.addPrerequisite("kr-stone-processing")
greenhouse.removePrerequisite("automation-science-pack")

local basic_fluid_handling = Technology("basic-fluid-handling")
basic_fluid_handling.setPrerequisites({ "electricity" })
basic_fluid_handling.removeIngredient("automation-science-pack")
basic_fluid_handling.prototype.ignore_tech_cost_multiplier = true

local steam_power = Technology("steam-power")
steam_power.addIngredient("kr-basic-tech-card")
steam_power.addPrerequisite("automation-science-pack")
steam_power.prototype.ignore_tech_cost_multiplier = false

local manganese_smelting = data.raw.technology["manganese-smelting"]
manganese_smelting.unit = nil
manganese_smelting.research_trigger = { type = "mine-entity", entity = "manganese-ore" }

data.raw.technology["bismanol"].ignore_tech_cost_multiplier = true
data.raw.technology["electricity"].ignore_tech_cost_multiplier = true
data.raw.technology["fuel-processing"].ignore_tech_cost_multiplier = true

data.raw.technology["automation"].ignore_tech_cost_multiplier = false
data.raw.technology["mini-assembler-1"].ignore_tech_cost_multiplier = false
data.raw.technology["electronics"].ignore_tech_cost_multiplier = false

Technology("basic-chemistry").addPrerequisite("automation-science-pack")
Technology("basic-logistics").addPrerequisite("burner-mechanics")
Technology("titanium-processing").addPrerequisite("lubricant")
Technology("military").addPrerequisite("copper-processing")
Technology("mangalloy").addPrerequisite("automation-science-pack")
Technology("landfill").addPrerequisite("automation-science-pack")
Technology("worker-robots-speed-2").addPrerequisite("chemical-science-pack")
Technology("fu_KFK_tech").addPrerequisite("se-rocket-science-pack")

Technology("tinned-cable").addIngredient("kr-basic-tech-card")
Technology("el_ALK_tech").addIngredient("kr-basic-tech-card")
Technology("el_arc_furnace_tech").addIngredient("kr-basic-tech-card")
Technology("el_caster_tech").addIngredient("kr-basic-tech-card")
Technology("el_purifier_tech").addIngredient("kr-basic-tech-card")

Technology("lamp").addPrerequisite("automation-science-pack")

-- Remove new stuff
atom.util.recipe.removeByName("electronic-circuit-wood")
atom.util.recipe.removeIngredient("silicone")
atom.util.item.removeByName("silicone")
atom.util.recipe.removeIngredient("zirconium-sponge")
atom.util.item.removeByName("zirconium-sponge")
