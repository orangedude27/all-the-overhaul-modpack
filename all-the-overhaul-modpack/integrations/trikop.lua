-- Change bismuth ammo to output rifle magazines
if settings.startup["kr-realistic-weapons"].value then
    atom.util.Recipe("rifle-magazine-bismuth").assign({
        localised_name = { "item-name.kr-rifle-magazine" },
        results = { { type = "item", name = "kr-rifle-magazine", amount = 1 } },
        main_product = "kr-rifle-magazine"
    })
end
atom.util.Recipe("pistol-magazine-bismuth").assign({
    results = { { type = "item", name = "firearm-magazine", amount = 1 } },
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
atom.util.item.removeByName("pcb-solder")

atom.util.Technology("fast-inserter").removePrerequisite("pcb-solder")
atom.util.Technology("logistic-science-pack").removePrerequisite("pcb-solder")
local pcbSolderTech = atom.util.Technology("pcb-solder")
pcbSolderTech.assign({
    localised_name = "Lead free solder",
    prerequisites = { "chemical-science-pack" }
})
pcbSolderTech.addIngredient("chemical-science-pack")