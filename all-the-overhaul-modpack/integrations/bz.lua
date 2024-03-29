-- Recipe balancing

-- Basic electronic components with silver
local componentsRecipe = atom.util.Recipe("basic-electronic-components-silver")
componentsRecipe.replaceIngredient("silver-wire", 5)
componentsRecipe.replaceIngredient("graphite", 5)

-- Electric motor with silver
atom.util.Recipe("electric-motor-silver").replaceIngredient("silver-wire", 1)

-- Add coke and coal to graphite recipes
data:extend({
    {
        type = "recipe",
        name = "raw-graphite-coke",
        icons = {
            { icon = "__Nylon__/graphics/icons/raw-graphite.png", icon_size = 128 },
            atom.util.icon.createSmallIcon({ icon = "__Krastorio2Assets__/icons/items-with-variations/coke/coke.png", icon_size = 64, icon_mipmaps = 4 })
        },
        category = "biofarm-mod-smelting",
        order = "d[graphite]",
        enabled = false,
        energy_required = 1.6,
        ingredients = { { "coke", 1 } },
        results = { { "raw-graphite", 1 } },
    },
    {
        type = "recipe",
        name = "raw-graphite-charcoal",
        icons = {
            { icon = "__Nylon__/graphics/icons/raw-graphite.png", icon_size = 128 },
            atom.util.icon.createSmallIcon({ icon = "__Bio_Industries__/graphics/icons/charcoal.png", icon_size = 64, icon_mipmaps = 4 })
        },
        category = "biofarm-mod-smelting",
        order = "d[graphite]",
        enabled = false,
        energy_required = 1.6,
        ingredients = { { "wood-charcoal", 1 } },
        results = { { "raw-graphite", 1 } },
    },
    {
        type = "recipe",
        name = "raw-graphite-coal",
        icons = {
            { icon = "__Nylon__/graphics/icons/raw-graphite.png", icon_size = 128 },
            atom.util.icon.createSmallIcon(atom.processing.materials.coal.icons.dust)
        },
        category = "biofarm-mod-smelting",
        order = "d[graphite]",
        enabled = false,
        energy_required = 1.6,
        ingredients = { { atom.processing.materials.coal.itemNames.dust, 2 } },
        results = { { "raw-graphite", 1 } },
    }
})
table.insert(data.raw.technology["bi-tech-coal-processing-1"].effects, { type = "unlock-recipe", recipe = "raw-graphite-coke" })
table.insert(data.raw.technology["bi-tech-coal-processing-1"].effects, { type = "unlock-recipe", recipe = "raw-graphite-charcoal" })
table.insert(data.raw.technology["bi-tech-coal-processing-1"].effects, { type = "unlock-recipe", recipe = "raw-graphite-coal" })