-- Adjust basic electronic components
local bec = atom.util.Recipe("basic-electronic-components")
bec.replaceIngredient("copper-cable", 5)
bec.replaceIngredient("graphite", 5)

atom.util.Recipe("electronic-circuit").replaceIngredient("basic-electronic-components", 2)
atom.util.Recipe("electronic-circuit-in-laser-mill").replaceIngredient("basic-electronic-components", 2)

-- Move resin from heavy oil from oil processing to advanced oil processing
atom.util.Technology("oil-processing").removeRecipe("bob-resin-oil")
atom.util.Technology("advanced-oil-processing").addRecipe("bob-resin-oil")