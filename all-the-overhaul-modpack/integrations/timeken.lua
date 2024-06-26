-- Recipe balancing

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