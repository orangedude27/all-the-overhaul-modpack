local gyroscope_name = data.raw.item["gyroscope"] and "gyroscope" or "gyro"

atom.util.recipe.removeByName("nickel-plate")
atom.util.recipe.removeByName("molten-nickel")
atom.util.recipe.removeByName("nickel-ingot")
atom.util.recipe.removeByName("zinc-plate")
atom.util.recipe.removeByName("brass-plate")
atom.util.recipe.removeByName("gold-powder")
atom.util.recipe.removeByName("gold-plate")

-- Tweak copper to gold recipe
atom.util.Recipe("trace-gold-from-copper").replaceOrAddIngredient("copper-ore", atom.processing.materials.copper.itemNames.dust, 4)
atom.util.Recipe("trace-gold-from-copper").replaceOrAddIngredient("aqua-regia", "aqua-regia", 3)
local copperToGold = data.raw.recipe["trace-gold-from-copper"]
copperToGold.main_product = atom.processing.materials.gold.itemNames.dust
copperToGold.icons = {
    atom.processing.materials.gold.icons.dust,
    atom.util.icon.createSmallIcon(atom.processing.materials.copper.icons.ore)
}
copperToGold.results = {
    { type = "item", name = atom.processing.materials.gold.itemNames.dust, amount = 1 },
    { type = "item", name = atom.processing.materials.nickel.itemNames.ore, amount = 1, probability = 0.125 },
    { type = "item", name = atom.processing.materials.silver.itemNames.ore, amount = 1, probability = 0.1 },
    { type = "item", name = "platinum-powder", amount = 1, probability = 0.02 },
    data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 3 } or nil
}
copperToGold.energy_required = 1
atom.util.Recipe("depleted-acid-treatment").replaceResult("gold-powder", "atom-gold-dust", 1)

atom.util.Technology("micron-tolerance-instruments").addPrerequisite({ "micron-tolerance-manufacturing", gyroscope_name, "spectroscopy" })
atom.util.Technology("kr-quarry-minerals-extraction").addPrerequisite({ "space-science-pack" })
