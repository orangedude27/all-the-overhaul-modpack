-- Entities

local entity1 = data.raw["assembling-machine"]["bi-cokery"]
local layer1 = entity1.graphics_set.animation.layers[1]
local layer2 = table.deepcopy(layer1)
table.assign(layer2, {
    filename = "__all-the-overhaul-modpack__/graphics/entity/cokery/cokery_sheet_mask.png",
    blend_mode = "normal",
    tint = { r = 0.74, g = 0.59, b = 0, a = 1 }
})
entity1.graphics_set.animation = {
    layers = {
        layer1,
        layer2
    }
},
table.assign(entity1, {
    icons = {
        {
            icon = "__all-the-overhaul-modpack__/graphics/icons/cokery-1.png",
            icon_size = 256,
            icon_mipmaps = 4
        }
    },
    crafting_speed = 1,
    energy_source = {
        type = "burner",
        fuel_inventory_size = 1,
        effectivity = 0.8,
        emissions_per_minute = { pollution = 10 },
        fuel_categories = { "chemical" },
        smoke = {
            {
                name = "smoke",
                tape = "trival-smoke",
                frequency = 60,
                position = { 0, -3 },
                duration = 1
            },
        },
    },
    energy_usage = "192kW",
    fast_replaceable_group = "cokery",
    next_upgrade = "bi-cokery-2"
})
entity1.module_slots = nil
entity1.icon = nil
entity1.icon_size = nil
entity1.ingredient_count = nil

local entity2 = table.deepcopy(entity1)
entity2.icons[1].icon = "__all-the-overhaul-modpack__/graphics/icons/cokery-2.png"
entity2.graphics_set.animation.layers[2].tint = { r = 0.82, g = 0.08, b = 0, a = 1 }
entity2.minable.result = "bi-cokery-2"
table.insert(entity2.allowed_effects, "productivity")
table.assign(entity2, {
    name = "bi-cokery-2",
    module_slots = 2,
    crafting_speed = 2,
    energy_source = {
        type = "electric",
        input_priority = "secondary",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 10 },
    },
    energy_usage = "320kW",
    fast_replaceable_group = "cokery",
    next_upgrade = "bi-cokery-3"
})

local entity3 = table.deepcopy(entity2)
entity3.icons[1].icon = "__all-the-overhaul-modpack__/graphics/icons/cokery-3.png"
entity3.graphics_set.animation.layers[2].tint = { r = 0, g = 0.57, b = 0.74, a = 1 }
entity3.next_upgrade = nil
entity3.module_slots = 4
entity3.energy_source.emissions_per_minute = { pollution = 20 }
entity3.minable.result = "bi-cokery-3"
table.assign(entity3, {
    name = "bi-cokery-3",
    crafting_speed = 4,
    energy_usage = "400kW",
    fast_replaceable_group = "cokery"
})


-- Items

local item1 = data.raw.item["bi-cokery"]
item1.icons = entity1.icons
item1.subgroup = "cokery"
item1.stack_size = 50

local item2 = table.deepcopy(item1)
item2.name = "bi-cokery-2"
item2.place_result = "bi-cokery-2"
item2.icons = entity2.icons

local item3 = table.deepcopy(item2)
item3.name = "bi-cokery-3"
item3.place_result = "bi-cokery-3"
item3.icons = entity3.icons


-- Recipes

local recipe1 = atom.util.Recipe("bi-cokery")
recipe1.prototype.localised_name = nil
recipe1.prototype.localised_description = nil
recipe1.prototype.icons = entity1.icons
recipe1.prototype.subgroup = "cokery"
recipe1.prototype.order = "[z]"
recipe1.replaceIngredient("steel-plate", "kr-iron-beam", 10, 12)
recipe1.addIngredient("stone-brick", 10, 12)

local recipe2 = recipe1.clone("bi-cokery-2")
recipe2.prototype.icons = entity2.icons
recipe2.replaceIngredient("stone-furnace", "bi-cokery", 1)
recipe2.replaceIngredient("stone-brick", "concrete")
recipe2.replaceIngredient("kr-iron-beam", "kr-steel-beam")
recipe2.replaceResult("bi-cokery", "bi-cokery-2")
recipe2.apply()

local recipe3 = recipe2.clone("bi-cokery-3")
recipe3.prototype.icons = entity3.icons
recipe3.replaceIngredient("bi-cokery", "bi-cokery-2")
recipe3.replaceIngredient("concrete", "se-heat-shielding")
recipe3.replaceIngredient("kr-steel-beam", "titanium-plate")
recipe3.replaceResult("bi-cokery-2", "bi-cokery-3")
recipe3.apply()

local woodToCoalRecipe = atom.util.Recipe({
    type = "recipe",
    name = "wood-to-coal",
    category = "biofarm-mod-smelting",
    icons = {
        { icon = "__base__/graphics/icons/coal.png", icon_size = 64, icon_mipmaps = 4 },
        atom.util.icon.createSmallIcon({ icon = "__base__/graphics/icons/wood.png", icon_size = 64, icon_mipmaps = 4 })
    },
    enabled = false,
    energy_required = 2.66,
    ingredients = {
        { type = "item", name = "wood", amount = 4 }
    },
    results = {
        { type = "item", name = "coal", amount = 1 }
    },
    subgroup = "coal",
    allow_as_intermediate = false
})
woodToCoalRecipe.unlockedByTechnology("bi-tech-coal-processing-2")
woodToCoalRecipe.apply()

