require("electric-furnace")
require("assembler")
require("masher")
require("chemical-plant")
require("oil-refinery")
require("turrets")
require("radar")
require("centrifuge")
require("nuclear")

data.raw["lab"]["fu_lab-spaced"].localised_name = { "entity-name." .. data.raw["lab"]["fu_lab"].name }


atom.util.recipe.removeByName("5d-iron-plate-industrial")
atom.util.recipe.removeByName("5d-iron-plate-industrial-dust")
atom.util.recipe.removeByName("5d-copper-plate-industrial")
atom.util.recipe.removeByName("5d-copper-plate-industrial-dust")
atom.util.recipe.removeByName("5d-steel-plate-industrial")
atom.util.recipe.removeByName("5d-industrial-furnace")
data.raw.technology["advanced-material-processing-12"] = nil