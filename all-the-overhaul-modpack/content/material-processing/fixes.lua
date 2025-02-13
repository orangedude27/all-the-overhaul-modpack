require("materials")

if mods["248k"] then
    require("fixes.248k")
end
if mods["Krastorio2"] then
    require("fixes.k2")
end
if mods["space-exploration"] then
    require("fixes.se")
end
if mods["timeken"] then
    require("fixes.timeken")
end
if mods["OD27_5dim_core"] then
    require("fixes.5dim")
end
if mods["248k"] then
    require("fixes.bz")
end
if mods["BrassTacks"] then
    require("fixes.brasstacks")
end
if mods["planetfall"] then
    require("fixes.planetfall")
end
if mods["aai"] then
    require("fixes.aai")
end
if mods["Bio_Industries"] then
    require("fixes.bio")
end
if mods["trikop"] then
    require("fixes.trikop")
end

-- Remove vanilla plate recipes
atom.util.recipe.removeByName("copper-plate")

-- The iron plate recipe is used by a menu simulation script, so we just hide it
local ironRecipe = data.raw.recipe["iron-plate"]
ironRecipe.enabled = false
ironRecipe.hidden = true
