local util = require("data-util")
local Recipe = require('__stdlib__/stdlib/data/recipe')

removeRecipeByName("nickel-plate")
removeRecipeByName("molten-nickel")
removeRecipeByName("nickel-ingot")
removeRecipeByName("zinc-plate")
removeRecipeByName("brass-plate")
removeRecipeByName("gold-powder")
removeRecipeByName("gold-plate")

-- Tweak copper to gold recipe
util.replace_or_add_ingredient("trace-gold-from-copper", "copper-ore", atom.refining.config.copper.itemNames.dust, 4)
util.replace_or_add_ingredient("trace-gold-from-copper", "aqua-regia", "aqua-regia", 3, true)
local copperToGold = data.raw.recipe["trace-gold-from-copper"]
copperToGold.main_product = atom.refining.config.gold.itemNames.dust
copperToGold.icons = {
    atom.refining.config.gold.icons.dust,
    createSmallIcon(atom.refining.config.copper.icons.ore)
}
copperToGold.results = {
    { name = atom.refining.config.gold.itemNames.dust, amount = 1 },
    { name = atom.refining.config.nickel.itemNames.ore, amount = 1, probability = 0.125 },
    { name = atom.refining.config.silver.itemNames.ore, amount = 1, probability = 0.1 },
    { name = "platinum-powder", amount = 1, probability = 0.02 },
    data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 3 } or nil
}
copperToGold.energy_required = 1
util.recipe_replace_result("depleted-acid-treatment", "gold-powder", "atom-gold-dust", 1)
