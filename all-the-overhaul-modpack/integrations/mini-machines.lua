-- Changes to mini machine recipes
-- Move category assignments to mini-machines-final.lua because mini machines
-- overrides it in __mini-machines__/prototypes/copy-final-fixes.lua for some reason...

-- 01
local assembler1 = data.raw.recipe["mini-assembler-1"]
assembler1.ingredients = {
    { type = "item", name = "solder", amount = 2 },
    { type = "item", name = "electric-motor", amount = 2 },
    { type = "item", name = "articulated-mechanism", amount = 5 },
    { type = "item", name = "kr-automation-core", amount = 2 },
    { type = "item", name = "aluminum-plate", amount = 12 },
    { type = "item", name = "stone-brick", amount = 4 }
}

-- 02
local assembler2 = data.raw.recipe["mini-assembler-2"]
assembler2.ingredients = {
    { type = "item", name = "mini-assembler-1", amount = 1 },
    { type = "item", name = "solder", amount = 5 },
    { type = "item", name = "automation-core-2", amount = 2 },
    { type = "item", name = "silver-brazing-alloy", amount = 5 },
}

-- 03
local assembler3 = data.raw.recipe["mini-assembler-3"]
assembler3.ingredients = {
    { type = "item", name = "mini-assembler-2", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "advanced-electric-motor", amount = 4 },
    { type = "item", name = "automation-core-3", amount = 1 },
    { type = "item", name = "concrete", amount = 8 }
}

-- 04
local assembler4 = data.raw.recipe["mini-assembler-4"]
assembler4.ingredients = {
    { type = "item", name = "mini-assembler-3", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cermet", amount = 2 },
    { type = "item", name = "nitinol-plate", amount = 9 },
    { type = "item", name = "tungsten-carbide", amount = 2 }
}

-- 05
local assembler5 = data.raw.recipe["mini-assembler-5"]
assembler5.ingredients = {
    { type = "item", name = "mini-assembler-4", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cermet", amount = 2 },
    { type = "item", name = "processing-unit", amount = 5 },
    { type = "item", name = "cobalt-carbide", amount = 2 }
}

-- 06
local assembler6 = data.raw.recipe["mini-assembler-6"]
assembler6.ingredients = {
    { type = "item", name = "mini-assembler-5", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "se-aeroframe-scaffold", amount = 20 },
    { type = "item", name = "advanced-processing-unit", amount = 5 }
}

-- 07
local assembler7 = data.raw.recipe["mini-assembler-7"]
assembler7.ingredients = {
    { type = "item", name = "mini-assembler-6", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "hv-power-regulator", amount = 1 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "advanced-processing-unit", amount = 10 },
    { type = "item", name = "se-heavy-bearing", amount = 8 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 10 },
    { type = "item", name = "kr-imersium-beam", amount = 9 }
}

-- 08
local assembler8 = data.raw.recipe["mini-assembler-8"]
assembler8.ingredients = {
    { type = "item", name = "mini-assembler-7", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "se-heavy-bearing", amount = 8 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 10 },
    { type = "item", name = "kr-imersium-beam", amount = 9 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "kr-ai-core", amount = 1 },
    { type = "item", name = "gr_materials_circuit", amount = 10 }
}

-- 09
local assembler9 = data.raw.recipe["mini-assembler-9"]
assembler9.ingredients = {
    { type = "item", name = "mini-assembler-8", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "cobalt-carbide", amount = 2 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 10 },
    { type = "item", name = "se-heavy-bearing", amount = 8 },
    { type = "item", name = "gr_materials_circuit", amount = 15 },
    { type = "item", name = "kr-ai-core", amount = 1 },
    { type = "item", name = "se-nanomaterial", amount = 10 },
    { type = "item", name = "se-heavy-assembly", amount = 10 }
}

-- 10
local assembler10 = data.raw.recipe["mini-assembler-10"]
assembler10.ingredients = {
    { type = "item", name = "mini-assembler-9", amount = 1 },
    { type = "item", name = "solder", amount = 8 },
    { type = "item", name = "se-aeroframe-bulkhead", amount = 10 },
    { type = "item", name = "se-heavy-bearing", amount = 8 },
    { type = "item", name = "gr_materials_circuit", amount = 20 },
    { type = "item", name = "kr-ai-core", amount = 1 },
    { type = "item", name = "se-nanomaterial", amount = 10 },
    { type = "item", name = "se-heavy-assembly", amount = 10 },
    { type = "item", name = "se-naquium-cube", amount = 1 }
}