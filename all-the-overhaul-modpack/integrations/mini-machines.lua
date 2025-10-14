local Recipe_old = require('__jalm__/stdlib/data/recipe')

-- 01
local assembler1 = data.raw.recipe["mini-assembler-1"]
assembler1.crafting_categories = { "electronics" }
assembler1.ingredients = {
    { type = "item", name = "electric-motor", amount = 2 },
    { type = "item", name = "articulated-mechanism", amount = 2 },
    { type = "item", name = "kr-automation-core", amount = 3 },
    { type = "item", name = "aluminum-plate", amount = 4 }
}

-- 02
local assembler2 = data.raw.recipe["mini-assembler-2"]
assembler2.crafting_categories = { "electronics", "electronics-machine" }
assembler2.ingredients = {
    { type = "item", name = "mini-assembler-1", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "automation-core-2", amount = 1 },
    { type = "item", name = "silver-brazing-alloy", amount = 5 },
}

-- 03
local assembler3 = data.raw.recipe["mini-assembler-3"]
assembler3.crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
assembler3.ingredients = {
    { type = "item", name = "mini-assembler-2", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "automation-core-3", amount = 1 },
    { type = "item", name = "concrete", amount = 8 }
}

-- 04
local assembler4 = data.raw.recipe["mini-assembler-4"]
assembler4.crafting_categories = table.deepcopy(assembler3.crafting_categories)
assembler4.ingredients = {
    { type = "item", name = "mini-assembler-3", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "kr-imersium-gear-wheel", amount = 4 },
    { type = "item", name = "cermet", amount = 1 },
    { type = "item", name = "nitinol-plate", amount = 9 },
    { type = "item", name = "processing-unit", amount = 2 }
}

-- 05
local assembler5 = data.raw.recipe["mini-assembler-5"]
assembler5.crafting_categories = table.deepcopy(assembler4.crafting_categories)
assembler5.ingredients = {
    { type = "item", name = "mini-assembler-4", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cermet", amount = 1 },
    { type = "item", name = "processing-unit", amount = 5 },
    { type = "item", name = "cobalt-carbide", amount = 2 }
}

-- 06
local assembler6 = data.raw.recipe["mini-assembler-6"]
assembler6.crafting_categories = table.deepcopy(assembler5.crafting_categories)
assembler6.ingredients = {
    { type = "item", name = "mini-assembler-5", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "se-aeroframe-scaffold", amount = 5 },
    { type = "item", name = "advanced-processing-unit", amount = 5 }
}

-- 07
local assembler7 = data.raw.recipe["mini-assembler-7"]
assembler7.crafting_categories = table.deepcopy(assembler6.crafting_categories)
assembler7.ingredients = {
    { type = "item", name = "mini-assembler-6", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "advanced-processing-unit", amount = 5 },
    { type = "item", name = "se-heavy-bearing", amount = 2 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 5 },
    { type = "item", name = "steel-plate", amount = 6 }
}

-- 08
local assembler8 = data.raw.recipe["mini-assembler-8"]
assembler8.crafting_categories = table.deepcopy(assembler7.crafting_categories)
assembler8.ingredients = {
    { type = "item", name = "mini-assembler-7", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "se-heavy-bearing", amount = 2 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 5 },
    { type = "item", name = "steel-plate", amount = 6 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "kr-ai-core", amount = 1 },
    { type = "item", name = "gr_materials_circuit", amount = 5 }
}

-- 09
local assembler9 = data.raw.recipe["mini-assembler-9"]
assembler9.crafting_categories = table.deepcopy(assembler8.crafting_categories)
assembler9.ingredients = {
    { type = "item", name = "mini-assembler-8", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 5 },
    { type = "item", name = "se-heavy-bearing", amount = 2 },
    { type = "item", name = "gr_materials_circuit", amount = 10 },
    { type = "item", name = "kr-ai-core", amount = 1 },
    { type = "item", name = "se-nanomaterial", amount = 5 },
    { type = "item", name = "se-heavy-assembly", amount = 2 }
}

-- 10
local assembler10 = data.raw.recipe["mini-assembler-10"]
assembler10.crafting_categories = table.deepcopy(assembler9.crafting_categories)
assembler10.ingredients = {
    { type = "item", name = "mini-assembler-9", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 5 },
    { type = "item", name = "se-heavy-bearing", amount = 2 },
    { type = "item", name = "gr_materials_circuit", amount = 10 },
    { type = "item", name = "kr-ai-core", amount = 1 },
    { type = "item", name = "se-nanomaterial", amount = 5 },
    { type = "item", name = "se-heavy-assembly", amount = 2 },
    { type = "item", name = "se-naquium-cube", amount = 1 }
}


-- Set crafting categories for selected recipes
Recipe_old("aluminum-cable"):change_category("electronics")
Recipe_old("basic-electronic-components"):change_category("electronics")
Recipe_old("basic-electronic-components-silver"):change_category("electronics")
Recipe_old("kr-automation-core"):change_category("electronics")
Recipe_old("kr-blank-tech-card"):change_category("electronics")
Recipe_old("kr-electronic-components"):change_category("electronics-machine")
Recipe_old("advanced-electronic-components"):change_category("electronics-machine")
Recipe_old("gold-wire"):change_category("electronics-machine")
Recipe_old("integrated-circuit"):change_category("electronics-machine")
Recipe_old("tantalum-capacitor"):change_category("electronics-machine")
Recipe_old("temperature-sensor"):change_category("electronics-machine")
Recipe_old("mlcc"):change_category("electronics-machine")
Recipe_old("nickel-electromagnet"):change_category("electronics-machine")
Recipe_old("optical-fiber"):change_category("electronics-machine")
Recipe_old("silver-wire"):change_category("electronics-machine")
Recipe_old("tinned-cable"):change_category("electronics-machine")
Recipe_old("advanced-cable"):change_category("electronics-machine")
Recipe_old("advanced-processing-unit"):change_category("electronics-machine")
Recipe_old("advanced-cable"):change_category("electronics-machine")
Recipe_old("advanced-processing-unit"):change_category("electronics-machine")