-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

-- 02
Recipe("5d-radar-02"):replace_ingredient("electronic-circuit", { "solder", 5 })
Recipe("5d-radar-02"):replace_ingredient("iron-gear-wheel", { "transceiver", 2 })
Recipe("5d-radar-02"):replace_ingredient("bakelite", { "silver-wire", 4 })
Recipe("5d-radar-02"):add_ingredient({ "steel-beam", 5 })
Recipe("5d-radar-02"):add_ingredient({ "rare-metals", 5 })
-- 03
Recipe("5d-radar-03"):replace_ingredient("electronic-circuit", { "solder", 5 })
Recipe("5d-radar-03"):replace_ingredient("iron-gear-wheel", { "transceiver", 2 })
Recipe("5d-radar-03"):replace_ingredient("bakelite", { "hv-power-regulator", 1 })
Recipe("5d-radar-03"):add_ingredient({ "steel-beam", 5 })
Recipe("5d-radar-03"):add_ingredient({ "cooling-fan", 1 })
Recipe("5d-radar-03"):add_ingredient({ "titanium-plate", 5 })
-- 04
Recipe("5d-radar-04"):replace_ingredient("electronic-circuit", { "solder", 5 })
Recipe("5d-radar-04"):replace_ingredient("iron-gear-wheel", { "scanner", 2 })
Recipe("5d-radar-04"):replace_ingredient("bakelite", { "hv-power-regulator", 1 })
Recipe("5d-radar-04"):add_ingredient({ "steel-beam", 5 })
Recipe("5d-radar-04"):add_ingredient({ "cooling-fan", 1 })
Recipe("5d-radar-04"):add_ingredient({ "nitinol-plate", 5 })
-- 05
Recipe("5d-radar-05"):replace_ingredient("advanced-circuit", { "solder", 5 })
Recipe("5d-radar-05"):replace_ingredient("iron-gear-wheel", { "scanner", 2 })
Recipe("5d-radar-05"):replace_ingredient("bakelite", { "hv-power-regulator", 1 })
Recipe("5d-radar-05"):add_ingredient({ "steel-beam", 5 })
Recipe("5d-radar-05"):add_ingredient({ "cobalt-carbide", 2 })
Recipe("5d-radar-05"):add_ingredient({ "nitinol-plate", 5 })
-- 06
Recipe("5d-radar-06"):replace_ingredient("advanced-circuit", { "solder", 5 })
Recipe("5d-radar-06"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-06"):replace_ingredient("steel-plate", { "hv-power-regulator", 1 })
Recipe("5d-radar-06"):add_ingredient({ "imersium-beam", 5 })
Recipe("5d-radar-06"):add_ingredient({ "cobalt-carbide", 2 })
Recipe("5d-radar-06"):add_ingredient({ "imersium-plate", 5 })
-- 07
Recipe("5d-radar-07"):replace_ingredient("advanced-circuit", { "solder", 5 })
Recipe("5d-radar-07"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-07"):replace_ingredient("steel-plate", { "hv-power-regulator", 1 })
Recipe("5d-radar-07"):add_ingredient({ "imersium-beam", 5 })
Recipe("5d-radar-07"):add_ingredient({ "se-aeroframe-pole", 2 })
Recipe("5d-radar-07"):add_ingredient({ "imersium-plate", 5 })
-- 08
Recipe("5d-radar-08"):replace_ingredient("processing-unit", { "solder", 5 })
Recipe("5d-radar-08"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-08"):replace_ingredient("steel-plate", { "hv-power-regulator", 1 })
Recipe("5d-radar-08"):add_ingredient({ "imersium-beam", 5 })
Recipe("5d-radar-08"):add_ingredient({ "se-aeroframe-pole", 2 })
Recipe("5d-radar-08"):add_ingredient({ "se-aeroframe-scaffold", 5 })
-- 09
Recipe("5d-radar-09"):replace_ingredient("processing-unit", { "solder", 5 })
Recipe("5d-radar-09"):replace_ingredient("iron-gear-wheel", { "tracker", 2 })
Recipe("5d-radar-09"):replace_ingredient("low-density-structure", { "hv-power-regulator", 1 })
Recipe("5d-radar-09"):replace_ingredient("steel-plate", { "imersium-beam", 5 })
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

local util = require("_data-util")

-- 02
data.raw.technology["5d-radars-1"].unit.count = 200
util.tech_remove_prerequisites("5d-radars-1", {"logistic-science-pack"})
util.tech_add_prerequisites("5d-radars-1",{"kr-radar", "military-science-pack"})
util.tech_add_ingredients("5d-radars-1",{"military-science-pack"},false)
-- 03
data.raw.technology["5d-radars-2"].unit.count = 300
util.tech_remove_prerequisites("5d-radars-2", {"military-science-pack"})
util.tech_add_prerequisites("5d-radars-2",{"titanium-processing"})
util.tech_add_ingredients("5d-radars-2",{"chemical-science-pack"},false)
-- 04
data.raw.technology["5d-radars-3"].unit.count = 400
util.tech_add_prerequisites("5d-radars-3","nitinol-processing")
util.tech_add_ingredients("5d-radars-3",{"chemical-science-pack", "se-rocket-science-pack"},false)
-- 05
data.raw.technology["5d-radars-4"].unit.count = 500
util.tech_remove_prerequisites("5d-radars-4", {"chemical-science-pack"})
util.tech_add_prerequisites("5d-radars-4",{"cobalt-carbide"})
util.tech_add_ingredients("5d-radars-4",{"se-rocket-science-pack","space-science-pack"},false)
-- 06
data.raw.technology["5d-radars-5"].unit.count = 600
util.tech_add_prerequisites("5d-radars-5",{"kr-imersium-processing"})
-- 07
data.raw.technology["5d-radars-6"].unit.count = 700
util.tech_add_prerequisites("5d-radars-6",{"se-aeroframe-pole"})
util.tech_remove_ingredients("5d-radars-6", {"se-material-science-pack-1","production-science-pack"})
util.tech_add_ingredients("5d-radars-6",{"utility-science-pack","se-astronomic-science-pack-1"},false)
-- 08
data.raw.technology["5d-radars-7"].unit.count = 800
util.tech_remove_prerequisites("5d-radars-7", {"utility-science-pack"})
util.tech_add_prerequisites("5d-radars-7",{"se-aeroframe-scaffold"})
util.tech_remove_ingredients("5d-radars-7", {"se-material-science-pack-2","production-science-pack"})
util.tech_add_ingredients("5d-radars-7",{"se-astronomic-science-pack-2"},false)
-- 09
data.raw.technology["5d-radars-8"].unit.count = 900
util.tech_add_prerequisites("5d-radars-8",{"se-aeroframe-bulkhead"})
util.tech_remove_ingredients("5d-radars-8", {"se-material-science-pack-3","production-science-pack"})
util.tech_add_ingredients("5d-radars-8",{"se-astronomic-science-pack-3"},false)
-- 10
data.raw.technology["5d-radars-9"].unit.count = 1000
util.tech_add_prerequisites("5d-radars-9","se-nanomaterial")
util.tech_add_ingredients("5d-radars-9",{"se-biological-science-pack-4","se-energy-science-pack-4","se-astronomic-science-pack-4"},false)