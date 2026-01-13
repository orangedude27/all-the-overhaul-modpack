-- Recipes

local Recipe = require('__jalm__/stdlib/data/recipe')

-- 02
Recipe("5d-radar-02"):replace_ingredient("electronic-circuit", { "solder", 5 })
Recipe("5d-radar-02"):replace_ingredient("iron-gear-wheel", { "transceiver", 2 })
Recipe("5d-radar-02"):replace_ingredient("bakelite", { "silver-wire", 4 })
Recipe("5d-radar-02"):add_ingredient({ "kr-steel-beam", 5 })
Recipe("5d-radar-02"):add_ingredient({ "kr-rare-metals", 5 })
-- 03
Recipe("5d-radar-03"):replace_ingredient("electronic-circuit", { "solder", 5 })
Recipe("5d-radar-03"):replace_ingredient("iron-gear-wheel", { "transceiver", 2 })
Recipe("5d-radar-03"):replace_ingredient("bakelite", { "hv-power-regulator", 1 })
Recipe("5d-radar-03"):add_ingredient({ "kr-steel-beam", 5 })
Recipe("5d-radar-03"):add_ingredient({ "cooling-fan", 1 })
Recipe("5d-radar-03"):add_ingredient({ "titanium-plate", 5 })
-- 04
Recipe("5d-radar-04"):replace_ingredient("electronic-circuit", { "solder", 5 })
Recipe("5d-radar-04"):replace_ingredient("iron-gear-wheel", { "scanner", 2 })
Recipe("5d-radar-04"):replace_ingredient("bakelite", { "hv-power-regulator", 1 })
Recipe("5d-radar-04"):add_ingredient({ "kr-steel-beam", 5 })
Recipe("5d-radar-04"):add_ingredient({ "cooling-fan", 1 })
Recipe("5d-radar-04"):add_ingredient({ "nitinol-plate", 5 })
-- 05
Recipe("5d-radar-05"):replace_ingredient("advanced-circuit", { "solder", 5 })
Recipe("5d-radar-05"):replace_ingredient("iron-gear-wheel", { "scanner", 2 })
Recipe("5d-radar-05"):replace_ingredient("bakelite", { "hv-power-regulator", 1 })
Recipe("5d-radar-05"):add_ingredient({ "kr-steel-beam", 5 })
Recipe("5d-radar-05"):add_ingredient({ "cobalt-carbide", 2 })
Recipe("5d-radar-05"):add_ingredient({ "nitinol-plate", 5 })
-- 06
Recipe("5d-radar-06"):replace_ingredient("advanced-circuit", { "solder", 5 })
Recipe("5d-radar-06"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-06"):replace_ingredient("steel-plate", { "hv-power-regulator", 1 })
Recipe("5d-radar-06"):add_ingredient({ "kr-imersium-beam", 5 })
Recipe("5d-radar-06"):add_ingredient({ "cobalt-carbide", 2 })
Recipe("5d-radar-06"):add_ingredient({ "kr-imersium-plate", 5 })
-- 07
Recipe("5d-radar-07"):replace_ingredient("advanced-circuit", { "solder", 5 })
Recipe("5d-radar-07"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-07"):replace_ingredient("steel-plate", { "hv-power-regulator", 1 })
Recipe("5d-radar-07"):add_ingredient({ "kr-imersium-beam", 5 })
Recipe("5d-radar-07"):add_ingredient({ "se-aeroframe-pole", 2 })
Recipe("5d-radar-07"):add_ingredient({ "kr-imersium-plate", 5 })
-- 08
Recipe("5d-radar-08"):replace_ingredient("processing-unit", { "solder", 5 })
Recipe("5d-radar-08"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-08"):replace_ingredient("steel-plate", { "hv-power-regulator", 1 })
Recipe("5d-radar-08"):add_ingredient({ "kr-imersium-beam", 5 })
Recipe("5d-radar-08"):add_ingredient({ "se-aeroframe-pole", 2 })
Recipe("5d-radar-08"):add_ingredient({ "se-aeroframe-scaffold", 5 })
-- 09
Recipe("5d-radar-09"):replace_ingredient("processing-unit", { "solder", 5 })
Recipe("5d-radar-09"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-09"):replace_ingredient("low-density-structure", { "hv-power-regulator", 1 })
Recipe("5d-radar-09"):replace_ingredient("steel-plate", { "kr-imersium-beam", 5 })
Recipe("5d-radar-09"):add_ingredient({ "se-aeroframe-pole", 2 })
Recipe("5d-radar-09"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
-- 10
Recipe("5d-radar-10"):replace_ingredient("processing-unit", { "solder", 5 })
Recipe("5d-radar-10"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-10"):replace_ingredient("low-density-structure", { "hv-power-regulator", 1 })
Recipe("5d-radar-10"):replace_ingredient("steel-plate", { "se-nanomaterial", 5 })
Recipe("5d-radar-10"):add_ingredient({ "se-aeroframe-pole", 2 })
Recipe("5d-radar-10"):add_ingredient({ "se-aeroframe-bulkhead", 5 })

-- K2
-- Remove advanced radar
bobmods.lib.recipe.hide("kr-advanced-radar")


-- Technologies

-- 02
data.raw.technology["5d-radars-1"].unit.count = 200
atom.util.Technology("5d-radars-1").removePrerequisite({ "logistic-science-pack" })
atom.util.Technology("5d-radars-1").addPrerequisite({ "kr-radar", "military-science-pack" })
atom.util.Technology("5d-radars-1").addIngredient({ "military-science-pack" })
-- 03
data.raw.technology["5d-radars-2"].unit.count = 300
atom.util.Technology("5d-radars-2").removePrerequisite({ "military-science-pack" })
atom.util.Technology("5d-radars-2").addPrerequisite({ "titanium-processing" })
atom.util.Technology("5d-radars-2").addIngredient({ "chemical-science-pack" })
-- 04
data.raw.technology["5d-radars-3"].unit.count = 400
atom.util.Technology("5d-radars-3").addPrerequisite("nitinol-processing")
atom.util.Technology("5d-radars-3").addIngredient({ "chemical-science-pack", "se-rocket-science-pack" })
-- 05
data.raw.technology["5d-radars-4"].unit.count = 500
atom.util.Technology("5d-radars-4").removePrerequisite({ "chemical-science-pack" })
atom.util.Technology("5d-radars-4").addPrerequisite({ "cobalt-carbide" })
atom.util.Technology("5d-radars-4").addIngredient({ "se-rocket-science-pack", "space-science-pack" })
-- 06
data.raw.technology["5d-radars-5"].unit.count = 600
atom.util.Technology("5d-radars-5").addPrerequisite({ "kr-imersium-processing" })
-- 07
data.raw.technology["5d-radars-6"].unit.count = 700
atom.util.Technology("5d-radars-6").addPrerequisite({ "se-aeroframe-pole" })
atom.util.Technology("5d-radars-6").removeIngredient({ "se-material-science-pack-1", "production-science-pack" })
atom.util.Technology("5d-radars-6").addIngredient({ "utility-science-pack", "se-astronomic-science-pack-1" })
-- 08
data.raw.technology["5d-radars-7"].unit.count = 800
atom.util.Technology("5d-radars-7").removePrerequisite({ "utility-science-pack" })
atom.util.Technology("5d-radars-7").addPrerequisite({ "se-aeroframe-scaffold" })
atom.util.Technology("5d-radars-7").removeIngredient({ "se-material-science-pack-2", "production-science-pack" })
atom.util.Technology("5d-radars-7").addIngredient({ "se-astronomic-science-pack-2" })
-- 09
data.raw.technology["5d-radars-8"].unit.count = 900
atom.util.Technology("5d-radars-8").addPrerequisite({ "se-aeroframe-bulkhead" })
atom.util.Technology("5d-radars-8").removeIngredient({ "se-material-science-pack-3", "production-science-pack" })
atom.util.Technology("5d-radars-8").addIngredient({ "se-astronomic-science-pack-3" })
-- 10
data.raw.technology["5d-radars-9"].unit.count = 1000
atom.util.Technology("5d-radars-9").addPrerequisite("se-nanomaterial")
atom.util.Technology("5d-radars-9").addIngredient({ "se-biological-science-pack-4", "se-energy-science-pack-4", "se-astronomic-science-pack-4" })