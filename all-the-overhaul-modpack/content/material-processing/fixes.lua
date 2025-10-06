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
atom.util.recipe.removeByName("copper-plate")

-- The iron plate recipe is used by a menu simulation script, so we just hide it
local ironRecipe = data.raw.recipe["iron-plate"]
ironRecipe.enabled = false
ironRecipe.hidden = true
