-- Only use nuclear reactor mk2 and remove the rest
local Recipe = require("__stdlib__/stdlib/data/recipe")
for i = 2, 10 do
    Recipe("5d-steam-turbine-" .. string.format("%02d", i)):set_enabled(false)
    Recipe("5d-heat-exchanger-" .. string.format("%02d", i)):set_enabled(false)
    Recipe("5d-heat-pipe-" .. string.format("%02d", i)):set_enabled(false)
    if i >= 3 then
        Recipe("5d-nuclear-reactor-" .. string.format("%02d", i)):set_enabled(false)
    end
end
for i = 1, 9 do
    data.raw.technology["5d-steam-turbine-" .. i] = nil
    data.raw.technology["5d-heat-exchanger-" .. i] = nil
    data.raw.technology["5d-heat-pipe-" .. i] = nil
    if i >= 2 then
        data.raw.technology["5d-nuclear-reactor-" .. i] = nil
    end
end


-- Make reactor mk1 available with productivity tech card and nerf it
mk1Entity = data.raw.reactor["nuclear-reactor"]
mk1Entity.consumption = "100MW"
mk1Entity.neighbour_bonus = 0.25
mk1Entity.energy_source.fuel_categories = { "nuclear", "nuclear-advanced" }
mk1Entity.energy_source.fuel_inventory_size = 2
mk1Entity.energy_source.burnt_inventory_size = 2
mk1Entity.working_light_picture.filename = "__all-the-overhaul-modpack__/graphics/entity/nuclear-reactor/reactor-lights-color.png"
mk1Entity.working_light_picture.hr_version.filename = "__all-the-overhaul-modpack__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png"

atom.util.Recipe("nuclear-reactor").replaceIngredient("processing-unit", "advanced-circuit")

local mk1Tech = atom.util.Technology("nuclear-power")
mk1Tech.removeIngredient("se-rocket-science-pack")
mk1Tech.addIngredient("productivity-science-pack", 1)
mk1Tech.replacePrerequisite("uranium-processing", "thorium-fuel")

-- Adjust heat exchanger and turbine
data.raw.boiler["heat-exchanger"].energy_consumption = "20MW"

-- Adjust recipe for heat exchanger and steam turbine
atom.util.Recipe(data.raw.recipe["heat-exchanger"]).replaceIngredient("self-regulating-valve", "invar-valve")
atom.util.Recipe(data.raw.recipe["steam-turbine"]).replaceIngredient("self-regulating-valve", "invar-valve")

-- Adjust technology for uranium processing
atom.util.Technology("uranium-processing").replacePrerequisite("advanced-electronics-2", "5d-nuclear-reactor-01")


-- Adjust reactor mk2
-- Somehow the technology is marked as hidden/unavailable if it is not renamed and re-applied
mk2Tech = atom.util.Technology("5d-nuclear-reactor-1")
mk2Tech.prototype.unit.count = 200
mk2Tech.assign({
    name = "5d-nuclear-reactor",
    prerequisites = { "nuclear-power", "cobalt-electromagnet" },
})
mk2Tech.removeIngredient("production-science-pack")
mk2Tech.removeIngredient("utility-science-pack")
mk2Tech.apply()
data.raw.technology["5d-nuclear-reactor-1"] = nil

mk2Recipe = atom.util.Recipe("5d-nuclear-reactor-02")
mk2Recipe.addIngredient("cobalt-electromagnet", 100)
mk2Recipe.replaceIngredient("advanced-circuit", "processing-unit")
mk2Recipe.replaceIngredient("steel-plate", "se-heat-shielding")

mk2Entity = data.raw.reactor["5d-nuclear-reactor-02"]
mk2Entity.consumption = "200MW"
mk2Entity.neighbour_bonus = 1
mk2Entity.energy_source.fuel_categories = { "nuclear", "nuclear-advanced", "nuclear-high-energy" }
mk2Entity.energy_source.fuel_inventory_size = 3
mk2Entity.energy_source.burnt_inventory_size = 3
mk2Entity.working_light_picture.filename = "__all-the-overhaul-modpack__/graphics/entity/nuclear-reactor/reactor-lights-color.png"
mk2Entity.working_light_picture.hr_version.filename = "__all-the-overhaul-modpack__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png"