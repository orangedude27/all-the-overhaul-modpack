-- Low quality advanced circuit
table.assign(data["raw"].recipe["low-quality-advanced-circuit"], {
    ingredients = {
        { "copper-cable", 4 },
        { "electronic-circuit", 4 },
        { "solder", 6 },
        { "electronic-components", 3 },
        { "circuit-board", 1 }
    },
    results = {
        { amount = 2, name = "advanced-circuit", probability = 0.75 },
        { amount = 2, name = "se-scrap", probability = 0.25 }
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
thoriumLandfill.prototype.icons[2] = { icon = "__Tantalite__/graphics/icons/thorium-ore.png", icon_size = 64, icon_mipmaps = 3, scale = 0.17 }
thoriumLandfill.replaceIngredient("iron-ore", "thorium-ore")
thoriumLandfill.unlockedByTechnology("se-recycling-facility")
thoriumLandfill.apply()

-- Alternative glass recipe uses smelters and allows productivity
local glass = atom.util.Recipe("soda-lime-glass")
glass.prototype.category = "smelting"
glass.prototype.always_show_made_in = true
glass.allowProductivity()