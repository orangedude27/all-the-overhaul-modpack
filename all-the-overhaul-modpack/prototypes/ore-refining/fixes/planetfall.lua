local util = require("data-util")
local Recipe = require('__stdlib__/stdlib/data/recipe')

removeRecipeByName("nickel-plate")
removeRecipeByName("zinc-plate")
removeRecipeByName("brass-plate")
removeRecipeByName("gold-powder")
removeRecipeByName("gold-plate")

-- Tweak copper to gold recipe
util.replace_or_add_ingredient("trace-gold-from-copper", "copper-ore", atom.refining.config.copper.itemNames.dust, 4)
util.replace_or_add_ingredient("trace-gold-from-copper", "aqua-regia", "aqua-regia", 3, true)
util.recipe_replace_result("trace-gold-from-copper", "depleted-acid", "depleted-acid", 3)
util.recipe_replace_result("trace-gold-from-copper", "gold-powder", atom.refining.config.gold.itemNames.dust, 1)
data.raw.recipe["trace-gold-from-copper"].main_product = atom.refining.config.gold.itemNames.dust
data.raw.recipe["trace-gold-from-copper"].icons = {
    atom.refining.config.gold.icons.dust,
    createSmallIcon(atom.refining.config.copper.icons.ore)
}
data.raw.recipe["trace-gold-from-copper"].energy_required = 1
util.recipe_replace_result("depleted-acid-treatment", "gold-powder", "atom-gold-dust", 1)
