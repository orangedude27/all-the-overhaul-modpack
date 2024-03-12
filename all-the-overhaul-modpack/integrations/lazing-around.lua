-- Recipe balancing

-- Electronic circuit
atom.util.Recipe("electronic-circuit-in-laser-mill").replaceIngredient("basic-electronic-components", 2)

-- Fixes Advanced circuit (the recipe uses two fluids but the building only supports one)
atom.util.Recipe("advanced-circuit-in-laser-mill").removeIngredient("helium")