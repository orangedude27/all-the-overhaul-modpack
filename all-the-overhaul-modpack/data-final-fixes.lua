atom.stage = "final-fixes"

require("_data-final-fixes")

require("content.fixes")
require("integrations.fixes")
require("compatibility.fixes")

-- for some reason normal pipes sometimes don't have the correct collision_mask, so just force them to match the steel pipes
data.raw["pipe"]["pipe"].collision_mask = data.raw["pipe"]["kr-steel-pipe"].collision_mask
data.raw["pipe-to-ground"]["pipe-to-ground"].collision_mask = data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].collision_mask

-- Final balancing
atom.util.Recipe("steel-plate").replaceIngredient("iron-plate", 10)
atom.util.Recipe("rail").addIngredient("concrete", 2)