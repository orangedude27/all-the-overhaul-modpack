-- These are alloys to reduce usage of the main ores. The recipes result in only the main metal.

-- Creates an alloy recipe turning two metals ingots into a molten alloy.
-- The recipe uses 80% of the main metal and 20% of the secondary metal.
-- @param mainMetal The main metal config (from atom.processing.materials)
-- @param secondaryMetal The secondary metal config (from atom.processing.materials)
function createAlloy(mainMetal, secondaryMetal)
    local recipe = atom.util.Recipe({
        type = "recipe",
        name = "atom-" .. mainMetal.name .. "-" .. secondaryMetal.name .. "-molten",
        icons = {
            mainMetal.icons.molten,
            atom.util.icon.createSmallIcon(mainMetal.icons.ingot, "top-left"),
            atom.util.icon.createSmallIcon(secondaryMetal.icons.ingot, "top-right")
        },
        category = "el_arc_furnace_category",
        energy_required = 16,
        ingredients = {
            { name = mainMetal.itemNames.ingot, amount = 4 },
            { name = secondaryMetal.itemNames.ingot, amount = 1 },
            { type = "fluid", name = "se-pyroflux", amount = 0.625 }
        },
        results = {
            { type = "fluid", name = mainMetal.itemNames.molten, amount = 1000 },
        },
        subgroup = mainMetal.subgroup,
        enabled = false
    })
    recipe.unlockedByTechnology(mainMetal.unlockedBy.ingotToMolten or "atom-advanced-ore-processing-2")
    recipe.apply()
end


createAlloy(atom.processing.materials.copper, atom.processing.materials.tungsten)
createAlloy(atom.processing.materials.iron, atom.processing.materials.chromium)
createAlloy(atom.processing.materials.tin, atom.processing.materials.nickel)