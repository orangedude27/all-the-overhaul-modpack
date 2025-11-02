require("integrations/updates")
require("compatibility/updates")

-- Chemical plant mk1 requires tungsten so we move it further down
atom.util.Technology("kr-fluids-chemistry").removeRecipe("chemical-plant")
atom.util.Technology("oil-processing").addRecipe("chemical-plant")