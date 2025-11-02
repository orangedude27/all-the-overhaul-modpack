-- Recipe balancing

-- Basic electronic components with silver
local componentsRecipe = atom.util.Recipe("basic-electronic-components-silver")
componentsRecipe.replaceIngredient("silver-wire", 5)
componentsRecipe.replaceIngredient("graphite", 5)

-- Electric motor with silver
atom.util.Recipe("electric-motor-silver").replaceIngredient("silver-wire", 1)

-- Add silver landfill
local silverLandfill = atom.util.Recipe(table.deepcopy(data.raw.recipe["landfill-iron-ore"]))
silverLandfill.prototype.name = "landfill-silver-ore"
silverLandfill.prototype.order = "z-b-silver-ore"
silverLandfill.prototype.icons[2] = table.deepcopy(atom.processing.materials.silver.icons.ore)
silverLandfill.prototype.icons[2].scale = 0.17
silverLandfill.replaceIngredient("iron-ore", "silver-ore")
silverLandfill.unlockedByTechnology("se-recycling-facility")
silverLandfill.apply()


-- Technologies

-- Bakelite requires phenol which is unlocked with Cokery 1
atom.util.Technology("bakelite").addPrerequisite("cokery-1")