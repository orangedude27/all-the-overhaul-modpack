-- Remove ore to dust recipes
atom.util.recipe.removeByNamePattern("^5d%-%a+%-dust")

-- Remove smelting of dust to plate recipes
atom.util.recipe.removeByNamePattern("^5d%-%a+%-plate")