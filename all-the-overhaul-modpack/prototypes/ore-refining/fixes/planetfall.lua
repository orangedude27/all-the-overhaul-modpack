local util = require("data-util")
local Recipe = require('__stdlib__/stdlib/data/recipe')

removeRecipeByName("nickel-plate")
removeRecipeByName("zinc-plate")
removeRecipeByName("brass-plate")

-- Tweak copper to gold recipe
util.replace_or_add_ingredient("trace-gold-from-copper", "copper-ore", "5d-copper-dust", 3)
util.replace_or_add_ingredient("trace-gold-from-copper", "aqua-regia", "aqua-regia", 3, true)
util.recipe_replace_result("trace-gold-from-copper", "depleted-acid", "depleted-acid", 3)