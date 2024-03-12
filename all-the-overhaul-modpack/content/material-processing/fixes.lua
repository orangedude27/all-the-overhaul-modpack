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