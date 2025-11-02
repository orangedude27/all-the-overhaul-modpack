-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
data.raw["solar-panel"]["el_solar_entity"].production = "200kW"

-- Technologies
local orePurification = atom.util.Technology("el_purifier_tech")
orePurification.addPrerequisite("steel-processing")
orePurification.replacePrerequisite("el_stage_tech", "electronics")
orePurification.removePrerequisite("logistic-science-pack")
data.raw.technology["el_stage_tech"] = nil

atom.util.Technology("el_arc_furnace_tech").addPrerequisite("hardened-hull")