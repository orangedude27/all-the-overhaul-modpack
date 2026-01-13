-- Balance solar
-- Set both in data and final-fixes because of 248k/scripts/krastorio2/overhaul.lua and solar productivity mod using data-updates phase
data.raw["solar-panel"]["el_solar_entity"].production = "200kW"

-- Technologies
local orePurification = atom.util.Technology("el_purifier_tech")
orePurification.addPrerequisite("steel-processing")
orePurification.replacePrerequisite("el_stage_tech", "electronics")
orePurification.removePrerequisite("logistic-science-pack")
data.raw.technology["el_stage_tech"] = nil

local metalCasting = atom.util.Technology("el_caster_tech")
metalCasting.replacePrerequisite("el_arc_furnace_tech", "el_purifier_tech")
metalCasting.addRecipe("el_arc_furnace_recipe")
data.raw.technology["el_arc_furnace_tech"] = nil

atom.util.Technology("fi_upgrade_tech").addIngredient("se-rocket-science-pack")

-- Link Black Hole/White Hole technologies to Star Engine tech
if data.raw.technology["gr_black_hole_tech"] and data.raw.technology["fu_star_engine_tech"] then
    atom.util.Technology("gr_black_hole_tech").addPrerequisite("fu_star_engine_tech")
end
if data.raw.technology["gr_white_hole_tech"] and data.raw.technology["fu_star_engine_tech"] then
    atom.util.Technology("gr_white_hole_tech").addPrerequisite("fu_star_engine_tech")
end