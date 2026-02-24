atom.stage = "final-fixes"

require("_data-final-fixes")

require("content.fixes")
require("integrations.fixes")
require("compatibility.fixes")

-- for some reason normal pipes sometimes don't have the correct collision_mask, so just force them to match the steel pipes
data.raw["pipe"]["pipe"].collision_mask = data.raw["pipe"]["kr-steel-pipe"].collision_mask
data.raw["pipe-to-ground"]["pipe-to-ground"].collision_mask = data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].collision_mask

-- Fix stone brick recipe
local stone_brick = data.raw.recipe["stone-brick"]
if stone_brick then
    stone_brick.category = "smelting"
    stone_brick.energy_required = 16
    stone_brick.enabled = true
    stone_brick.allow_productivity = true
    stone_brick.ingredients = {
        { type = "item", name = "stone", amount = 5 },
        { type = "item", name = "zircon", amount = 5 },
    }
    stone_brick.results = {{type="item", name="stone-brick", amount=5}}
end

-- Fix prerequisites for artillery shell techs
atom.util.Technology("artillery-shell-range-1").addPrerequisite("utility-science-pack")
atom.util.Technology("artillery-shell-speed-1").addPrerequisite("utility-science-pack")

-- Fix lab inputs
local lab0 = data.raw["lab"]["burner-lab"]
lab0.inputs = {
    "kr-basic-tech-card",
    "automation-science-pack"
}

local lab1 = data.raw["lab"]["lab"]
lab1.inputs = table.deepcopy(lab0.inputs)
table.insert(lab1.inputs, "logistic-science-pack")
table.insert(lab1.inputs, "military-science-pack")
table.insert(lab1.inputs, "chemical-science-pack")

local lab2 = data.raw["lab"]["5d-lab-02"]
lab2.inputs = table.deepcopy(lab1.inputs)
table.insert(lab2.inputs, "se-rocket-science-pack")
table.insert(lab2.inputs, "productivity-science-pack")

local lab3 = data.raw["lab"]["5d-lab-03"]
lab3.inputs = table.deepcopy(lab2.inputs)

local lab4 = data.raw["lab"]["kr-advanced-lab"]
lab4.inputs = table.deepcopy(lab3.inputs)
if settings.startup["atom-basic-tech-card-mode"].value ~= "all" then
    table.remove(lab4.inputs, 1)
end
table.insert(lab4.inputs, "space-science-pack")
table.insert(lab4.inputs, "production-science-pack")
table.insert(lab4.inputs, "utility-science-pack")
table.insert(lab4.inputs, "kr-optimization-tech-card")
table.insert(lab4.inputs, "fi_ki_science")
table.insert(lab4.inputs, "fu_ki_science")
table.insert(lab4.inputs, "gr_red_pack")
table.insert(lab4.inputs, "gr_green_pack")
table.insert(lab4.inputs, "gr_blue_pack")
table.insert(lab4.inputs, "gr_purple_pack")
table.insert(lab4.inputs, "gr_yellow_pack")
table.insert(lab4.inputs, "gr_grey_pack")
table.insert(lab4.inputs, "gr_white_pack")

local lab5 = data.raw["lab"]["se-space-science-lab"]
lab5.inputs = table.deepcopy(lab4.inputs)
table.insert(lab5.inputs, "fusion-science-pack-1")
table.insert(lab5.inputs, "fusion-science-pack-2")
table.insert(lab5.inputs, "fusion-science-pack-3")
table.insert(lab5.inputs, "fusion-science-pack-4")
table.insert(lab5.inputs, "se-astronomic-science-pack-1")
table.insert(lab5.inputs, "se-astronomic-science-pack-2")
table.insert(lab5.inputs, "se-astronomic-science-pack-3")
table.insert(lab5.inputs, "se-astronomic-science-pack-4")
table.insert(lab5.inputs, "se-biological-science-pack-1")
table.insert(lab5.inputs, "se-biological-science-pack-2")
table.insert(lab5.inputs, "se-biological-science-pack-3")
table.insert(lab5.inputs, "se-biological-science-pack-4")
table.insert(lab5.inputs, "se-energy-science-pack-1")
table.insert(lab5.inputs, "se-energy-science-pack-2")
table.insert(lab5.inputs, "se-energy-science-pack-3")
table.insert(lab5.inputs, "se-energy-science-pack-4")
table.insert(lab5.inputs, "se-material-science-pack-1")
table.insert(lab5.inputs, "se-material-science-pack-2")
table.insert(lab5.inputs, "se-material-science-pack-3")
table.insert(lab5.inputs, "se-material-science-pack-4")
table.insert(lab5.inputs, "kr-advanced-tech-card")
table.insert(lab5.inputs, "kr-matter-tech-card")
table.insert(lab5.inputs, "se-deep-space-science-pack-1")
table.insert(lab5.inputs, "fu_space_probe_science")

local lab6 = data.raw["lab"]["kr-singularity-lab"]
lab6.inputs = table.deepcopy(lab5.inputs)
table.insert(lab6.inputs, "kr-singularity-tech-card")
table.insert(lab6.inputs, "se-kr-matter-science-pack-2")
table.insert(lab6.inputs, "se-deep-space-science-pack-2")
table.insert(lab6.inputs, "se-deep-space-science-pack-3")
table.insert(lab6.inputs, "se-deep-space-science-pack-4")

local lab7 = data.raw["lab"]["fu_lab-spaced"]
lab7.inputs = lab6.inputs

-- Somehow copper cable recipe is not unlocked
atom.util.Technology("copper-processing").addRecipe("copper-cable")

-- Balance steel
local steel = atom.util.Recipe("steel-plate")
steel.replaceIngredient("iron-plate", 10)
steel.replaceIngredient("graphite", 3)
steel.replaceIngredient("quicklime", 2)
steel.replaceIngredient("crushed-manganese", "manganese-plate")
steel.replaceResult("steel-plate", 6)

-- Final balancing
atom.util.Recipe("rail").addIngredient("concrete", 2)
atom.util.Technology("railway").addPrerequisite("concrete")


require("2-fixes")

require("integrations.final")
