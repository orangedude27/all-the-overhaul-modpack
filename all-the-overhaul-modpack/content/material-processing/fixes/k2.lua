-- Remove enriched to plate recipes
atom.util.recipe.removeByNamePattern("^enriched%-%a+%-plate$")
atom.util.recipe.removeByName("enriched-copper")
atom.util.recipe.removeByName("rare-metals")
atom.util.recipe.removeByName("rare-metals-2")
atom.util.recipe.removeByName("enriched-rare-metals")

table.insert(data.raw["assembling-machine"]["kr-advanced-furnace"].crafting_categories, "el_arc_furnace_category")