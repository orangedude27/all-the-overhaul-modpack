-- Recipe balancing

-- Basic electronic components with silver
local componentsRecipe = atom.util.Recipe("basic-electronic-components-silver")
componentsRecipe.replaceIngredient("silver-wire", 5)
componentsRecipe.replaceIngredient("graphite", 5)

-- Electric motor with silver
atom.util.Recipe("electric-motor-silver").replaceIngredient("silver-wire", 1)