-- #1
data:extend({
    -- Lead ingot
    {
        type = "recipe",
        name = "atom-lead-ingot",
        icons = {
            { icon = "__bzlead__/graphics/icons/lead-ingot.png",  icon_size = 128, icon_mipmaps = 3, },
            { icon = "__bzlead__/graphics/icons/lead-powder.png", icon_size = 64,  scale = 0.5,      shift = { -8, -8 } },
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "lead-dust", type = "item", amount = 20 },
        },
        results = {
            { name = "lead-ingot", amount = 4 },
        },
    }
})

-- #2
-- Lead already has a way to make enriched ores
-- data:extend({
-- 	-- Iron enrichment
-- 	{
--         type = "recipe",
--         name = "atom-lead-enrichment",
--         icons = {
--           { icon = "__bzlead__/graphics/icons/enriched-lead.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__bzlead__/graphics/icons/lead-powder.png", icon_size = 64,  scale=0.50, shift= {-8, -8}},
--         },
--         category = "fluid-filtration",
--         energy_required = 11.25,
--         ingredients = {
--             { name = "lead-dust", amount = 20 },
--             { type = "fluid", name = "water", amount = 50 }
--         },
--         results = {
-- 			{ name = "enriched-lead", amount = 2 },
-- 			{ name = "manganese-ore", probability = 0.8, amount = 1 },
-- 			{ type = "fluid", name = "dirty-water", amount = 50 }
-- 		},
-- 		main_product = "enriched-iron",
--     }
-- })

data:extend({
    -- Lead ingot
    {
        type = "recipe",
        name = "atom-lead-ingot-enriched",
        icons = {
            { icon = "__bzlead__/graphics/icons/lead-ingot.png",    icon_size = 128, icon_mipmaps = 3, },
            { icon = "__bzlead__/graphics/icons/enriched-lead.png", icon_size = 64,  scale = 0.25,     shift = { -8, -8 } },
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "enriched-lead", amount = 2 },
            { name = "coke",          amount = 2 },
        },
        results = {
            { name = "lead-ingot", amount = 6 },
        },
    }
})

-- #3
data:extend({
    -- Lead slurry
    {
        type = "recipe",
        name = "atom-lead-slurry",
        icons = {
            { icon = "__bzlead__/graphics/icons/lead-powder.png",                          icon_size = 64, icon_mipmaps = 3 },
            { icon = "__248k__/ressources/fusion/fu_materials/fu_materials_pure_lead.png", icon_size = 64, scale = 0.25,    shift = { -8, -8 } },
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "lead-dust", amount = 20 },
            { type = "fluid",       name = "oxygen", amount = 5 },
        },
        results = {
            { name = "fu_materials_pure_lead", amount = 1 },
            { name = "silver-ore",             amount = 1 },
        },
        main_product = "fu_materials_pure_lead",
    }
})

data:extend({
    -- Lead enrichment
    {
        type = "recipe",
        name = "atom-lead-enriched-pure",
        icons = {
            { icon = "__bzlead__/graphics/icons/enriched-lead.png",                        icon_size = 64, icon_mipmaps = 3 },
            { icon = "__248k__/ressources/fusion/fu_materials/fu_materials_pure_lead.png", icon_size = 64, scale = 0.25,    shift = { -8, -8 } },
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "fu_materials_pure_lead", amount = 1 },
            { type = "fluid",                  name = "water", amount = 75 }
        },
        results = {
            { name = "enriched-lead", amount = 3 },
            { name = "silver-ore",    amount = 1 },
            { type = "fluid",         name = "dirty-water", amount = 75 }
        },
        main_product = "enriched-lead",
    }
})

-- #4
data:extend({
    {
        type = "item",
        name = "atom-lead-pellets",
        icon = "__all-the-overhaul-modpack__/graphics/icons/atom-lead-pellets.png",
        icon_size = 128,
        icon_mipmaps = 1,
        order = "a[lead-pellet]",
        stack_size = 50,
        subgroup = "lead",
    }
})

data:extend({
    -- Lead pellets
    {
        type = "recipe",
        name = "atom-lead-pellets",
        icons = {
            { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-lead-pellets.png", icon_size = 128, icon_mipmaps = 3, },
            { icon = "__bzlead__/graphics/icons/enriched-lead.png",                       icon_size = 64,  scale = 0.25,     shift = { -8, -8 } },
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "enriched-lead", amount = 3 }
        },
        results = {
            { name = "atom-lead-pellets", amount = 4 },
        },
    }
})

data:extend({
    -- Lead pellets
    {
        type = "recipe",
        name = "atom-lead-ingot-pellets",
        icons = {
            { icon = "__bzlead__/graphics/icons/lead-ingot.png",                          icon_size = 128, icon_mipmaps = 3, },
            { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-lead-pellets.png", icon_size = 128, scale = 0.15,     shift = { -8, -8 } },
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-lead-pellets", amount = 2 },
            { name = "quicklime",         amount = 2 },
            { name = "coke",              amount = 2 },
        },
        results = {
            { name = "lead-ingot", amount = 5 },
        },
    }
})
