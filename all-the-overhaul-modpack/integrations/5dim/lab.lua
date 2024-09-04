local util = require("_data-util")

local spaceCollisionMask = {
    "water-tile",
    "ground-tile",
    "item-layer",
    "object-layer",
    "player-layer",
    spaceship_collision_layer -- not spaceship
}


-- Entities
data.raw["lab"]["burner-lab"].researching_speed = 0.75

local entity1 = data.raw["lab"]["lab"]
entity1.inputs = table.deepcopy(data.raw.lab["5d-lab-02"].inputs)
table.insert(entity1.inputs, 1, "basic-tech-card")
entity1.researching_speed = 1
entity1.module_specification.module_slots = 1

local entity2 = data.raw["lab"]["5d-lab-02"]
table.insert(entity2.inputs, 1, "basic-tech-card")
table.insert(entity2.inputs, "se-rocket-science-pack")
table.insert(entity2.inputs, "productivity-science-pack")
entity2.researching_speed = 1.5
entity2.module_specification.module_slots = 2

local entity3 = data.raw["lab"]["5d-lab-03"]
table.insert(entity3.inputs, 1, "basic-tech-card")
table.insert(entity3.inputs, "se-rocket-science-pack")
table.insert(entity3.inputs, "productivity-science-pack")
entity3.researching_speed = 2
entity3.module_specification.module_slots = 3
entity3.next_upgrade = nil

local entity4 = data.raw["lab"]["biusart-lab"]
entity4.researching_speed = 2.5
entity4.module_specification.module_slots = 4

local entity5 = data.raw["lab"]["se-space-science-lab"]
entity5.researching_speed = 5
entity5.module_specification.module_slots = 5
table.insert(entity5.inputs, "fusion-science-pack-1")
table.insert(entity5.inputs, "fusion-science-pack-2")
table.insert(entity5.inputs, "fusion-science-pack-3")
table.insert(entity5.inputs, "fusion-science-pack-4")

local entity6 = data.raw["lab"]["kr-singularity-lab"]
entity6.researching_speed = 10
entity6.module_specification.module_slots = 6
entity6.inputs = table.deepcopy(entity5.inputs)

local entity7 = data.raw["lab"]["fu_lab_entity"]
entity7.researching_speed = 20
entity7.module_specification.module_slots = 8
entity7.inputs = table.deepcopy(entity6.inputs)
entity7.se_allow_in_space = true
entity7.collision_mask = data.raw["lab"]["se-space-science-lab"].collision_mask

for i = 4, 10 do
    local lab_name = "5d-lab-" .. (i < 10 and "0" or "") .. i
    atom.util.item.removeByName(lab_name)
    data.raw.lab[lab_name] = nil
end


-- Recipes

local recipe2 = atom.util.Recipe("5d-lab-02")
recipe2.replaceIngredient("transport-belt", "glass", 10)
recipe2.replaceIngredient("bakelite", "zircaloy-4", 10)

local recipe3 = atom.util.Recipe("5d-lab-03")
recipe3.addIngredient("scanner", 5)
recipe3.replaceIngredient("transport-belt", "fi_materials_glass", 10)
recipe3.replaceIngredient("bakelite", "nitinol-plate", 10)
recipe3.replaceIngredient("electronic-circuit", "processing-unit", 10)

local recipe4 = atom.util.Recipe("biusart-lab")
recipe4.replaceIngredient("lab", "5d-lab-03", 1)

-- 248k
atom.util.Recipe("gr_lab_recipe").replaceIngredient("lab", "se-space-science-lab", 40)
atom.util.Recipe("fu_fusor_recipe").replaceIngredient("lab", "se-space-science-lab", 10)
atom.util.Recipe("fu_fusor_recipe").replaceIngredient("low-density-structure", "heat-resistant-low-density-structure", 100)
atom.util.Recipe("gr_charger_recipe").replaceIngredient("lab", "se-space-science-lab", 10)
atom.util.Recipe("gr_charger_recipe").addIngredient("kr-stabilizer-charging-station", 1)


-- Technologies

local tech2 = atom.util.Technology("5d-lab-1")
tech2.replacePrerequisite("engine", "zirconia-processing")

local tech3 = atom.util.Technology("5d-lab-2")
tech3.addPrerequisite("nitinol-processing")
tech3.addPrerequisite("advanced-electronics-2")
tech3.addPrerequisite("scanner")
tech3.addIngredient("chemical-science-pack")
tech3.prototype.unit.count = 300

local tech4 = atom.util.Technology("kr-advanced-lab")
tech4.addPrerequisite(tech3)

local tech5 = atom.util.Technology("se-space-science-lab")
tech5.addPrerequisite(tech4)
tech5.addIngredient("kr-optimization-tech-card")

local tech6 = atom.util.Technology("kr-singularity-lab")
tech6.addPrerequisite(tech5)

for i = 3, 9 do
    data.raw.technology["5d-lab-" .. i] = nil
end

-- SE
atom.util.Technology("se-nexus").addPrerequisite(tech5)

-- 248K
atom.util.Technology("gr_lab_tech").addPrerequisite(tech5)