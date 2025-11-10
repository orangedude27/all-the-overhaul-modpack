if not mods["elevated-rails"] then return end

local tech = atom.util.Technology("elevated-rail")
tech.addPrerequisite("productivity-science-pack")
tech.addIngredient("productivity-science-pack")

local recipeSupport = atom.util.Recipe("rail-support")
recipeSupport.replaceIngredient("refined-concrete", "kr-white-reinforced-plate")
recipeSupport.addIngredient("titanium-plate", 10)
recipeSupport.prototype.energy_required = 15

local recipeRamp = atom.util.Recipe("rail-ramp")
recipeRamp.replaceIngredient("refined-concrete", "kr-white-reinforced-plate")
recipeRamp.addIngredient("titanium-plate", 20)
recipeRamp.prototype.energy_required = 30