-- Alternative recipe for potassium nitrate with sand instead of stone
local potassiumNitrate = atom.util.Recipe(table.deepcopy(data.raw.recipe["potassium-nitrate"]))
potassiumNitrate.prototype.name = "potassium-nitrate-sand"
potassiumNitrate.prototype.localised_name = { "item-name.potassium-nitrate" }
potassiumNitrate.prototype.icons = {
    { icon = "__BrimStuff-Updated__/graphics/icons/potassium-nitrate.png", icon_size = 64 },
    atom.util.icon.createSmallIcon(atom.processing.materials.stone.icons.sand)
}
potassiumNitrate.replaceIngredient("stone", "kr-sand", 5)
potassiumNitrate.allowProductivity()
potassiumNitrate.unlockedByTechnology("basic-chemistry")
potassiumNitrate.apply()

data.raw.recipe["potassium-nitrate"].icons = {
    { icon = "__BrimStuff-Updated__/graphics/icons/potassium-nitrate.png", icon_size = 64 },
    atom.util.icon.createSmallIcon(atom.processing.materials.stone.icons.ore)
}