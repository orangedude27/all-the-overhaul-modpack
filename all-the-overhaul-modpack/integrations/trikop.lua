-- Change bismuth ammo to output rifle magazines
atom.util.Recipe("rifle-magazine-bismuth").assign({
    results = { { "rifle-magazine", 1 } },
    main_product = "rifle-magazine"
})
atom.util.Recipe("pistol-magazine-bismuth").assign({
    results = { { "firearm-magazine", 1 } },
    main_product = "firearm-magazine"
})

-- Merge PCB solder into solder from bztin
atom.util.Recipe("roboport").replaceIngredient("pcb-solder", "battery", 50)
atom.util.recipe.replaceIngredient("pcb-solder", "solder")
atom.util.recipe.replaceResult("pcb-solder", "solder")

local pcbSolder = atom.util.Recipe("pcb-solder")
pcbSolder.replaceIngredient("tin-plate", 3)
pcbSolder.replaceIngredient("bismuth-plate", 3)
pcbSolder.assign({
    localised_name = "Lead Free Solder",
    allow_as_intermediate = false
})

data.raw.technology["pcb-solder"].localised_name = "Lead free solder"
atom.util.item.removeByName("pcb-solder")

