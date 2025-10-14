-- Fixes for 2.0 where the source of the difference to 1.1 is either not clear or there are breaking changes in another mod

local Recipe = atom.util.Recipe

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

-- Assembling machine 1
local assembling_machine_1 = Recipe("assembling-machine-1")
assembling_machine_1.removeIngredient("kr-iron-beam")
assembling_machine_1.removeIngredient("iron-gear-wheel")
assembling_machine_1.removeIngredient("lead-plate")

-- Assembling machine 2
Recipe("assembling-machine-2").removeIngredient("el_materials_ALK")

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

-- Remove new stuff
atom.util.recipe.removeByName("electronic-circuit-wood")
atom.util.recipe.removeIngredient("silicone")
atom.util.item.removeByName("silicone")
atom.util.recipe.removeIngredient("zirconium-sponge")
atom.util.item.removeByName("zirconium-sponge")