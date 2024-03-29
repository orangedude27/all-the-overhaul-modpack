require("k2.dirty-water")
require("k2.biomass")

data:extend({
    -- Fix coke recipe
    {
        type = "recipe",
        name = "coke",
        category = "smelting",
        energy_required = 16,
        enabled = false,
        allow_productivity = true,
        ingredients = {
            { "coal", 6 },
            { "wood", 6 },
        },
        result = "coke",
        result_count = 6,
    }
})

local miningDrill3 = atom.util.Recipe("kr-electric-mining-drill-mk3")
miningDrill3.replaceIngredient("se-dynamic-emitter", "imersium-gear-wheel", 5)
miningDrill3.replaceIngredient("elite-gearbox", "advanced-gearbox", 4)
miningDrill3.replaceIngredient("se-heavy-composite", "nitinol-plate", 4)
miningDrill3.replaceIngredient("area-mining-drill", "kr-electric-mining-drill-mk2", 1)
miningDrill3.addIngredient("cobalt-carbide", 5)
miningDrill3.addIngredient("fu_materials_KFK", 6)
miningDrill3.addIngredient("processing-unit", 5)

data.raw.fluid["hydrogen"].fuel_value = "150kJ"