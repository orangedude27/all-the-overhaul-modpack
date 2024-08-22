-- Diesel Train
local fissionStage = atom.util.Technology("fi_stage_tech")
local loco2 = atom.util.Technology("el_train_tech")
fissionStage.addPrerequisites(loco2.prototype.prerequisites)
fissionStage.removePrerequisite(loco2)
loco2.setPrerequisites({ "productivity-science-pack" })
loco2.removeIngredient("basic-tech-card")
loco2.addIngredient("chemical-science-pack")
loco2.addIngredient("productivity-science-pack")

-- Nuclear train equipment
local equip2 = atom.util.Technology("fi_train_tech")
equip2.addPrerequisite("se-rocket-science-pack")
equip2.addIngredient("productivity-science-pack")

-- Black Cargo Wagon
local wagon2 = atom.util.Technology("black-cargo-wagon")
wagon2.addPrerequisite("productivity-science-pack")
wagon2.addPrerequisite("nitinol-processing")
wagon2.removeIngredient("basic-tech-card")
wagon2.addIngredient("chemical-science-pack")
wagon2.addIngredient("productivity-science-pack")
wagon2.addIngredient("se-rocket-science-pack")

-- Black Fluid Wagon
local fluid2 = atom.util.Technology("black-fluid-wagon")
fluid2.addPrerequisite("productivity-science-pack")
fluid2.addPrerequisite("nitinol-processing")
fluid2.removeIngredient("basic-tech-card")
fluid2.addIngredient("chemical-science-pack")
fluid2.addIngredient("productivity-science-pack")
fluid2.addIngredient("se-rocket-science-pack")

-- EM Suspension Train 1
local loco4 = atom.util.Technology("gr_train_tech")
loco4.addPrerequisite("kr-advanced-tech-card")
loco4.addIngredient("advanced-tech-card")