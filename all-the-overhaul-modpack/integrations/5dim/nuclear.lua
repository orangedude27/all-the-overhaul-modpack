-- Nuclear energy is not added to ATOM

-- Recipes

local Recipe = require('__stdlib__/stdlib/data/recipe')

for i = 2, 10 do
    Recipe("5d-steam-turbine-" .. string.format("%02d", i)):set_enabled(false)
    Recipe("5d-heat-exchanger-" .. string.format("%02d", i)):set_enabled(false)
    Recipe("5d-heat-pipe-" .. string.format("%02d", i)):set_enabled(false)
    Recipe("5d-nuclear-reactor-" .. string.format("%02d", i)):set_enabled(false)
end


-- Technologies

for i = 1, 9 do
    bobmods.lib.tech.hide("5d-steam-turbine-" .. i)
    bobmods.lib.tech.hide("5d-heat-exchanger-" .. i)
    bobmods.lib.tech.hide("5d-heat-pipe-" .. i)
    bobmods.lib.tech.hide("5d-nuclear-reactor-" .. i)
end