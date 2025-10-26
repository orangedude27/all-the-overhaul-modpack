local Recipe_old = require('__jalm__/stdlib/data/recipe')

data.raw["assembling-machine"]["mini-assembler-1"].crafting_categories = { "electronics" }
data.raw["assembling-machine"]["mini-assembler-2"].crafting_categories = { "electronics", "electronics-machine" }
data.raw["assembling-machine"]["mini-assembler-3"].crafting_categories = { "electronics", "electronics-machine", "crafting-or-electromagnetics" }
data.raw["assembling-machine"]["mini-assembler-4"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-3"].crafting_categories)
data.raw["assembling-machine"]["mini-assembler-5"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-4"].crafting_categories)
data.raw["assembling-machine"]["mini-assembler-6"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-5"].crafting_categories)
data.raw["assembling-machine"]["mini-assembler-7"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-6"].crafting_categories)
data.raw["assembling-machine"]["mini-assembler-8"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-7"].crafting_categories)
data.raw["assembling-machine"]["mini-assembler-9"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-8"].crafting_categories)
data.raw["assembling-machine"]["mini-assembler-10"].crafting_categories = table.deepcopy(data.raw["assembling-machine"]["mini-assembler-9"].crafting_categories)

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