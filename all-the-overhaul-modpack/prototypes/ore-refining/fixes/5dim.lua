local util = require("data-util")

-- Remove ore to dust recipes
removeRecipesByPattern("5d%-%a+%-dust")

-- Remove smelting of dust to plate recipes
removeRecipesByPattern("5d%-%a+%-plate")

-- Nerf electrical furnace mk2 to speed of 3, make it available with productivity science pack on Nauvis
data.raw["assembling-machine"]["5d-electric-furnace-02"].crafting_speed = 3
util.tech_add_ingredients("advanced-material-processing-3", { "productivity-science-pack" })