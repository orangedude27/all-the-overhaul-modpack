-- Entities
data.raw["lab"]["burner-lab"].researching_speed = 0.75

local entity1 = data.raw["lab"]["lab"]
entity1.researching_speed = 1
entity1.module_slots = 1

local entity2 = data.raw["lab"]["5d-lab-02"]
entity2.researching_speed = 1.5
entity2.module_slots = 2

local entity3 = data.raw["lab"]["5d-lab-03"]
entity3.researching_speed = 2
entity3.module_slots = 3
entity3.next_upgrade = nil

local entity4 = data.raw["lab"]["kr-advanced-lab"]
entity4.researching_speed = 2.5
entity4.module_slots = 4

local entity5 = data.raw["lab"]["se-space-science-lab"]
entity5.researching_speed = 5
entity5.module_slots = 5

local entity6 = data.raw["lab"]["kr-singularity-lab"]
entity6.researching_speed = 10
entity6.module_slots = 6

local entity7 = data.raw["lab"]["fu_lab_entity"]
entity7.researching_speed = 20
entity7.module_slots = 8
entity7.se_allow_in_space = true
entity7.collision_mask = data.raw["lab"]["se-space-science-lab"].collision_mask

for i = 4, 10 do
    local lab_name = "5d-lab-" .. (i < 10 and "0" or "") .. i
    atom.util.item.removeByName(lab_name)
    data.raw.lab[lab_name] = nil
end


-- Recipes

local recipe2 = atom.util.Recipe("5d-lab-02")
recipe2.replaceIngredient("transport-belt", "kr-glass", 10)
recipe2.replaceIngredient("bakelite", "zircaloy-4", 10)

local recipe3 = atom.util.Recipe("5d-lab-03")
recipe3.addIngredient("scanner", 5)
recipe3.replaceIngredient("transport-belt", "fi_materials_glass", 10)
recipe3.replaceIngredient("bakelite", "nitinol-plate", 10)
recipe3.replaceIngredient("electronic-circuit", "processing-unit", 10)

local recipe4 = atom.util.Recipe("kr-advanced-lab")
recipe4.replaceIngredient("lab", "5d-lab-03", 1)

-- 248k
atom.util.Recipe("gr_lab_recipe").replaceIngredient("lab", "se-space-science-lab", 40)
atom.util.Recipe("fu_fusor_recipe").replaceIngredient("lab", "se-space-science-lab", 10)
atom.util.Recipe("fu_fusor_recipe").replaceIngredient("low-density-structure", "heat-resistant-low-density-structure", 100)
atom.util.Recipe("gr_charger_recipe").replaceIngredient("lab", "se-space-science-lab", 10)
atom.util.Recipe("gr_charger_recipe").addIngredient("kr-stabilizer-charging-station", 1)


-- Technologies

local tech2 = atom.util.Technology("5d-lab-1")
tech2.replacePrerequisite("engine", "zirconium-processing")

local tech3 = atom.util.Technology("5d-lab-2")
tech3.addPrerequisite("nitinol-processing")
tech3.addPrerequisite("processing-unit")
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