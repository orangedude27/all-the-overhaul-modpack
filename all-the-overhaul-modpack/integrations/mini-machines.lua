local Recipe = require('__stdlib__/stdlib/data/recipe')

-- 01
Recipe("mini-assembler-1"):replace_ingredient("burner-assembling-machine", { "automation-core", 3 })
Recipe("mini-assembler-1"):replace_ingredient("articulated-mechanism", { "articulated-mechanism", 2 })
-- 02
-- Nothing
-- 03
Recipe("mini-assembler-3"):remove_ingredient("advanced-gearbox", true)
Recipe("mini-assembler-3"):remove_ingredient("complex-joint", true)
Recipe("mini-assembler-3"):remove_ingredient("advanced-machining-tool", true)
Recipe("mini-assembler-3"):replace_ingredient("steel-plate", { "automation-core-3", 1 })
-- 04
Recipe("mini-assembler-4"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-4"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-4"):add_ingredient({ "imersium-gear-wheel", 4 })
Recipe("mini-assembler-4"):add_ingredient({ "processing-unit", 2 })
Recipe("mini-assembler-4"):replace_ingredient("assembling-machine-3", { "mini-assembler-3", 1 })
Recipe("mini-assembler-4"):replace_ingredient("steel-plate", { "nitinol-plate", 9 })
Recipe("mini-assembler-4"):replace_ingredient("productivity-module", { "cermet", 1 })
-- 05
Recipe("mini-assembler-5"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-5"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-5"):replace_ingredient("titanium-plate", { "se-heavy-girder", 2 })
Recipe("mini-assembler-5"):replace_ingredient("iron-gear-wheel", { "imersium-gear-wheel", 4 })
Recipe("mini-assembler-5"):replace_ingredient("steel-plate", { "cermet", 1 })
Recipe("mini-assembler-5"):replace_ingredient("speed-module-2", { "processing-unit", 5 })
Recipe("mini-assembler-5"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 06
Recipe("mini-assembler-6"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-6"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-6"):replace_ingredient("titanium-plate", { "imersium-beam", 2 })
Recipe("mini-assembler-6"):replace_ingredient("iron-gear-wheel", { "se-heavy-bearing", 2 })
Recipe("mini-assembler-6"):replace_ingredient("steel-plate", { "se-aeroframe-scaffold", 5 })
Recipe("mini-assembler-6"):replace_ingredient("productivity-module-2", { "advanced-processing-unit", 5 })
Recipe("mini-assembler-6"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 07
Recipe("mini-assembler-7"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-7"):add_ingredient({ "hv-power-regulator", 1 })
Recipe("mini-assembler-7"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-7"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-7"):replace_ingredient("titanium-plate", { "imersium-beam", 2 })
Recipe("mini-assembler-7"):replace_ingredient("speed-module-3", { "advanced-processing-unit", 5 })
Recipe("mini-assembler-7"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 08
Recipe("mini-assembler-8"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-8"):add_ingredient({ "ai-core", 1 })
Recipe("mini-assembler-8"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-8"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-8"):replace_ingredient("titanium-plate", { "imersium-beam", 2 })
Recipe("mini-assembler-8"):replace_ingredient("productivity-module-3", { "gr_materials_circuit", 5 })
Recipe("mini-assembler-8"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 09
Recipe("mini-assembler-9"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-9"):add_ingredient({ "ai-core", 1 })
Recipe("mini-assembler-9"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-9"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-9"):replace_ingredient("speed-module-3", { "se-nanomaterial", 5 })
Recipe("mini-assembler-9"):replace_ingredient("low-density-structure", { "se-heavy-assembly", 2 })
Recipe("mini-assembler-9"):replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
Recipe("mini-assembler-9"):replace_ingredient("tungsten-carbide", { "cobalt-carbide", 2 })
-- 10
Recipe("mini-assembler-10"):add_ingredient({ "solder", 5 })
Recipe("mini-assembler-10"):add_ingredient({ "ai-core", 1 })
Recipe("mini-assembler-10"):add_ingredient({ "se-heavy-bearing", 2 })
Recipe("mini-assembler-10"):add_ingredient({ "se-aeroframe-bulkhead", 5 })
Recipe("mini-assembler-10"):replace_ingredient("productivity-module-3", { "se-nanomaterial", 5 })
Recipe("mini-assembler-10"):replace_ingredient("low-density-structure", { "se-heavy-assembly", 2 })
Recipe("mini-assembler-10"):replace_ingredient("processing-unit", { "gr_materials_circuit", 10 })
Recipe("mini-assembler-10"):replace_ingredient("tungsten-carbide", { "se-naquium-cube", 1 })

data.raw["assembling-machine"]["mini-assembler-1"].crafting_categories = { "electronics" }
data.raw["assembling-machine"]["mini-assembler-2"].crafting_categories = { "electronics", "electronics-machine" }
data.raw["assembling-machine"]["mini-assembler-3"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-4"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-5"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-6"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-7"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-8"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-9"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-10"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }

-- Set crafting categories for selected recipes
Recipe("aluminum-cable"):change_category("electronics")
Recipe("basic-electronic-components"):change_category("electronics")
Recipe("basic-electronic-components-silver"):change_category("electronics")
Recipe("automation-core"):change_category("electronics")
Recipe("blank-tech-card"):change_category("electronics")
Recipe("electronic-components"):change_category("electronics-machine")
Recipe("advanced-electronic-components"):change_category("electronics-machine")
Recipe("gold-wire"):change_category("electronics-machine")
Recipe("integrated-circuit"):change_category("electronics-machine")
Recipe("tantalum-capacitor"):change_category("electronics-machine")
Recipe("temperature-sensor"):change_category("electronics-machine")
Recipe("mlcc"):change_category("electronics-machine")
Recipe("nickel-electromagnet"):change_category("electronics-machine")
Recipe("optical-fiber"):change_category("electronics-machine")
Recipe("silver-wire"):change_category("electronics-machine")
Recipe("tinned-cable"):change_category("electronics-machine")
Recipe("advanced-cable"):change_category("electronics-machine")
Recipe("advanced-processing-unit"):change_category("electronics-machine")
Recipe("advanced-cable"):change_category("electronics-machine")
Recipe("advanced-processing-unit"):change_category("electronics-machine")