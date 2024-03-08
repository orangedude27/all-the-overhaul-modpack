-- Military stuff is not added to ATOM

-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

for i = 2, 10 do
    Recipe("5d-stone-wall-" .. string.format("%02d", i)):set_enabled(false)
    Recipe("5d-gate-" .. string.format("%02d", i)):set_enabled(false)
end


-- Technologies

for i = 1, 9 do
    bobmods.lib.tech.hide("stone-wall-" .. i)
    bobmods.lib.tech.hide("gate-" .. i)
end