atom.stage = "final-fixes"

require("_data-final-fixes")

require("content.fixes")
require("integrations.fixes")
require("compatibility.fixes")

-- for some reason normal pipes sometimes don't have the correct collision_mask, so just force them to match the steel pipes
data.raw["pipe"]["pipe"].collision_mask = data.raw["pipe"]["kr-steel-pipe"].collision_mask
data.raw["pipe-to-ground"]["pipe-to-ground"].collision_mask = data.raw["pipe-to-ground"]["kr-steel-pipe-to-ground"].collision_mask

data:extend({
    -- Fix stone brick recipe
    {
        type = "recipe",
        name = "stone-brick",
        category = "smelting",
        energy_required = 16,
        enabled = true,
        allow_productivity = true,
        ingredients = {
            { "stone", 5 },
            { "zircon", 5 },
        },
        result = "stone-brick",
        result_count = 5,
    }
})

-- Final balancing
atom.util.Recipe("steel-plate").replaceIngredient("iron-plate", 10)
atom.util.Recipe("rail").addIngredient("concrete", 2)

-- Fix prerequisites for artillery shell techs
atom.util.Technology("artillery-shell-range-1").addPrerequisite("utility-science-pack")
atom.util.Technology("artillery-shell-speed-1").addPrerequisite("utility-science-pack")

require("integrations.final")