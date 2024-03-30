local util = require("_data-util")
local Recipe = require('__stdlib__/stdlib/data/recipe')

atom.util.recipe.removeByName("nickel-plate")
atom.util.recipe.removeByName("molten-nickel")
atom.util.recipe.removeByName("nickel-ingot")
atom.util.recipe.removeByName("zinc-plate")
atom.util.recipe.removeByName("brass-plate")
atom.util.recipe.removeByName("gold-powder")
atom.util.recipe.removeByName("gold-plate")

-- Tweak copper to gold recipe
util.replace_or_add_ingredient("trace-gold-from-copper", "copper-ore", atom.processing.materials.copper.itemNames.dust, 4)
util.replace_or_add_ingredient("trace-gold-from-copper", "aqua-regia", "aqua-regia", 3, true)
local copperToGold = data.raw.recipe["trace-gold-from-copper"]
copperToGold.main_product = atom.processing.materials.gold.itemNames.dust
copperToGold.icons = {
    atom.processing.materials.gold.icons.dust,
    atom.util.icon.createSmallIcon(atom.processing.materials.copper.icons.ore)
}
copperToGold.results = {
    { name = atom.processing.materials.gold.itemNames.dust, amount = 1 },
    { name = atom.processing.materials.nickel.itemNames.ore, amount = 1, probability = 0.125 },
    { name = atom.processing.materials.silver.itemNames.ore, amount = 1, probability = 0.1 },
    { name = "platinum-powder", amount = 1, probability = 0.02 },
    data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 3 } or nil
}
copperToGold.energy_required = 1
util.recipe_replace_result("depleted-acid-treatment", "gold-powder", "atom-gold-dust", 1)

util.tech_add_prerequisites("micron-tolerance-instruments", {"micron-tolerance-manufacturing", "gyroscope", "spectroscopy"})
util.tech_add_prerequisites("kr-quarry-minerals-extraction", {"space-science-pack"})
