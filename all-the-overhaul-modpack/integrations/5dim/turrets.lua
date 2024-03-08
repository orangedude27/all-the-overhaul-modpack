-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

-- Base turret
-- 02
Recipe("5d-gun-turret-02"):replace_ingredient("iron-plate", { "steel-plate", 8 })
Recipe("5d-gun-turret-02"):replace_ingredient("copper-plate", { "lead-plate", 4 })
Recipe("5d-gun-turret-02"):replace_ingredient("iron-gear-wheel", { "flywheel", 2 })
-- 03
Recipe("5d-gun-turret-03"):replace_ingredient("iron-plate", { "hardened-hull", 8 })
Recipe("5d-gun-turret-03"):replace_ingredient("copper-plate", { "lead-plate", 4 })
Recipe("5d-gun-turret-03"):replace_ingredient("iron-gear-wheel", { "flywheel", 2 })
-- 04
Recipe("5d-gun-turret-04"):replace_ingredient("iron-plate", { "tungsten-plate", 8 })
Recipe("5d-gun-turret-04"):replace_ingredient("copper-plate", { "lead-plate", 4 })
Recipe("5d-gun-turret-04"):replace_ingredient("iron-gear-wheel", { "flywheel", 2 })
-- 05
Recipe("5d-gun-turret-05"):replace_ingredient("iron-plate", { "tungsten-plate", 8 })
Recipe("5d-gun-turret-05"):replace_ingredient("copper-plate", { "zirconium-plate", 4 })
Recipe("5d-gun-turret-05"):replace_ingredient("iron-gear-wheel", { "flywheel", 2 })
-- 06
Recipe("5d-gun-turret-06"):replace_ingredient("iron-plate", { "titanium-plate", 8 })
Recipe("5d-gun-turret-06"):replace_ingredient("copper-plate", { "zirconium-plate", 4 })
Recipe("5d-gun-turret-06"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 2 })
-- 07
Recipe("5d-gun-turret-07"):replace_ingredient("iron-plate", { "nitinol-plate", 8 })
Recipe("5d-gun-turret-07"):replace_ingredient("copper-plate", { "zirconium-plate", 4 })
Recipe("5d-gun-turret-07"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 2 })
-- 08
Recipe("5d-gun-turret-08"):replace_ingredient("iron-plate", { "imersium-plate", 8 })
Recipe("5d-gun-turret-08"):replace_ingredient("copper-plate", { "zirconium-plate", 4 })
Recipe("5d-gun-turret-08"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 2 })
-- 09
Recipe("5d-gun-turret-09"):replace_ingredient("iron-plate", { "se-iridium-plate", 8 })
Recipe("5d-gun-turret-09"):replace_ingredient("copper-plate", { "zirconium-plate", 4 })
Recipe("5d-gun-turret-09"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 2 })
-- 10
Recipe("5d-gun-turret-10"):replace_ingredient("iron-plate", { "se-heavy-girder", 8 })
Recipe("5d-gun-turret-10"):replace_ingredient("copper-plate", { "zirconium-plate", 4 })
Recipe("5d-gun-turret-10"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 2 })
-- Small turret
-- 01
Recipe("5d-gun-turret-small-01"):replace_ingredient("iron-gear-wheel", { "flywheel", 4 })
Recipe("5d-gun-turret-small-01"):replace_ingredient("iron-plate", { "nickel-plate", 3 })
Recipe("5d-gun-turret-small-01"):replace_ingredient("copper-plate", { "lead-plate", 2 })
Recipe("5d-gun-turret-small-01"):add_ingredient({ "turret-base", 1 })
-- 02
Recipe("5d-gun-turret-small-02"):replace_ingredient("iron-plate", { "steel-plate", 4 })
Recipe("5d-gun-turret-small-02"):replace_ingredient("copper-plate", { "lead-plate", 2 })
Recipe("5d-gun-turret-small-02"):replace_ingredient("iron-gear-wheel", { "flywheel", 4 })
-- 03
Recipe("5d-gun-turret-small-03"):replace_ingredient("iron-plate", { "hardened-hull", 4 })
Recipe("5d-gun-turret-small-03"):replace_ingredient("copper-plate", { "lead-plate", 2 })
Recipe("5d-gun-turret-small-03"):replace_ingredient("iron-gear-wheel", { "flywheel", 4 })
-- 04
Recipe("5d-gun-turret-small-04"):replace_ingredient("iron-plate", { "tungsten-plate", 4 })
Recipe("5d-gun-turret-small-04"):replace_ingredient("copper-plate", { "lead-plate", 2 })
Recipe("5d-gun-turret-small-04"):replace_ingredient("iron-gear-wheel", { "flywheel", 4 })
-- 05
Recipe("5d-gun-turret-small-05"):replace_ingredient("iron-plate", { "tungsten-plate", 4 })
Recipe("5d-gun-turret-small-05"):replace_ingredient("copper-plate", { "zirconium-plate", 2 })
Recipe("5d-gun-turret-small-05"):replace_ingredient("iron-gear-wheel", { "flywheel", 4 })
-- 06
Recipe("5d-gun-turret-small-06"):replace_ingredient("iron-plate", { "titanium-plate", 4 })
Recipe("5d-gun-turret-small-06"):replace_ingredient("copper-plate", { "zirconium-plate", 2 })
Recipe("5d-gun-turret-small-06"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 4 })
-- 07
Recipe("5d-gun-turret-small-07"):replace_ingredient("iron-plate", { "nitinol-plate", 4 })
Recipe("5d-gun-turret-small-07"):replace_ingredient("copper-plate", { "zirconium-plate", 2 })
Recipe("5d-gun-turret-small-07"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 4 })
-- 08
Recipe("5d-gun-turret-small-08"):replace_ingredient("iron-plate", { "imersium-plate", 4 })
Recipe("5d-gun-turret-small-08"):replace_ingredient("copper-plate", { "zirconium-plate", 2 })
Recipe("5d-gun-turret-small-08"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
-- 09
Recipe("5d-gun-turret-small-09"):replace_ingredient("iron-plate", { "se-iridium-plate", 4 })
Recipe("5d-gun-turret-small-09"):replace_ingredient("copper-plate", { "zirconium-plate", 2 })
Recipe("5d-gun-turret-small-09"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
-- 10
Recipe("5d-gun-turret-small-10"):replace_ingredient("iron-plate", { "se-heavy-girder", 4 })
Recipe("5d-gun-turret-small-10"):replace_ingredient("copper-plate", { "zirconium-plate", 2 })
Recipe("5d-gun-turret-small-10"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
-- Big turret
-- 01
Recipe("5d-gun-turret-big-01"):replace_ingredient("iron-gear-wheel", { "flywheel", 1 })
Recipe("5d-gun-turret-big-01"):replace_ingredient("iron-plate", { "nickel-plate", 12 })
Recipe("5d-gun-turret-big-01"):replace_ingredient("copper-plate", { "lead-plate", 8 })
Recipe("5d-gun-turret-big-01"):add_ingredient({ "turret-base", 1 })
-- 02
Recipe("5d-gun-turret-big-02"):replace_ingredient("iron-plate", { "steel-plate", 16 })
Recipe("5d-gun-turret-big-02"):replace_ingredient("copper-plate", { "lead-plate", 8 })
Recipe("5d-gun-turret-big-02"):replace_ingredient("iron-gear-wheel", { "flywheel", 1 })
-- 03
Recipe("5d-gun-turret-big-03"):replace_ingredient("iron-plate", { "hardened-hull", 16 })
Recipe("5d-gun-turret-big-03"):replace_ingredient("copper-plate", { "lead-plate", 8 })
Recipe("5d-gun-turret-big-03"):replace_ingredient("iron-gear-wheel", { "flywheel", 1 })
-- 04
Recipe("5d-gun-turret-big-04"):replace_ingredient("iron-plate", { "tungsten-plate", 16 })
Recipe("5d-gun-turret-big-04"):replace_ingredient("copper-plate", { "lead-plate", 8 })
Recipe("5d-gun-turret-big-04"):replace_ingredient("iron-gear-wheel", { "flywheel", 1 })
-- 05
Recipe("5d-gun-turret-big-05"):replace_ingredient("iron-plate", { "tungsten-plate", 16 })
Recipe("5d-gun-turret-big-05"):replace_ingredient("copper-plate", { "zirconium-plate", 8 })
Recipe("5d-gun-turret-big-05"):replace_ingredient("iron-gear-wheel", { "flywheel", 1 })
-- 06
Recipe("5d-gun-turret-big-06"):replace_ingredient("iron-plate", { "titanium-plate", 16 })
Recipe("5d-gun-turret-big-06"):replace_ingredient("copper-plate", { "zirconium-plate", 8 })
Recipe("5d-gun-turret-big-06"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 1 })
-- 07
Recipe("5d-gun-turret-big-07"):replace_ingredient("iron-plate", { "nitinol-plate", 16 })
Recipe("5d-gun-turret-big-07"):replace_ingredient("copper-plate", { "zirconium-plate", 8 })
Recipe("5d-gun-turret-big-07"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 1 })
-- 08
Recipe("5d-gun-turret-big-08"):replace_ingredient("iron-plate", { "imersium-plate", 16 })
Recipe("5d-gun-turret-big-08"):replace_ingredient("copper-plate", { "zirconium-plate", 8 })
Recipe("5d-gun-turret-big-08"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 1 })
-- 09
Recipe("5d-gun-turret-big-09"):replace_ingredient("iron-plate", { "se-iridium-plate", 16 })
Recipe("5d-gun-turret-big-09"):replace_ingredient("copper-plate", { "zirconium-plate", 8 })
Recipe("5d-gun-turret-big-09"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 1 })
-- 10
Recipe("5d-gun-turret-big-10"):replace_ingredient("iron-plate", { "se-heavy-girder", 16 })
Recipe("5d-gun-turret-big-10"):replace_ingredient("copper-plate", { "zirconium-plate", 8 })
Recipe("5d-gun-turret-big-10"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 1 })
-- Sniper turret
-- 01
Recipe("5d-gun-turret-sniper-01"):replace_ingredient("steel-plate", { "tungsten-plate", 16 })
Recipe("5d-gun-turret-sniper-01"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 4 })
Recipe("5d-gun-turret-sniper-01"):add_ingredient({ "turret-base", 1 })
-- 02
Recipe("5d-gun-turret-sniper-02"):replace_ingredient("steel-plate", { "titanium-plate", 16 })
Recipe("5d-gun-turret-sniper-02"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 4 })
-- 03
Recipe("5d-gun-turret-sniper-03"):replace_ingredient("steel-plate", { "nitinol-plate", 16 })
Recipe("5d-gun-turret-sniper-03"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 4 })
-- 04
Recipe("5d-gun-turret-sniper-04"):replace_ingredient("steel-plate", { "nitinol-plate", 16 })
Recipe("5d-gun-turret-sniper-04"):replace_ingredient("iron-gear-wheel", { "steel-gear-wheel", 4 })
Recipe("5d-gun-turret-sniper-04"):replace_ingredient("electronic-circuit", { "advanced-circuit", 6 })
Recipe("5d-gun-turret-sniper-04"):add_ingredient({ "cobalt-carbide", 4 })
-- 05
Recipe("5d-gun-turret-sniper-05"):replace_ingredient("steel-plate", { "imersium-plate", 16 })
Recipe("5d-gun-turret-sniper-05"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
Recipe("5d-gun-turret-sniper-05"):replace_ingredient("electronic-circuit", { "advanced-circuit", 6 })
Recipe("5d-gun-turret-sniper-05"):add_ingredient({ "imersium-beam", 4 })
-- 06
Recipe("5d-gun-turret-sniper-06"):replace_ingredient("steel-plate", { "se-iridium-plate", 16 })
Recipe("5d-gun-turret-sniper-06"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
Recipe("5d-gun-turret-sniper-06"):replace_ingredient("electronic-circuit", { "advanced-circuit", 6 })
Recipe("5d-gun-turret-sniper-06"):add_ingredient({ "imersium-beam", 4 })
-- 07
Recipe("5d-gun-turret-sniper-07"):replace_ingredient("steel-plate", { "se-iridium-plate", 16 })
Recipe("5d-gun-turret-sniper-07"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
Recipe("5d-gun-turret-sniper-07"):replace_ingredient("electronic-circuit", { "processing-unit", 6 })
Recipe("5d-gun-turret-sniper-07"):add_ingredient({ "se-heavy-girder", 4 })
-- 08
Recipe("5d-gun-turret-sniper-08"):replace_ingredient("steel-plate", { "se-iridium-plate", 16 })
Recipe("5d-gun-turret-sniper-08"):replace_ingredient("iron-gear-wheel", { "se-heavy-bearing", 4 })
Recipe("5d-gun-turret-sniper-08"):replace_ingredient("electronic-circuit", { "processing-unit", 6 })
Recipe("5d-gun-turret-sniper-08"):add_ingredient({ "se-heavy-girder", 4 })
-- 09
Recipe("5d-gun-turret-sniper-09"):replace_ingredient("steel-plate", { "se-heavy-composite", 8 })
Recipe("5d-gun-turret-sniper-09"):replace_ingredient("iron-gear-wheel", { "se-heavy-bearing", 4 })
Recipe("5d-gun-turret-sniper-09"):replace_ingredient("electronic-circuit", { "processing-unit", 6 })
Recipe("5d-gun-turret-sniper-09"):add_ingredient({ "se-heavy-girder", 4 })
-- 10
Recipe("5d-gun-turret-sniper-10"):replace_ingredient("steel-plate", { "se-heavy-composite", 8 })
Recipe("5d-gun-turret-sniper-10"):replace_ingredient("iron-gear-wheel", { "se-heavy-assembly", 4 })
Recipe("5d-gun-turret-sniper-10"):replace_ingredient("electronic-circuit", { "processing-unit", 6 })
Recipe("5d-gun-turret-sniper-10"):add_ingredient({ "se-heavy-girder", 4 })
-- Flamethrower turret
-- 02
Recipe("5d-flamethrower-turret-02"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-02"):replace_ingredient("engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-02"):replace_ingredient("pipe", { "kr-steel-pipe", 10 })
Recipe("5d-flamethrower-turret-02"):replace_ingredient("steel-plate", { "titanium-plate", 20 })
Recipe("5d-flamethrower-turret-02"):add_ingredient({ "invar-plate", 10 })
Recipe("5d-flamethrower-turret-02"):add_ingredient({ "cuw", 5 })
-- 03
Recipe("5d-flamethrower-turret-03"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-03"):replace_ingredient("engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-03"):replace_ingredient("pipe", { "kr-steel-pipe", 10 })
Recipe("5d-flamethrower-turret-03"):replace_ingredient("steel-plate", { "nitinol-plate", 20 })
Recipe("5d-flamethrower-turret-03"):add_ingredient({ "invar-plate", 10 })
Recipe("5d-flamethrower-turret-03"):add_ingredient({ "cuw", 5 })
-- 04
Recipe("5d-flamethrower-turret-04"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-04"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-04"):replace_ingredient("pipe", { "kr-steel-pipe", 10 })
Recipe("5d-flamethrower-turret-04"):replace_ingredient("steel-plate", { "nitinol-plate", 20 })
Recipe("5d-flamethrower-turret-04"):add_ingredient({ "invar-plate", 10 })
Recipe("5d-flamethrower-turret-04"):add_ingredient({ "cobalt-carbide", 5 })
-- 05
Recipe("5d-flamethrower-turret-05"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-05"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-05"):replace_ingredient("pipe", { "kr-steel-pipe", 10 })
Recipe("5d-flamethrower-turret-05"):replace_ingredient("steel-plate", { "imersium-plate", 20 })
Recipe("5d-flamethrower-turret-05"):replace_ingredient("advanced-circuit", { "invar-plate", 10 })
Recipe("5d-flamethrower-turret-05"):add_ingredient({ "cobalt-carbide", 5 })
-- 06
Recipe("5d-flamethrower-turret-06"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-06"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-06"):replace_ingredient("pipe", { "brass-pipe", 10 })
Recipe("5d-flamethrower-turret-06"):replace_ingredient("steel-plate", { "se-iridium-plate", 20 })
Recipe("5d-flamethrower-turret-06"):replace_ingredient("advanced-circuit", { "invar-plate", 10 })
Recipe("5d-flamethrower-turret-06"):add_ingredient({ "cobalt-carbide", 5 })
-- 07
Recipe("5d-flamethrower-turret-07"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-07"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-07"):replace_ingredient("pipe", { "brass-pipe", 10 })
Recipe("5d-flamethrower-turret-07"):replace_ingredient("steel-plate", { "se-iridium-plate", 20 })
Recipe("5d-flamethrower-turret-07"):replace_ingredient("advanced-circuit", { "invar-plate", 10 })
Recipe("5d-flamethrower-turret-07"):add_ingredient({ "se-bioscrubber", 5 })
-- 08
Recipe("5d-flamethrower-turret-08"):replace_ingredient("iron-gear-wheel", { "spark-plug", 1 })
Recipe("5d-flamethrower-turret-08"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-08"):replace_ingredient("pipe", { "brass-pipe", 10 })
Recipe("5d-flamethrower-turret-08"):replace_ingredient("low-density-structure", { "se-iridium-plate", 20 })
Recipe("5d-flamethrower-turret-08"):replace_ingredient("advanced-circuit", { "invar-plate", 10 })
Recipe("5d-flamethrower-turret-08"):add_ingredient({ "se-vitalic-reagent", 5 })
-- 09
Recipe("5d-flamethrower-turret-09"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-09"):replace_ingredient("pipe", { "brass-pipe", 10 })
Recipe("5d-flamethrower-turret-09"):replace_ingredient("low-density-structure", { "se-iridium-plate", 20 })
Recipe("5d-flamethrower-turret-09"):replace_ingredient("processing-unit", { "invar-plate", 10 })
Recipe("5d-flamethrower-turret-09"):add_ingredient({ "se-vitalic-epoxy", 5 })
Recipe("5d-flamethrower-turret-09"):add_ingredient({ "spark-plug", 1 })
-- 10
Recipe("5d-flamethrower-turret-10"):replace_ingredient("electric-engine-unit", { "advanced-multi-cylinder-engine", 5 })
Recipe("5d-flamethrower-turret-10"):replace_ingredient("pipe", { "brass-pipe", 10 })
Recipe("5d-flamethrower-turret-10"):replace_ingredient("low-density-structure", { "se-iridium-plate", 20 })
Recipe("5d-flamethrower-turret-10"):replace_ingredient("processing-unit", { "invar-plate", 10 })
Recipe("5d-flamethrower-turret-10"):add_ingredient({ "se-self-sealing-gel", 5 })
Recipe("5d-flamethrower-turret-10"):add_ingredient({ "spark-plug", 1 })
-- Basic Laser turret
-- 02
Recipe("5d-laser-turret-02"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-02"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-02"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-02"):add_ingredient({ "nitinol-plate", 20 })
Recipe("5d-laser-turret-02"):add_ingredient({ "motorized-articulator", 5 })
-- 03
Recipe("5d-laser-turret-03"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-03"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-03"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-03"):add_ingredient({ "nitinol-plate", 20 })
Recipe("5d-laser-turret-03"):add_ingredient({ "cobalt-carbide", 5 })
Recipe("5d-laser-turret-03"):add_ingredient({ "motorized-articulator", 5 })
-- 04
Recipe("5d-laser-turret-04"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-04"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-04"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-04"):add_ingredient({ "imersium-plate", 20 })
Recipe("5d-laser-turret-04"):add_ingredient({ "imersium-beam", 5 })
Recipe("5d-laser-turret-04"):add_ingredient({ "motorized-articulator", 5 })
-- 05
Recipe("5d-laser-turret-05"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-05"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-05"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-05"):add_ingredient({ "se-iridium-plate", 20 })
Recipe("5d-laser-turret-05"):add_ingredient({ "imersium-beam", 5 })
Recipe("5d-laser-turret-05"):add_ingredient({ "motorized-articulator", 5 })
-- 06
Recipe("5d-laser-turret-06"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-06"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-06"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-06"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-06"):add_ingredient({ "se-iridium-plate", 20 })
Recipe("5d-laser-turret-06"):add_ingredient({ "imersium-beam", 5 })
Recipe("5d-laser-turret-06"):add_ingredient({ "motorized-articulator", 5 })
-- 07
Recipe("5d-laser-turret-07"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-07"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-07"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-07"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-07"):add_ingredient({ "se-iridium-plate", 20 })
Recipe("5d-laser-turret-07"):add_ingredient({ "se-heavy-girder", 5 })
Recipe("5d-laser-turret-07"):add_ingredient({ "motorized-articulator", 5 })
-- 08
Recipe("5d-laser-turret-08"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-08"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-08"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-08"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-laser-turret-08"):add_ingredient({ "se-iridium-plate", 20 })
Recipe("5d-laser-turret-08"):add_ingredient({ "se-heavy-girder", 5 })
Recipe("5d-laser-turret-08"):add_ingredient({ "motorized-articulator", 5 })
-- 09
Recipe("5d-laser-turret-09"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-09"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-09"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-09"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-09"):add_ingredient({ "se-iridium-plate", 20 })
Recipe("5d-laser-turret-09"):add_ingredient({ "se-heavy-girder", 5 })
Recipe("5d-laser-turret-09"):add_ingredient({ "motorized-articulator", 5 })
-- 10
Recipe("5d-laser-turret-10"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-10"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-10"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-10"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-10"):add_ingredient({ "se-iridium-plate", 20 })
Recipe("5d-laser-turret-10"):add_ingredient({ "se-heavy-girder", 5 })
Recipe("5d-laser-turret-10"):add_ingredient({ "motorized-articulator", 5 })
-- Small Laser turret
-- 01
Recipe("5d-laser-turret-small-01"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-01"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-01"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-01"):add_ingredient({ "galvanized-steel-plate", 10 })
Recipe("5d-laser-turret-small-01"):add_ingredient({ "motorized-articulator", 8 })
-- 02
Recipe("5d-laser-turret-small-02"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-02"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-02"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-02"):add_ingredient({ "nitinol-plate", 10 })
Recipe("5d-laser-turret-small-02"):add_ingredient({ "motorized-articulator", 8 })
-- 03
Recipe("5d-laser-turret-small-03"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-03"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-03"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-03"):add_ingredient({ "nitinol-plate", 10 })
Recipe("5d-laser-turret-small-03"):add_ingredient({ "cobalt-carbide", 2 })
Recipe("5d-laser-turret-small-03"):add_ingredient({ "motorized-articulator", 8 })
-- 04
Recipe("5d-laser-turret-small-04"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-04"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-04"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-04"):add_ingredient({ "imersium-plate", 10 })
Recipe("5d-laser-turret-small-04"):add_ingredient({ "imersium-beam", 2 })
Recipe("5d-laser-turret-small-04"):add_ingredient({ "motorized-articulator", 8 })
-- 05
Recipe("5d-laser-turret-small-05"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-05"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-05"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-05"):add_ingredient({ "se-iridium-plate", 10 })
Recipe("5d-laser-turret-small-05"):add_ingredient({ "imersium-beam", 2 })
Recipe("5d-laser-turret-small-05"):add_ingredient({ "motorized-articulator", 8 })
-- 06
Recipe("5d-laser-turret-small-06"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-06"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-06"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-06"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-small-06"):add_ingredient({ "se-iridium-plate", 10 })
Recipe("5d-laser-turret-small-06"):add_ingredient({ "imersium-beam", 2 })
Recipe("5d-laser-turret-small-06"):add_ingredient({ "motorized-articulator", 8 })
-- 07
Recipe("5d-laser-turret-small-07"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-07"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-07"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-07"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-small-07"):add_ingredient({ "se-iridium-plate", 10 })
Recipe("5d-laser-turret-small-07"):add_ingredient({ "se-heavy-girder", 2 })
Recipe("5d-laser-turret-small-07"):add_ingredient({ "motorized-articulator", 8 })
-- 08
Recipe("5d-laser-turret-small-08"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-08"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-08"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-08"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-laser-turret-small-08"):add_ingredient({ "se-iridium-plate", 10 })
Recipe("5d-laser-turret-small-08"):add_ingredient({ "se-heavy-girder", 2 })
Recipe("5d-laser-turret-small-08"):add_ingredient({ "motorized-articulator", 8 })
-- 09
Recipe("5d-laser-turret-small-09"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-09"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-09"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-small-09"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-small-09"):add_ingredient({ "se-iridium-plate", 10 })
Recipe("5d-laser-turret-small-09"):add_ingredient({ "se-heavy-girder", 2 })
Recipe("5d-laser-turret-small-09"):add_ingredient({ "motorized-articulator", 8 })
-- 10
Recipe("5d-laser-turret-small-10"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-small-10"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-small-10"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-small-10"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-small-10"):add_ingredient({ "se-iridium-plate", 10 })
Recipe("5d-laser-turret-small-10"):add_ingredient({ "se-heavy-girder", 2 })
Recipe("5d-laser-turret-small-10"):add_ingredient({ "motorized-articulator", 8 })
-- Big Laser turret
-- 01
Recipe("5d-laser-turret-big-01"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-01"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-01"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-01"):add_ingredient({ "galvanized-steel-plate", 40 })
Recipe("5d-laser-turret-big-01"):add_ingredient({ "motorized-articulator", 2 })
-- 02
Recipe("5d-laser-turret-big-02"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-02"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-02"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-02"):add_ingredient({ "nitinol-plate", 40 })
Recipe("5d-laser-turret-big-02"):add_ingredient({ "motorized-articulator", 2 })
-- 03
Recipe("5d-laser-turret-big-03"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-03"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-03"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-03"):add_ingredient({ "nitinol-plate", 40 })
Recipe("5d-laser-turret-big-03"):add_ingredient({ "cobalt-carbide", 10 })
Recipe("5d-laser-turret-big-03"):add_ingredient({ "motorized-articulator", 2 })
-- 04
Recipe("5d-laser-turret-big-04"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-04"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-04"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-04"):add_ingredient({ "imersium-plate", 40 })
Recipe("5d-laser-turret-big-04"):add_ingredient({ "imersium-beam", 10 })
Recipe("5d-laser-turret-big-04"):add_ingredient({ "motorized-articulator", 2 })
-- 05
Recipe("5d-laser-turret-big-05"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-05"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-05"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-05"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-big-05"):add_ingredient({ "imersium-beam", 10 })
Recipe("5d-laser-turret-big-05"):add_ingredient({ "motorized-articulator", 2 })
-- 06
Recipe("5d-laser-turret-big-06"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-06"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-06"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-06"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-big-06"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-big-06"):add_ingredient({ "imersium-beam", 10 })
Recipe("5d-laser-turret-big-06"):add_ingredient({ "motorized-articulator", 2 })
-- 07
Recipe("5d-laser-turret-big-07"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-07"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-07"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-07"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-big-07"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-big-07"):add_ingredient({ "se-heavy-girder", 10 })
Recipe("5d-laser-turret-big-07"):add_ingredient({ "motorized-articulator", 2 })
-- 08
Recipe("5d-laser-turret-big-08"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-08"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-08"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-08"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-laser-turret-big-08"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-big-08"):add_ingredient({ "se-heavy-girder", 10 })
Recipe("5d-laser-turret-big-08"):add_ingredient({ "motorized-articulator", 2 })
-- 09
Recipe("5d-laser-turret-big-09"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-09"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-09"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-big-09"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-big-09"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-big-09"):add_ingredient({ "se-heavy-girder", 10 })
Recipe("5d-laser-turret-big-09"):add_ingredient({ "motorized-articulator", 2 })
-- 10
Recipe("5d-laser-turret-big-10"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-big-10"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-big-10"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-big-10"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-big-10"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-big-10"):add_ingredient({ "se-heavy-girder", 10 })
Recipe("5d-laser-turret-big-10"):add_ingredient({ "motorized-articulator", 2 })
-- Sniper Laser turret
-- 01
Recipe("5d-laser-turret-sniper-01"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-01"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-01"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-sniper-01"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-sniper-01"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-sniper-01"):add_ingredient({ "imersium-beam", 10 })
Recipe("5d-laser-turret-sniper-01"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-01"):add_ingredient({ "processing-unit", 10 })
-- 02
Recipe("5d-laser-turret-sniper-02"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-02"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-02"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-sniper-02"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-laser-turret-sniper-02"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-sniper-02"):add_ingredient({ "se-heavy-girder", 10 })
Recipe("5d-laser-turret-sniper-02"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-02"):add_ingredient({ "processing-unit", 10 })
-- 03
Recipe("5d-laser-turret-sniper-03"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-03"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-03"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-sniper-03"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-laser-turret-sniper-03"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-sniper-03"):add_ingredient({ "se-heavy-girder", 10 })
Recipe("5d-laser-turret-sniper-03"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-03"):add_ingredient({ "processing-unit", 10 })
-- 04
Recipe("5d-laser-turret-sniper-04"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-04"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-04"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-sniper-04"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-laser-turret-sniper-04"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-sniper-04"):add_ingredient({ "se-heavy-bearing", 10 })
Recipe("5d-laser-turret-sniper-04"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-04"):add_ingredient({ "advanced-processing-unit", 10 })
-- 05
Recipe("5d-laser-turret-sniper-05"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-05"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-05"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-sniper-05"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-sniper-05"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-laser-turret-sniper-05"):add_ingredient({ "se-heavy-bearing", 10 })
Recipe("5d-laser-turret-sniper-05"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-05"):add_ingredient({ "advanced-processing-unit", 10 })
-- 06
Recipe("5d-laser-turret-sniper-06"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-06"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-06"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-laser-turret-sniper-06"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-sniper-06"):add_ingredient({ "se-heavy-composite", 10 })
Recipe("5d-laser-turret-sniper-06"):add_ingredient({ "se-heavy-bearing", 10 })
Recipe("5d-laser-turret-sniper-06"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-06"):add_ingredient({ "advanced-processing-unit", 10 })
-- 07
Recipe("5d-laser-turret-sniper-07"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-07"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-07"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-sniper-07"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-sniper-07"):add_ingredient({ "se-heavy-composite", 10 })
Recipe("5d-laser-turret-sniper-07"):add_ingredient({ "se-heavy-bearing", 10 })
Recipe("5d-laser-turret-sniper-07"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-07"):add_ingredient({ "gr_materials_circuit", 10 })
-- 08
Recipe("5d-laser-turret-sniper-08"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-08"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-08"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-sniper-08"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-sniper-08"):add_ingredient({ "se-heavy-composite", 10 })
Recipe("5d-laser-turret-sniper-08"):add_ingredient({ "se-heavy-assembly", 10 })
Recipe("5d-laser-turret-sniper-08"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-08"):add_ingredient({ "gr_materials_circuit", 10 })
-- 09
Recipe("5d-laser-turret-sniper-09"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-09"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-09"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-sniper-09"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-sniper-09"):add_ingredient({ "se-nanomaterial", 10 })
Recipe("5d-laser-turret-sniper-09"):add_ingredient({ "se-heavy-assembly", 10 })
Recipe("5d-laser-turret-sniper-09"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-09"):add_ingredient({ "gr_materials_circuit", 10 })
-- 10
Recipe("5d-laser-turret-sniper-10"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-laser-turret-sniper-10"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-laser-turret-sniper-10"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-laser-turret-sniper-10"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-laser-turret-sniper-10"):add_ingredient({ "se-naquium-plate", 10 })
Recipe("5d-laser-turret-sniper-10"):add_ingredient({ "se-heavy-assembly", 10 })
Recipe("5d-laser-turret-sniper-10"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-laser-turret-sniper-10"):add_ingredient({ "gr_materials_circuit", 10 })
-- Tesla Laser turret
-- 01
Recipe("5d-tesla-turret-01"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-01"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-01"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-tesla-turret-01"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-tesla-turret-01"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-tesla-turret-01"):add_ingredient({ "imersium-beam", 10 })
Recipe("5d-tesla-turret-01"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-01"):add_ingredient({ "processing-unit", 10 })
-- 02
Recipe("5d-tesla-turret-02"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-02"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-02"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-tesla-turret-02"):add_ingredient({ "se-holmium-cable", 4 })
Recipe("5d-tesla-turret-02"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-tesla-turret-02"):add_ingredient({ "se-aeroframe-pole", 10 })
Recipe("5d-tesla-turret-02"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-02"):add_ingredient({ "processing-unit", 10 })
-- 03
Recipe("5d-tesla-turret-03"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-03"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-03"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-tesla-turret-03"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-tesla-turret-03"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-tesla-turret-03"):add_ingredient({ "se-aeroframe-pole", 10 })
Recipe("5d-tesla-turret-03"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-03"):add_ingredient({ "processing-unit", 10 })
-- 04
Recipe("5d-tesla-turret-04"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-04"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-04"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-tesla-turret-04"):add_ingredient({ "se-holmium-solenoid", 4 })
Recipe("5d-tesla-turret-04"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-tesla-turret-04"):add_ingredient({ "se-aeroframe-scaffold", 10 })
Recipe("5d-tesla-turret-04"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-04"):add_ingredient({ "advanced-processing-unit", 10 })
-- 05
Recipe("5d-tesla-turret-05"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-05"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-05"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-tesla-turret-05"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-tesla-turret-05"):add_ingredient({ "se-iridium-plate", 40 })
Recipe("5d-tesla-turret-05"):add_ingredient({ "se-aeroframe-scaffold", 10 })
Recipe("5d-tesla-turret-05"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-05"):add_ingredient({ "advanced-processing-unit", 10 })
-- 06
Recipe("5d-tesla-turret-06"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-06"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-06"):replace_ingredient("steel-plate", { "carbon-dioxide-laser", 1 })
Recipe("5d-tesla-turret-06"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-tesla-turret-06"):add_ingredient({ "se-aeroframe-bulkhead", 10 })
Recipe("5d-tesla-turret-06"):add_ingredient({ "se-aeroframe-scaffold", 10 })
Recipe("5d-tesla-turret-06"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-06"):add_ingredient({ "advanced-processing-unit", 10 })
-- 07
Recipe("5d-tesla-turret-07"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-07"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-07"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-tesla-turret-07"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-tesla-turret-07"):add_ingredient({ "se-aeroframe-bulkhead", 10 })
Recipe("5d-tesla-turret-07"):add_ingredient({ "se-aeroframe-scaffold", 10 })
Recipe("5d-tesla-turret-07"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-07"):add_ingredient({ "gr_materials_circuit", 10 })
-- 08
Recipe("5d-tesla-turret-08"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-08"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-08"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-tesla-turret-08"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-tesla-turret-08"):add_ingredient({ "se-aeroframe-bulkhead", 10 })
Recipe("5d-tesla-turret-08"):add_ingredient({ "se-heavy-assembly", 10 })
Recipe("5d-tesla-turret-08"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-08"):add_ingredient({ "gr_materials_circuit", 10 })
-- 09
Recipe("5d-tesla-turret-09"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-09"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-09"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-tesla-turret-09"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-tesla-turret-09"):add_ingredient({ "se-nanomaterial", 10 })
Recipe("5d-tesla-turret-09"):add_ingredient({ "se-heavy-assembly", 10 })
Recipe("5d-tesla-turret-09"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-09"):add_ingredient({ "gr_materials_circuit", 10 })
-- 10
Recipe("5d-tesla-turret-10"):replace_ingredient("battery", { "gyroscope", 1 })
Recipe("5d-tesla-turret-10"):replace_ingredient("electronic-circuit", { "hv-power-regulator", 1 })
Recipe("5d-tesla-turret-10"):replace_ingredient("steel-plate", { "se-dynamic-emitter", 1 })
Recipe("5d-tesla-turret-10"):add_ingredient({ "se-superconductive-cable", 4 })
Recipe("5d-tesla-turret-10"):add_ingredient({ "se-naquium-plate", 10 })
Recipe("5d-tesla-turret-10"):add_ingredient({ "se-heavy-assembly", 10 })
Recipe("5d-tesla-turret-10"):add_ingredient({ "advanced-machining-tool", 5 })
Recipe("5d-tesla-turret-10"):add_ingredient({ "gr_materials_circuit", 10 })


-- Technologies

local util = require("_data-util")

-- 02
util.tech_add_prerequisites("gun-turret-2",{"steel-processing"})
-- 03
data.raw.technology["gun-turret-3"].unit.count = 150
util.tech_add_prerequisites("gun-turret-3",{"hardened-hull"})
-- 04
data.raw.technology["gun-turret-4"].unit.count = 200
util.tech_remove_prerequisites("gun-turret-4", {"logistic-science-pack"})
util.tech_add_prerequisites("gun-turret-4",{"tungsten-processing"})
util.tech_remove_ingredients("gun-turret-4", {"chemical-science-pack"})
-- 05
data.raw.technology["gun-turret-5"].unit.count = 250
util.tech_remove_prerequisites("gun-turret-5", {"production-science-pack"})
util.tech_add_prerequisites("gun-turret-5",{"zirconia-processing"})
util.tech_remove_ingredients("gun-turret-5", {"chemical-science-pack", "se-rocket-science-pack", "space-science-pack"})
-- 06
data.raw.technology["gun-turret-6"].unit.count = 300
util.tech_add_ingredients("gun-turret-6",{"military-science-pack"},false)
util.tech_add_prerequisites("gun-turret-6",{"titanium-processing"})
util.tech_remove_ingredients("gun-turret-6", {"se-rocket-science-pack", "space-science-pack", "production-science-pack", "se-material-science-pack-1"})
-- 07
data.raw.technology["gun-turret-7"].unit.count = 350
util.tech_remove_prerequisites("gun-turret-7", {"utility-science-pack"})
util.tech_add_prerequisites("gun-turret-7",{"nitinol-processing"})
util.tech_remove_ingredients("gun-turret-7", {"space-science-pack", "production-science-pack", "se-material-science-pack-2"})
-- 08
data.raw.technology["gun-turret-8"].unit.count = 400
util.tech_add_prerequisites("gun-turret-8",{"kr-imersium-processing"})
util.tech_remove_ingredients("gun-turret-8", {"production-science-pack", "se-material-science-pack-3"})
-- 09
data.raw.technology["gun-turret-9"].unit.count = 450
util.tech_add_prerequisites("gun-turret-9",{"se-processing-iridium"})
util.tech_remove_ingredients("gun-turret-9", {"se-material-science-pack-4"})
-- 10
data.raw.technology["gun-turret-10"].unit.count = 500
util.tech_add_prerequisites("gun-turret-10",{"se-heavy-girder"})
util.tech_remove_ingredients("gun-turret-10", {"se-material-science-pack-4", "se-deep-space-science-pack-1"})
util.tech_add_ingredients("gun-turret-10",{"se-material-science-pack-1"},false)
--Small Turret
-- 02
util.tech_add_prerequisites("5d-gun-turret-small-2",{"steel-processing"})
-- 03
data.raw.technology["5d-gun-turret-small-3"].unit.count = 150
util.tech_add_prerequisites("5d-gun-turret-small-3",{"hardened-hull"})
-- 04
data.raw.technology["5d-gun-turret-small-4"].unit.count = 200
util.tech_add_prerequisites("5d-gun-turret-small-4",{"tungsten-processing"})
util.tech_remove_ingredients("5d-gun-turret-small-4", {"chemical-science-pack"})
-- 05
data.raw.technology["5d-gun-turret-small-5"].unit.count = 250
util.tech_remove_prerequisites("5d-gun-turret-small-5", {"production-science-pack"})
util.tech_add_prerequisites("5d-gun-turret-small-5",{"zirconia-processing"})
util.tech_remove_ingredients("5d-gun-turret-small-5", {"chemical-science-pack", "se-rocket-science-pack", "space-science-pack"})
-- 06
data.raw.technology["5d-gun-turret-small-6"].unit.count = 300
util.tech_add_ingredients("5d-gun-turret-small-6",{"military-science-pack"},false)
util.tech_add_prerequisites("5d-gun-turret-small-6",{"titanium-processing"})
util.tech_remove_ingredients("5d-gun-turret-small-6", {"se-rocket-science-pack", "space-science-pack", "production-science-pack", "se-material-science-pack-1"})
-- 07
data.raw.technology["5d-gun-turret-small-7"].unit.count = 350
util.tech_add_prerequisites("5d-gun-turret-small-7",{"nitinol-processing"})
util.tech_remove_ingredients("5d-gun-turret-small-7", {"space-science-pack", "production-science-pack", "se-material-science-pack-2"})
-- 08
data.raw.technology["5d-gun-turret-small-8"].unit.count = 400
util.tech_add_prerequisites("5d-gun-turret-small-8",{"kr-imersium-processing"})
util.tech_remove_ingredients("5d-gun-turret-small-8", {"production-science-pack", "se-material-science-pack-3"})
-- 09
data.raw.technology["5d-gun-turret-small-9"].unit.count = 450
util.tech_add_prerequisites("5d-gun-turret-small-9",{"se-processing-iridium"})
util.tech_remove_ingredients("5d-gun-turret-small-9", {"se-material-science-pack-4"})
-- 10
data.raw.technology["5d-gun-turret-small-10"].unit.count = 500
util.tech_add_prerequisites("5d-gun-turret-small-10",{"se-heavy-girder"})
util.tech_remove_ingredients("5d-gun-turret-small-10", {"se-material-science-pack-4", "se-deep-space-science-pack-1"})
util.tech_add_ingredients("5d-gun-turret-small-10",{"se-material-science-pack-1"},false)
--Big Turret
-- 02
util.tech_add_prerequisites("5d-gun-turret-big-2",{"steel-processing"})
-- 03
data.raw.technology["5d-gun-turret-big-3"].unit.count = 150
util.tech_add_prerequisites("5d-gun-turret-big-3",{"hardened-hull"})
-- 04
data.raw.technology["5d-gun-turret-big-4"].unit.count = 200
util.tech_add_prerequisites("5d-gun-turret-big-4",{"tungsten-processing"})
util.tech_remove_ingredients("5d-gun-turret-big-4", {"chemical-science-pack"})
-- 05
data.raw.technology["5d-gun-turret-big-5"].unit.count = 250
util.tech_remove_prerequisites("5d-gun-turret-big-5", {"production-science-pack"})
util.tech_add_prerequisites("5d-gun-turret-big-5",{"zirconia-processing"})
util.tech_remove_ingredients("5d-gun-turret-big-5", {"chemical-science-pack", "se-rocket-science-pack", "space-science-pack"})
-- 06
data.raw.technology["5d-gun-turret-big-6"].unit.count = 300
util.tech_add_ingredients("5d-gun-turret-big-6",{"military-science-pack"},false)
util.tech_add_prerequisites("5d-gun-turret-big-6",{"titanium-processing"})
util.tech_remove_ingredients("5d-gun-turret-big-6", {"se-rocket-science-pack", "space-science-pack", "production-science-pack", "se-material-science-pack-1"})
-- 07
data.raw.technology["5d-gun-turret-big-7"].unit.count = 350
util.tech_add_prerequisites("5d-gun-turret-big-7",{"nitinol-processing"})
util.tech_remove_ingredients("5d-gun-turret-big-7", {"space-science-pack", "production-science-pack", "se-material-science-pack-2"})
-- 08
data.raw.technology["5d-gun-turret-big-8"].unit.count = 400
util.tech_add_prerequisites("5d-gun-turret-big-8",{"kr-imersium-processing"})
util.tech_remove_ingredients("5d-gun-turret-big-8", {"production-science-pack", "se-material-science-pack-3"})
-- 09
data.raw.technology["5d-gun-turret-big-9"].unit.count = 450
util.tech_add_prerequisites("5d-gun-turret-big-9",{"se-processing-iridium"})
util.tech_remove_ingredients("5d-gun-turret-big-9", {"se-material-science-pack-4"})
-- 10
data.raw.technology["5d-gun-turret-big-10"].unit.count = 500
util.tech_add_prerequisites("5d-gun-turret-big-10",{"se-heavy-girder"})
util.tech_remove_ingredients("5d-gun-turret-big-10", {"se-material-science-pack-4", "se-deep-space-science-pack-1"})
util.tech_add_ingredients("5d-gun-turret-big-10",{"se-material-science-pack-1"},false)
-- Sniper Turret
-- 01
data.raw.technology["5d-gun-turret-sniper-1"].unit.count = 100
util.tech_remove_ingredients("5d-gun-turret-sniper-1", {"se-rocket-science-pack"})
-- 02
data.raw.technology["5d-gun-turret-sniper-2"].unit.count = 200
util.tech_add_prerequisites("5d-gun-turret-sniper-2", {"titanium-processing"})
util.tech_remove_ingredients("5d-gun-turret-sniper-2", {"se-rocket-science-pack"})
util.tech_add_ingredients("5d-gun-turret-sniper-2",{"chemical-science-pack"},false)
-- 03
data.raw.technology["5d-gun-turret-sniper-3"].unit.count = 300
util.tech_add_prerequisites("5d-gun-turret-sniper-3", {"nitinol-processing"})
util.tech_add_ingredients("5d-gun-turret-sniper-3",{"chemical-science-pack"},false)
-- 04
data.raw.technology["5d-gun-turret-sniper-4"].unit.count = 400
util.tech_add_prerequisites("5d-gun-turret-sniper-4", {"cobalt-carbide"})
util.tech_add_ingredients("5d-gun-turret-sniper-4",{"space-science-pack"},false)
-- 05
data.raw.technology["5d-gun-turret-sniper-5"].unit.count = 500
util.tech_add_prerequisites("5d-gun-turret-sniper-5", {"kr-imersium-processing"})
-- 06
data.raw.technology["5d-gun-turret-sniper-6"].unit.count = 600
util.tech_add_prerequisites("5d-gun-turret-sniper-6", {"se-processing-iridium"})
util.tech_remove_ingredients("5d-gun-turret-sniper-6", {"se-material-science-pack-1"})
-- 07
data.raw.technology["5d-gun-turret-sniper-7"].unit.count = 700
util.tech_add_prerequisites("5d-gun-turret-sniper-7", {"se-heavy-girder"})
util.tech_remove_ingredients("5d-gun-turret-sniper-7", {"se-material-science-pack-2"})
util.tech_add_ingredients("5d-gun-turret-sniper-7",{"se-material-science-pack-1"},false)
-- 08
data.raw.technology["5d-gun-turret-sniper-8"].unit.count = 800
util.tech_add_prerequisites("5d-gun-turret-sniper-8", {"se-heavy-bearing"})
util.tech_remove_ingredients("5d-gun-turret-sniper-8", {"se-material-science-pack-3"})
util.tech_add_ingredients("5d-gun-turret-sniper-8",{"se-material-science-pack-2"},false)
-- 09
data.raw.technology["5d-gun-turret-sniper-9"].unit.count = 900
util.tech_remove_prerequisites("5d-gun-turret-sniper-9", {"utility-science-pack", "production-science-pack"})
util.tech_add_prerequisites("5d-gun-turret-sniper-9", {"se-heavy-composite"})
util.tech_remove_ingredients("5d-gun-turret-sniper-9", {"se-material-science-pack-4"})
util.tech_add_ingredients("5d-gun-turret-sniper-9",{"se-material-science-pack-3"},false)
-- 10
data.raw.technology["5d-gun-turret-sniper-10"].unit.count = 1000
util.tech_add_prerequisites("5d-gun-turret-sniper-10", {"se-heavy-assembly"})
util.tech_remove_ingredients("5d-gun-turret-sniper-10", {"se-deep-space-science-pack-1"})
-- Flamethrower
-- 02
data.raw.technology["5d-flamethrower-turrets-1"].unit.count = 100
util.tech_add_prerequisites("5d-flamethrower-turrets-1",{"advanced-multi-cylinder-engine"})
util.tech_add_ingredients("5d-flamethrower-turrets-1",{"chemical-science-pack"},false)
-- 03
data.raw.technology["5d-flamethrower-turrets-2"].unit.count = 150
util.tech_add_prerequisites("5d-flamethrower-turrets-2",{"nitinol-processing"})
util.tech_add_ingredients("5d-flamethrower-turrets-2",{"chemical-science-pack","se-rocket-science-pack"},false)
-- 04
data.raw.technology["5d-flamethrower-turrets-3"].unit.count = 200
util.tech_remove_prerequisites("5d-flamethrower-turrets-3", {"chemical-science-pack"})
util.tech_add_prerequisites("5d-flamethrower-turrets-3",{"cobalt-carbide"})
util.tech_add_ingredients("5d-flamethrower-turrets-3",{"se-rocket-science-pack","space-science-pack"},false)
-- 05
data.raw.technology["5d-flamethrower-turrets-4"].unit.count = 250
util.tech_add_prerequisites("5d-flamethrower-turrets-4","kr-imersium-processing")
util.tech_add_ingredients("5d-flamethrower-turrets-4",{"se-rocket-science-pack","space-science-pack"},false)
-- 06
data.raw.technology["5d-flamethrower-turrets-5"].unit.count = 300
util.tech_add_prerequisites("5d-flamethrower-turrets-5",{"se-processing-iridium"})
util.tech_add_ingredients("5d-flamethrower-turrets-5",{"production-science-pack"},false)
-- 07
data.raw.technology["5d-flamethrower-turrets-6"].unit.count = 350
util.tech_remove_prerequisites("5d-flamethrower-turrets-6", {"utility-science-pack"})
util.tech_add_prerequisites("5d-flamethrower-turrets-6",{"se-bioscrubber"})
util.tech_remove_ingredients("5d-flamethrower-turrets-6", {"utility-science-pack"})
util.tech_add_ingredients("5d-flamethrower-turrets-6",{"se-biological-science-pack-1"},false)
-- 08
data.raw.technology["5d-flamethrower-turrets-7"].unit.count = 400
util.tech_add_prerequisites("5d-flamethrower-turrets-7",{"se-vitalic-reagent"})
util.tech_remove_ingredients("5d-flamethrower-turrets-7", {"utility-science-pack","se-material-science-pack-2"})
util.tech_add_ingredients("5d-flamethrower-turrets-7",{"se-biological-science-pack-2"},false)
-- 09
data.raw.technology["5d-flamethrower-turrets-8"].unit.count = 450
util.tech_remove_ingredients("5d-flamethrower-turrets-8", {"utility-science-pack","se-material-science-pack-3"})
util.tech_add_prerequisites("5d-flamethrower-turrets-8","se-vitalic-epoxy")
util.tech_add_ingredients("5d-flamethrower-turrets-8",{"se-biological-science-pack-3"},false)
-- 10
data.raw.technology["5d-flamethrower-turrets-9"].unit.count = 500
util.tech_remove_ingredients("5d-flamethrower-turrets-9", {"utility-science-pack","se-material-science-pack-4"})
util.tech_add_prerequisites("5d-flamethrower-turrets-9","se-self-sealing-gel")
util.tech_add_ingredients("5d-flamethrower-turrets-9",{"se-biological-science-pack-4"},false)
-- Basic Laser
-- 02
data.raw.technology["laser-turret-2"].unit.count = 100
util.tech_add_prerequisites("laser-turret-2",{"nitinol-processing"})
util.tech_add_ingredients("laser-turret-2",{"se-rocket-science-pack"},false)
-- 03
data.raw.technology["laser-turret-3"].unit.count = 150
util.tech_add_prerequisites("laser-turret-3",{"cobalt-carbide"})
util.tech_add_ingredients("laser-turret-3",{"se-rocket-science-pack","space-science-pack"},false)
-- 04
data.raw.technology["laser-turret-4"].unit.count = 200
util.tech_add_prerequisites("laser-turret-4","kr-imersium-processing")
util.tech_add_ingredients("laser-turret-4",{"se-rocket-science-pack","space-science-pack"},false)
-- 05
data.raw.technology["laser-turret-5"].unit.count = 250
util.tech_add_prerequisites("laser-turret-5",{"se-processing-iridium"})
util.tech_add_ingredients("laser-turret-5",{"production-science-pack"},false)
-- 06
data.raw.technology["laser-turret-6"].unit.count = 300
util.tech_add_prerequisites("laser-turret-6",{"se-holmium-cable"})
util.tech_add_ingredients("laser-turret-6",{"production-science-pack"},false)
-- 07
data.raw.technology["laser-turret-7"].unit.count = 350
util.tech_remove_prerequisites("laser-turret-7", {"utility-science-pack"})
util.tech_add_prerequisites("laser-turret-7",{"se-heavy-girder"})
util.tech_remove_ingredients("laser-turret-7", {"se-energy-science-pack-2"})
util.tech_add_ingredients("laser-turret-7",{"se-material-science-pack-1","se-energy-science-pack-1"},false)
-- 08
data.raw.technology["laser-turret-8"].unit.count = 400
util.tech_add_prerequisites("laser-turret-8",{"se-holmium-solenoid"})
util.tech_remove_ingredients("laser-turret-8", {"se-energy-science-pack-3"})
util.tech_add_ingredients("laser-turret-8",{"se-material-science-pack-1","se-energy-science-pack-2"},false)
-- 09
data.raw.technology["laser-turret-9"].unit.count = 450
util.tech_add_prerequisites("laser-turret-9",{"se-superconductive-cable"})
util.tech_remove_ingredients("laser-turret-9", {"se-energy-science-pack-4"})
util.tech_add_ingredients("laser-turret-9",{"se-material-science-pack-1","se-energy-science-pack-3"},false)
-- 10
data.raw.technology["laser-turret-10"].unit.count = 500
util.tech_add_prerequisites("laser-turret-10",{"se-dynamic-emitter"})
util.tech_remove_ingredients("laser-turret-10", {"se-deep-space-science-pack-1"})
util.tech_add_ingredients("laser-turret-10",{"se-material-science-pack-1"},false)
-- Big Laser
-- 02
data.raw.technology["5d-laser-turret-big-2"].unit.count = 100
util.tech_add_prerequisites("5d-laser-turret-big-2",{"nitinol-processing"})
util.tech_add_ingredients("5d-laser-turret-big-2",{"se-rocket-science-pack"},false)
-- 03
data.raw.technology["5d-laser-turret-big-3"].unit.count = 150
util.tech_add_prerequisites("5d-laser-turret-big-3",{"cobalt-carbide"})
util.tech_add_ingredients("5d-laser-turret-big-3",{"se-rocket-science-pack","space-science-pack"},false)
-- 04
data.raw.technology["5d-laser-turret-big-4"].unit.count = 200
util.tech_add_prerequisites("5d-laser-turret-big-4","kr-imersium-processing")
util.tech_add_ingredients("5d-laser-turret-big-4",{"se-rocket-science-pack","space-science-pack"},false)
-- 05
data.raw.technology["5d-laser-turret-big-5"].unit.count = 250
util.tech_add_prerequisites("5d-laser-turret-big-5",{"se-processing-iridium"})
util.tech_add_ingredients("5d-laser-turret-big-5",{"production-science-pack"},false)
-- 06
data.raw.technology["5d-laser-turret-big-6"].unit.count = 300
util.tech_add_prerequisites("5d-laser-turret-big-6",{"se-holmium-cable"})
util.tech_add_ingredients("5d-laser-turret-big-6",{"production-science-pack"},false)
-- 07
data.raw.technology["5d-laser-turret-big-7"].unit.count = 350
util.tech_remove_prerequisites("5d-laser-turret-big-7", {"utility-science-pack"})
util.tech_add_prerequisites("5d-laser-turret-big-7",{"se-heavy-girder"})
util.tech_remove_ingredients("5d-laser-turret-big-7", {"se-energy-science-pack-2"})
util.tech_add_ingredients("5d-laser-turret-big-7",{"se-material-science-pack-1","se-energy-science-pack-1"},false)
-- 08
data.raw.technology["5d-laser-turret-big-8"].unit.count = 400
util.tech_add_prerequisites("5d-laser-turret-big-8",{"se-holmium-solenoid"})
util.tech_remove_ingredients("5d-laser-turret-big-8", {"se-energy-science-pack-3"})
util.tech_add_ingredients("5d-laser-turret-big-8",{"se-material-science-pack-1","se-energy-science-pack-2"},false)
-- 09
data.raw.technology["5d-laser-turret-big-9"].unit.count = 450
util.tech_add_prerequisites("5d-laser-turret-big-9",{"se-superconductive-cable"})
util.tech_remove_ingredients("5d-laser-turret-big-9", {"se-energy-science-pack-4"})
util.tech_add_ingredients("5d-laser-turret-big-9",{"se-material-science-pack-1","se-energy-science-pack-3"},false)
-- 10
data.raw.technology["5d-laser-turret-big-10"].unit.count = 500
util.tech_add_prerequisites("5d-laser-turret-big-10",{"se-dynamic-emitter"})
util.tech_remove_ingredients("5d-laser-turret-big-10", {"se-deep-space-science-pack-1"})
util.tech_add_ingredients("5d-laser-turret-big-10",{"se-material-science-pack-1"},false)
-- Small Laser
-- 02
data.raw.technology["5d-laser-turret-small-2"].unit.count = 100
util.tech_add_prerequisites("5d-laser-turret-small-2",{"nitinol-processing"})
util.tech_add_ingredients("5d-laser-turret-small-2",{"se-rocket-science-pack"},false)
-- 03
data.raw.technology["5d-laser-turret-small-3"].unit.count = 150
util.tech_add_prerequisites("5d-laser-turret-small-3",{"cobalt-carbide"})
util.tech_add_ingredients("5d-laser-turret-small-3",{"se-rocket-science-pack","space-science-pack"},false)
-- 04
data.raw.technology["5d-laser-turret-small-4"].unit.count = 200
util.tech_add_prerequisites("5d-laser-turret-small-4","kr-imersium-processing")
util.tech_add_ingredients("5d-laser-turret-small-4",{"se-rocket-science-pack","space-science-pack"},false)
-- 05
data.raw.technology["5d-laser-turret-small-5"].unit.count = 250
util.tech_add_prerequisites("5d-laser-turret-small-5",{"se-processing-iridium"})
util.tech_add_ingredients("5d-laser-turret-small-5",{"production-science-pack"},false)
-- 06
data.raw.technology["5d-laser-turret-small-6"].unit.count = 300
util.tech_add_prerequisites("5d-laser-turret-small-6",{"se-holmium-cable"})
util.tech_add_ingredients("5d-laser-turret-small-6",{"production-science-pack"},false)
-- 07
data.raw.technology["5d-laser-turret-small-7"].unit.count = 350
util.tech_remove_prerequisites("5d-laser-turret-small-7", {"utility-science-pack"})
util.tech_add_prerequisites("5d-laser-turret-small-7",{"se-heavy-girder"})
util.tech_remove_ingredients("5d-laser-turret-small-7", {"se-energy-science-pack-2"})
util.tech_add_ingredients("5d-laser-turret-small-7",{"se-material-science-pack-1","se-energy-science-pack-1"},false)
-- 08
data.raw.technology["5d-laser-turret-small-8"].unit.count = 400
util.tech_add_prerequisites("5d-laser-turret-small-8",{"se-holmium-solenoid"})
util.tech_remove_ingredients("5d-laser-turret-small-8", {"se-energy-science-pack-3"})
util.tech_add_ingredients("5d-laser-turret-small-8",{"se-material-science-pack-1","se-energy-science-pack-2"},false)
-- 09
data.raw.technology["5d-laser-turret-small-9"].unit.count = 450
util.tech_add_prerequisites("5d-laser-turret-small-9",{"se-superconductive-cable"})
util.tech_remove_ingredients("5d-laser-turret-small-9", {"se-energy-science-pack-4"})
util.tech_add_ingredients("5d-laser-turret-small-9",{"se-material-science-pack-1","se-energy-science-pack-3"},false)
-- 10
data.raw.technology["5d-laser-turret-small-10"].unit.count = 500
util.tech_add_prerequisites("5d-laser-turret-small-10",{"se-dynamic-emitter"})
util.tech_remove_ingredients("5d-laser-turret-small-10", {"se-deep-space-science-pack-1"})
util.tech_add_ingredients("5d-laser-turret-small-10",{"se-material-science-pack-1"},false)
-- Sniper laser turret
-- 01
data.raw.technology["5d-laser-turret-sniper-1"].unit.count = 200
util.tech_add_prerequisites("5d-laser-turret-sniper-1",{"se-holmium-cable"})
util.tech_add_ingredients("5d-laser-turret-sniper-1",{"production-science-pack","se-rocket-science-pack","space-science-pack","se-energy-science-pack-1"},false)
-- 02
data.raw.technology["5d-laser-turret-sniper-2"].unit.count = 400
util.tech_add_prerequisites("5d-laser-turret-sniper-2",{"se-heavy-girder"})
util.tech_add_ingredients("5d-laser-turret-sniper-2",{"production-science-pack","se-rocket-science-pack","space-science-pack","se-energy-science-pack-1","se-material-science-pack-1"},false)
-- 03
data.raw.technology["5d-laser-turret-sniper-3"].unit.count = 600
util.tech_add_prerequisites("5d-laser-turret-sniper-3",{"se-holmium-solenoid"})
util.tech_add_ingredients("5d-laser-turret-sniper-3",{"production-science-pack","se-rocket-science-pack","space-science-pack","se-energy-science-pack-2","se-material-science-pack-1"},false)
-- 04
data.raw.technology["5d-laser-turret-sniper-4"].unit.count = 800
util.tech_remove_prerequisites("5d-laser-turret-sniper-4", {"utility-science-pack"})
util.tech_add_prerequisites("5d-laser-turret-sniper-4",{"se-heavy-bearing"})
util.tech_add_ingredients("5d-laser-turret-sniper-4",{"production-science-pack","se-energy-science-pack-2","se-material-science-pack-2"},false)
-- 05
data.raw.technology["5d-laser-turret-sniper-5"].unit.count = 1000
util.tech_add_prerequisites("5d-laser-turret-sniper-5",{"se-superconductive-cable"})
util.tech_add_ingredients("5d-laser-turret-sniper-5",{"production-science-pack","se-energy-science-pack-3","se-material-science-pack-2"},false)
-- 06
data.raw.technology["5d-laser-turret-sniper-6"].unit.count = 1200
util.tech_add_prerequisites("5d-laser-turret-sniper-6",{"se-heavy-composite"})
util.tech_remove_ingredients("5d-laser-turret-sniper-6", {"se-energy-science-pack-1"})
util.tech_add_ingredients("5d-laser-turret-sniper-6",{"production-science-pack","se-energy-science-pack-3","se-material-science-pack-3"},false)
-- 07
data.raw.technology["5d-laser-turret-sniper-7"].unit.count = 1400
util.tech_add_prerequisites("5d-laser-turret-sniper-7",{"se-dynamic-emitter"})
util.tech_remove_ingredients("5d-laser-turret-sniper-7", {"se-energy-science-pack-2"})
util.tech_add_ingredients("5d-laser-turret-sniper-7",{"production-science-pack","se-energy-science-pack-4","se-material-science-pack-3"},false)
-- 08
data.raw.technology["5d-laser-turret-sniper-8"].unit.count = 1600
util.tech_add_prerequisites("5d-laser-turret-sniper-8",{"se-heavy-assembly"})
util.tech_remove_ingredients("5d-laser-turret-sniper-8", {"se-energy-science-pack-3"})
util.tech_add_ingredients("5d-laser-turret-sniper-8",{"production-science-pack","se-energy-science-pack-4","se-material-science-pack-4"},false)
-- 09
data.raw.technology["5d-laser-turret-sniper-9"].unit.count = 1800
util.tech_add_prerequisites("5d-laser-turret-sniper-9",{"se-nanomaterial"})
util.tech_add_ingredients("5d-laser-turret-sniper-9",{"production-science-pack","se-material-science-pack-4","se-astronomic-science-pack-4","se-biological-science-pack-4"},false)
-- 10
data.raw.technology["5d-laser-turret-sniper-10"].unit.count = 2000
util.tech_add_prerequisites("5d-laser-turret-sniper-10",{"se-processing-naquium"})
util.tech_remove_ingredients("5d-laser-turret-sniper-10", {"se-deep-space-science-pack-1"})
util.tech_add_ingredients("5d-laser-turret-sniper-10",{"production-science-pack","se-material-science-pack-4","se-astronomic-science-pack-4","se-biological-science-pack-4"},false)
-- Tesla turret
-- 01
data.raw.technology["5d-tesla-turrets-1"].unit.count = 200
util.tech_remove_prerequisites("5d-tesla-turrets-1", {"utility-science-pack","5d-laser-turret-small-5","5d-laser-turret-big-5","5d-laser-turret-sniper-1"})
util.tech_add_prerequisites("5d-tesla-turrets-1",{"se-holmium-cable"})
util.tech_add_ingredients("5d-tesla-turrets-1",{"production-science-pack","se-energy-science-pack-1"},false)
-- 02
data.raw.technology["5d-tesla-turrets-2"].unit.count = 400
util.tech_remove_prerequisites("5d-tesla-turrets-2", {"laser-turret-6","5d-laser-turret-small-6","5d-laser-turret-big-6","5d-laser-turret-sniper-2"})
util.tech_add_prerequisites("5d-tesla-turrets-2",{"se-aeroframe-pole"})
util.tech_add_ingredients("5d-tesla-turrets-2",{"production-science-pack","se-energy-science-pack-1","se-astronomic-science-pack-1"},false)
-- 03
data.raw.technology["5d-tesla-turrets-3"].unit.count = 600
util.tech_remove_prerequisites("5d-tesla-turrets-3", {"laser-turret-7","5d-laser-turret-small-7","5d-laser-turret-big-7","5d-laser-turret-sniper-3"})
util.tech_add_prerequisites("5d-tesla-turrets-3",{"se-holmium-solenoid"})
util.tech_add_ingredients("5d-tesla-turrets-3",{"production-science-pack","se-rocket-science-pack","space-science-pack","se-energy-science-pack-2","se-astronomic-science-pack-1"},false)
-- 04
data.raw.technology["5d-tesla-turrets-4"].unit.count = 800
util.tech_remove_prerequisites("5d-tesla-turrets-4", {"laser-turret-8","5d-laser-turret-small-8","5d-laser-turret-big-8","5d-laser-turret-sniper-4"})
util.tech_add_prerequisites("5d-tesla-turrets-4",{"se-aeroframe-scaffold"})
util.tech_add_ingredients("5d-tesla-turrets-4",{"production-science-pack","se-energy-science-pack-2","se-astronomic-science-pack-2"},false)
-- 05
data.raw.technology["5d-tesla-turrets-5"].unit.count = 1000
util.tech_remove_prerequisites("5d-tesla-turrets-5", {"laser-turret-9","5d-laser-turret-small-9","5d-laser-turret-big-9","5d-laser-turret-sniper-5"})
util.tech_add_prerequisites("5d-tesla-turrets-5",{"se-superconductive-cable"})
util.tech_add_ingredients("5d-tesla-turrets-5",{"production-science-pack","se-energy-science-pack-3","se-astronomic-science-pack-2"},false)
-- 06
data.raw.technology["5d-tesla-turrets-6"].unit.count = 1200
util.tech_remove_prerequisites("5d-tesla-turrets-6", {"laser-turret-10","5d-laser-turret-small-10","5d-laser-turret-big-10","5d-laser-turret-sniper-6"})
util.tech_add_prerequisites("5d-tesla-turrets-6",{"se-aeroframe-bulkhead"})
util.tech_remove_ingredients("5d-tesla-turrets-6", {"se-material-science-pack-1"})
util.tech_add_ingredients("5d-tesla-turrets-6",{"production-science-pack","se-energy-science-pack-3","se-astronomic-science-pack-3"},false)
-- 07
data.raw.technology["5d-tesla-turrets-7"].unit.count = 1400
util.tech_remove_prerequisites("5d-tesla-turrets-7", {"5d-laser-turret-sniper-7"})
util.tech_add_prerequisites("5d-tesla-turrets-7",{"se-dynamic-emitter"})
util.tech_remove_ingredients("5d-tesla-turrets-7", {"se-material-science-pack-2"})
util.tech_add_ingredients("5d-tesla-turrets-7",{"production-science-pack","se-energy-science-pack-4","se-astronomic-science-pack-3"},false)
-- 08
data.raw.technology["5d-tesla-turrets-8"].unit.count = 1600
util.tech_remove_prerequisites("5d-tesla-turrets-8", {"5d-laser-turret-sniper-8"})
util.tech_add_prerequisites("5d-tesla-turrets-8",{"se-heavy-assembly"})
util.tech_remove_ingredients("5d-tesla-turrets-8", {"se-material-science-pack-3"})
util.tech_add_ingredients("5d-tesla-turrets-8",{"production-science-pack","se-energy-science-pack-4","se-material-science-pack-4","se-astronomic-science-pack-3"},false)
-- 09
data.raw.technology["5d-tesla-turrets-9"].unit.count = 1800
util.tech_remove_prerequisites("5d-tesla-turrets-9", {"5d-laser-turret-sniper-9"})
util.tech_add_prerequisites("5d-tesla-turrets-9",{"se-nanomaterial"})
util.tech_add_ingredients("5d-tesla-turrets-9",{"production-science-pack","se-energy-science-pack-4","se-astronomic-science-pack-4","se-biological-science-pack-4"},false)
-- 10
data.raw.technology["5d-tesla-turrets-10"].unit.count = 2000
util.tech_remove_prerequisites("5d-tesla-turrets-10", {"5d-laser-turret-sniper-10"})
util.tech_add_prerequisites("5d-tesla-turrets-10",{"se-processing-naquium"})
util.tech_remove_ingredients("5d-tesla-turrets-10", {"se-deep-space-science-pack-1"})
util.tech_add_ingredients("5d-tesla-turrets-10",{"production-science-pack","se-energy-science-pack-4","se-material-science-pack-4","se-astronomic-science-pack-4","se-biological-science-pack-4"},false)