local woodPulpToCoalDustRecipe = atom.util.Recipe({
    type = "recipe",
    name = "wood-pulp-to-coal-dust",
    category = "biofarm-mod-smelting",
    icons = {
        atom.processing.materials.coal.icons.dust,
        atom.util.icon.createSmallIcon({ icon = "__Bio_Industries_2__/graphics/icons/woodpulp_64.png", icon_size = 64 })
    },
    enabled = false,
    energy_required = 1.77,
    ingredients = {
        { type = "item", name = "bi-woodpulp", amount = 3 }
    },
    results = {
        { type = "item", name = "atom-coal-dust", amount = 1 }
    },
    subgroup = "coal",
    allow_as_intermediate = false
})
woodPulpToCoalDustRecipe.unlockedByTechnology("bi-tech-coal-processing-2")
woodPulpToCoalDustRecipe.apply()

local coalDustToCokeRecipe = atom.util.Recipe({
    type = "recipe",
    name = "coal-dust-to-coke",
    category = "biofarm-mod-smelting",
    icons = {
        { icon = "__Krastorio2Assets__/icons/items/coke.png", icon_size = 64, icon_mipmaps = 4 },
        atom.util.icon.createSmallIcon(atom.processing.materials.coal.icons.dust)
    },
    enabled = false,
    energy_required = 2.66,
    ingredients = {
        { type = "item", name = "atom-coal-dust", amount = 3 }
    },
    results = {
        { type = "item", name = "kr-coke", amount = 1 }
    },
    subgroup = "coal",
    allow_as_intermediate = false
})
coalDustToCokeRecipe.allowProductivity()
coalDustToCokeRecipe.unlockedByTechnology("bi-tech-coal-processing-2")
coalDustToCokeRecipe.apply()

local coalDustToRawGraphiteRecipe = atom.util.Recipe({
    type = "recipe",
    name = "coal-dust-to-raw-graphite",
    icons = {
        { icon = "__Nylon2__/graphics/icons/raw-graphite.png", icon_size = 128 },
        atom.util.icon.createSmallIcon(atom.processing.materials.coal.icons.dust)
    },
    category = "biofarm-mod-smelting",
    subgroup = "carbon",
    order = "h[graphite]",
    enabled = false,
    energy_required = 3.2,
    ingredients = {
        { type = "item", name = "atom-coal-dust", amount = 3 }
    },
    results = {
        { type = "item", name = "raw-graphite", amount = 1 }
    },
})
coalDustToRawGraphiteRecipe.allowProductivity()
coalDustToRawGraphiteRecipe.unlockedByTechnology("bi-tech-coal-processing-2")
coalDustToRawGraphiteRecipe.apply()


-- Technologies

local tech1 = {
    type = "technology",
    name = "cokery-1",
    level = 1,
    max_level = 1,
    icons = entity1.icons,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bi-cokery"
        },
        {
            type = "unlock-recipe",
            recipe = "kr-coke"
        },
        {
            type = "unlock-recipe",
            recipe = "phenol"
        }
    },
    prerequisites = {
        "automation-science-pack"
    },
    unit = {
        count = 50,
        ingredients = {
            { "kr-basic-tech-card", 1 },
            { "automation-science-pack", 1 },
        },
        time = 10
    }
}

local tech2 = table.deepcopy(tech1)
table.assign(tech2, {
    name = "cokery-2",
    level = 2,
    max_level = 2,
    icons = entity2.icons,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bi-cokery-2"
        }
    },
    prerequisites = {
        "cokery-1",
        "concrete",
        "chemical-science-pack"
    },
    unit = {
        count = 100,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 }
        },
        time = 20
    }
})

local tech3 = table.deepcopy(tech2)
table.assign(tech3, {
    name = "cokery-3",
    level = 3,
    max_level = 3,
    icons = entity3.icons,
    effects = {
        {
            type = "unlock-recipe",
            recipe = "bi-cokery-3"
        }
    },
    prerequisites = {
        "cokery-2",
        "productivity-science-pack",
        "se-rocket-science-pack"
    },
    unit = {
        count = 150,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "productivity-science-pack", 1 },
            { "se-rocket-science-pack", 1 }
        },
        time = 30
    }
})

local coalTech2 = atom.util.Technology("bi-tech-coal-processing-2")
coalTech2.replacePrerequisite("chemical-science-pack", "productivity-science-pack")
coalTech2.addIngredient("productivity-science-pack", 1)
coalTech2.prototype.unit.count = 250

data.raw.technology["bi-tech-coal-processing-3"] = nil

data:extend({
    entity2,
    entity3,
    item2,
    item3,
    tech1,
    tech2,
    tech3
})
