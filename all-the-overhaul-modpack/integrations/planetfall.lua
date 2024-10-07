if settings.startup["brimstuff-waste-treatment"].value then
    -- Change subgroup for nodule scrapping
    data.raw.recipe["nodule-scrapping"].subgroup = "recycle"
end

-- Alternative gold from copper recipe
local goldRareRecipe = atom.util.Recipe("trace-gold-from-copper").clone("trace-gold-from-copper-rare")
goldRareRecipe.replaceIngredient("5d-copper-dust", 3)
goldRareRecipe.addIngredient("atom-rare-metals-dust", 1)
goldRareRecipe.addSmallIcon(atom.processing.materials.rareMetals.icons.ore, "top-right")
goldRareRecipe.allowProductivity()
goldRareRecipe.apply()

local goldRareTech = atom.util.Technology("gold-processing").clone("gold-processing-2", true)
goldRareTech.createSmallIcon(atom.processing.materials.rareMetals.icons.ore, "bottom-right")
goldRareTech.addPrerequisite("productivity-science-pack")
goldRareTech.removeIngredient("basic-tech-card")
goldRareTech.addIngredient("chemical-science-pack")
goldRareTech.addIngredient("productivity-science-pack")
goldRareTech.addRecipe("trace-gold-from-copper-rare")
goldRareTech.apply()