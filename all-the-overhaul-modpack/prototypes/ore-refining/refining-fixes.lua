local Recipe = require('__stdlib__/stdlib/data/recipe')
local atom_util = require("data-util")

require("fixes.fixes")

-- Iron Recipes to Disable
--bobmods.lib.recipe.hide("el_arc_pure_iron_recipe")
--bobmods.lib.recipe.hide("enriched-iron")
--bobmods.lib.recipe.hide("enriched-iron-plate")
--bobmods.lib.recipe.hide("el_cast_pure_iron_recipe")
--bobmods.lib.recipe.hide("se-iron-ingot")
--bobmods.lib.recipe.hide("se-molten-iron")

-- Lead Recipes to Disable
--bobmods.lib.recipe.hide("lead-dust")
--data.raw.recipe["enriched-lead"].category = "fluid-filtration"
--Recipe("enriched-lead"):remove_ingredient("sulfuric-acid")
--Recipe("enriched-lead"):replace_ingredient("lead-dust", "atom-lead-dust")