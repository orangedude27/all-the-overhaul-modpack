-- Adjust basic electronic components
local bec = atom.util.Recipe("basic-electronic-components")
bec.replaceIngredient("copper-cable", 5)
bec.replaceIngredient("graphite", 5)

atom.util.Recipe("electronic-circuit").replaceIngredient("basic-electronic-components", 2)
atom.util.Recipe("electronic-circuit-in-laser-mill").replaceIngredient("basic-electronic-components", 2)