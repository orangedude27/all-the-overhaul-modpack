require("materials")

require("fixes.248k")
require("fixes.k2")
require("fixes.se")
require("fixes.timeken")
require("fixes.5dim")
require("fixes.bz")
require("fixes.brasstacks")
require("fixes.planetfall")
require("fixes.aai")
require("fixes.bio")
require("fixes.trikop")

-- Remove vanilla plate recipes
atom.util.recipe.removeByName("iron-plate")
atom.util.recipe.removeByName("copper-plate")

-- for some reason normal pipes sometimes don't have the correct collision_mask, so just force them to match the steel pipes
data.raw["pipe"]["pipe"].collision_mask = data.raw["pipe"]["kr-steel-pipe"].collision_mask
data.raw["pipe-to-ground"]["pipe-to-ground"].collision_mask = data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].collision_mask