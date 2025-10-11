-- Low quality advanced circuit
table.assign(data["raw"].recipe["low-quality-advanced-circuit"], {
    ingredients = {
        { type = "item", name = "copper-cable", amount = 4 },
        { type = "item", name = "electronic-circuit", amount = 4 },
        { type = "item", name = "solder", amount = 6 },
        { type = "item", name = "kr-electronic-components", amount = 3 },
        { type = "item", name = "circuit-board", amount = 1 }
    },
    results = {
        { type = "item", amount = 2, name = "advanced-circuit", probability = 0.75 },
        { type = "item", amount = 2, name = "se-scrap", probability = 0.25 }
    }
})

-- Hand crafting fix
data.raw.recipe["bronze-spring"].allow_as_intermediate = false

-- Balance (normal) solder with indium
local solder = atom.util.Recipe("indium-pcb-solder")
solder.replaceIngredient("tin-plate", 4)
solder.replaceResult("pcb-solder", 8)

-- Chromel-R fabric uses more chromium
atom.util.Recipe("chromel-r-fabric").replaceIngredient("chromium-plate", 4)

-- Add thorium landfill
local thoriumLandfill = atom.util.Recipe(table.deepcopy(data.raw.recipe["landfill-iron-ore"]))
thoriumLandfill.prototype.name = "landfill-thorium-ore"
thoriumLandfill.prototype.order = "z-b-thorium-ore"
thoriumLandfill.prototype.icons[2] = { icon = "__Tantalite2__/graphics/icons/thorium-ore.png", icon_size = 64, icon_mipmaps = 3, scale = 0.17 }
thoriumLandfill.replaceIngredient("iron-ore", "thorium-ore")
thoriumLandfill.unlockedByTechnology("se-recycling-facility")
thoriumLandfill.apply()

-- Alternative glass recipe uses smelters and allows productivity
local glass = atom.util.Recipe("soda-lime-glass")
glass.prototype.category = "smelting"
glass.prototype.always_show_made_in = true
glass.allowProductivity()

-- Balance stainless steel
local stainlessSteel = atom.util.Recipe("stainless-steel-plate")
stainlessSteel.replaceIngredient("steel-plate", 7)
stainlessSteel.replaceIngredient("chromium-plate", 2)

-- Balance glass
local sodaLimeGlass = atom.util.Recipe("soda-lime-glass")
sodaLimeGlass.replaceIngredient("sodium-carbonate", 5)

-- Remove long handed inserter recycling
atom.util.recipe.removeByName("se-recycle-long-handed-inserter")