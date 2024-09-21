require("dirty-water")
require("biomass")

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
    }
})

local miningDrill3 = atom.util.Recipe("kr-electric-mining-drill-mk3")
miningDrill3.replaceIngredient("se-dynamic-emitter", "imersium-gear-wheel", 5)
miningDrill3.replaceIngredient("elite-gearbox", "advanced-gearbox", 4)
miningDrill3.replaceIngredient("se-heavy-composite", "nitinol-plate", 4)
miningDrill3.replaceIngredient("area-mining-drill", "kr-electric-mining-drill-mk2", 1)
miningDrill3.addIngredient("cobalt-carbide", 5)
miningDrill3.addIngredient("fu_materials_KFK", 6)
miningDrill3.addIngredient("processing-unit", 5)

data.raw.fluid["hydrogen"].fuel_value = "150kJ"

-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
data.raw["solar-panel"]["kr-advanced-solar-panel"].production = "300kW"

-- Move lithium sufur battery to a better position in the tech tree
local batteryTech = atom.util.Technology("kr-lithium-sulfur-battery")
batteryTech.prototype.prerequisites = { "space-science-pack" }
batteryTech.removeIngredient("production-science-pack")
batteryTech.removeIngredient("utility-science-pack")

-- Fix prerequisites for military 5
atom.util.Technology("kr-military-5").replacePrerequisite("kr-lithium-sulfur-battery", "utility-science-pack")

-- Fix prerequisites for robot battery
local robotBatteryTech = atom.util.Technology("kr-robot-battery")
robotBatteryTech.addPrerequisite("production-science-pack")
robotBatteryTech.addPrerequisite("utility-science-pack")

-- Balance glass
local glass = atom.util.Recipe("glass")
glass.replaceIngredient("sand", 20)
glass.replaceResult("glass", 5)
glass.setIcon({ icon = "__Krastorio2Assets__/icons/items/glass.png", icon_size = 64, icon_mipmaps = 4 })
glass.addSmallIcon({ icon = "__Krastorio2Assets__/icons/items-with-variations/sand/sand.png", icon_size = 64, icon_mipmaps = 4 })

-- Add a glass recipe with quartz instead of sand
local glassQuartz = atom.util.Recipe(table.deepcopy(data.raw.recipe["glass"]))
glassQuartz.prototype.name = "glass-quartz"
glassQuartz.replaceIngredient("sand", "quartz", 12)
glassQuartz.replaceResult("glass", 7)
glassQuartz.setIcon({ icon = "__Krastorio2Assets__/icons/items/glass.png", icon_size = 64, icon_mipmaps = 4 })
glassQuartz.addSmallIcon({ icon = "__Krastorio2Assets__/icons/items-with-variations/quartz/quartz.png", icon_size = 64 })
glassQuartz.allowProductivity()
glassQuartz.unlockedByTechnology("silica-processing")
glassQuartz.apply()

-- Balance turrets
local railgunEntity = data.raw["ammo-turret"]["kr-railgun-turret"]
railgunEntity.attack_parameters.min_range = 25
railgunEntity.attack_parameters.range = 75
railgunEntity.attack_parameters.cooldown = 90

-- Balance ammo
local imersiteAmmo = atom.util.Recipe("imersite-rifle-magazine")
imersiteAmmo.replaceIngredient("imersite-crystal", 1)
imersiteAmmo.addIngredient("invar-plate", 1)
imersiteAmmo.addIngredient("tungsten-plate", 1)

local imersiteAMRAmmo = atom.util.Recipe("imersite-anti-material-rifle-magazine")
imersiteAMRAmmo.replaceIngredient("imersite-crystal", 1)
imersiteAMRAmmo.addIngredient("invar-plate", 2)
imersiteAMRAmmo.addIngredient("tungsten-plate", 2)

local railgunAmmo = atom.util.Recipe("basic-railgun-shell")
railgunAmmo.replaceResult("basic-railgun-shell", 2)

local explosiveRailgunAmmo = atom.util.Recipe("explosion-railgun-shell")
explosiveRailgunAmmo.replaceIngredient("basic-railgun-shell", 2)
explosiveRailgunAmmo.replaceResult("explosion-railgun-shell", 2)

-- Remove laser artillery. See setting description for an explanation.
if settings.startup["atom-disable-laser-artillery"].value then
    local nameArtillery = "kr-laser-artillery-turret"
    atom.util.item.removeByName(nameArtillery)
    data.raw["electric-turret"][nameArtillery] = nil
    data.raw.technology[nameArtillery] = nil

    local nameAntimatterAmmo = "kr-antimatter-ammo"
    atom.util.item.removeByName(nameAntimatterAmmo)
    data.raw.technology[nameAntimatterAmmo] = nil

    data.raw["research-achievement"]["destroyer-of-worlds"] = nil
end