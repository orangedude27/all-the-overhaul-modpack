-- Adjust recipes for usage in cokery
local cokeRecipe = atom.util.Recipe("coke")
cokeRecipe.prototype.category = "biofarm-mod-smelting"
cokeRecipe.prototype.allow_as_intermediate = false
cokeRecipe.prototype.allow_intermediates = false
cokeRecipe.prototype.subgroup = "coal"
cokeRecipe.allowProductivity()

local phenolRecipe = atom.util.Recipe("phenol")
phenolRecipe.prototype.category = "biofarm-mod-smelting"
phenolRecipe.prototype.allow_as_intermediate = false
phenolRecipe.prototype.allow_intermediates = false
phenolRecipe.prototype.subgroup = "coal"
phenolRecipe.allowProductivity()

data.raw.recipe["bi-ash-1"].category = "smelting"
data.raw.recipe["bi-ash-2"].category = "smelting"

local woodpulpRecipe = atom.util.Recipe("bi-woodpulp")
woodpulpRecipe.prototype.energy_required = 1
woodpulpRecipe.replaceIngredient("wood", 3)
woodpulpRecipe.replaceResult("bi-woodpulp", 6)

data.raw.recipe["synthetic-graphite"].energy_required = 24


-- Adjust technologies
atom.util.Technology("foundry").removeRecipe("coke")

local steelTech = atom.util.Technology("steel-processing")
steelTech.replacePrerequisite("automation-science-pack", "cokery-1")
steelTech.removeRecipe("coke")
steelTech.removeRecipe("phenol")

local coalProcessing1 = atom.util.Technology("bi-tech-coal-processing-1")
coalProcessing1.prototype.level = nil
coalProcessing1.prototype.max_level = nil
coalProcessing1.prototype.icons = {
    { icon = "__Bio_Industries__/graphics/icons/ash_64.png", icon_size = 64 }
}
coalProcessing1.removeRecipe("bi-cokery")

local coalProcessing2 = atom.util.Technology("bi-tech-coal-processing-2")
coalProcessing2.prototype.level = nil
coalProcessing2.prototype.max_level = nil

-- Remove unused items and recipes
atom.util.item.removeByName("wood-charcoal")
atom.util.item.removeByName("pellet-coke")