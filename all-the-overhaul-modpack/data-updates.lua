require("integrations/updates")
require("compatibility/updates")

-- Chemical plant mk1 requires tungsten so we move it further down
atom.util.Technology("kr-fluids-chemistry").removeRecipe("chemical-plant")
atom.util.Technology("oil-processing").addRecipe("chemical-plant")

-- Change tech icon of oil processing back to vanilla
data.raw.technology["oil-processing"].icon = "__base__/graphics/technology/oil-processing.png"
data.raw.technology["oil-processing"].icon_size = 256
data.raw.technology["oil-processing"].icons = nil