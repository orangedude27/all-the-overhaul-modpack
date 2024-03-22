-- Recipe balancing

-- Fixes Advanced circuit (the recipe uses two fluids but the building only supports one)
atom.util.Recipe("advanced-circuit-in-laser-mill").removeIngredient("helium")