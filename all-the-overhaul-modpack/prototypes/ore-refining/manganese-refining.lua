-- #1
data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-manganese-ingot",
        icons = {
          { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-dust.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "atom-manganese-dust", amount = 20 }
        },
        results = {
			{ name = "manganese-ingot", amount = 4 },
		},
    }
})

data:extend({
	-- Iron molten
	{
        type = "recipe",
        name = "atom-manganese-molten",
        icons = {
          { icon = "__manganese__/graphics/icons/molten-manganese.png", icon_size = 128, },
          { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = "manganese-ingot", amount = 4 }
        },
        results = {
			{ type = "fluid", name = "molten-manganese", amount = 400 },
		},
    }
})

data:extend({
	-- Iron molten
	{
        type = "recipe",
        name = "atom-manganese-plate",
        icons = {
          { icon = "__manganese__/graphics/icons/manganese-plate.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__manganese__/graphics/icons/molten-manganese.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = "molten-manganese", amount = 400 }
        },
        results = {
			{ name = "manganese-plate", amount = 20 },
		},
    }
})

-- #2
data:extend({
	-- Iron enrichment
	{
        type = "recipe",
        name = "atom-manganese-enrichment",
        icons = {
          { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = "atom-manganese-dust", amount = 20 },
            { type = "fluid", name = "water", amount = 50 }
        },
        results = {
			{ name = "enriched-manganese", amount = 2 },
			{ type = "fluid", name = "dirty-water", amount = 50 }
		},
		main_product = "enriched-manganese",
    }
})

data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-manganese-ingot-enriched",
        icons = {
          { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128, },
          { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "enriched-manganese", amount = 2 },
            { name = "coke", amount = 2 },
        },
        results = {
			{ name = "manganese-ingot", amount = 6 },
		},
    }
})

-- #3
data:extend({
	-- Iron slurry
	{
        type = "recipe",
        name = "atom-manganese-slurry",
        icons = {
          { icon = "__manganese__/graphics/icons/crushed-manganese.png", icon_size = 128, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "atom-manganese-dust", amount = 20 },
            { type = "fluid", name = "sulfuric-acid", amount = 5 },
        },
        results = {
			{ name = "crushed-manganese", amount = 1 },
		},
		main_product = "crushed-manganese",
    }
})

data:extend({
	-- Iron enrichment
	{
        type = "recipe",
        name = "atom-manganese-enriched-pure",
        icons = {
          { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64, },
          { icon = "__manganese__/graphics/icons/crushed-manganese.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "crushed-manganese", amount = 1 },
            { type = "fluid", name = "water", amount = 75 }
        },
        results = {
			{ name = "enriched-manganese", amount = 3 },
			{ type = "fluid", name = "dirty-water", amount = 75 }
		},
		main_product = "enriched-manganese",
    }
})

-- #4
data:extend({
  {
    type = "item",
    name = "atom-manganese-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[manganese-pellet]",
    stack_size = 50,
    subgroup = "manganese",
  }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-manganese-pellets",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-pellets.png", icon_size = 128, },
          { icon = "__manganese__/graphics/icons/enriched-manganese.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "enriched-manganese", amount = 3 }
        },
        results = {
			{ name = "atom-manganese-pellets", amount = 4 },
		},
    }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-manganese-ingot-pellets",
        icons = {
          { icon = "__manganese__/graphics/icons/manganese-ingot.png", icon_size = 128, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-manganese-pellets.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-manganese-pellets", amount = 2 },
            { name = "quicklime", amount = 2 },
        },
        results = {
			{ name = "manganese-ingot", amount = 5 },
		},
    }
})

-- -- #5
-- -- Iron ingot + Manganese Ingot = 2x Molten Iron
-- data:extend({
-- 	-- Iron molten
-- 	{
--         type = "recipe",
--         name = "atom-iron-manganese-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-iron-ingot", amount = 4 },
-- 			{ name = "manganese-ingot", amount = 4 },
-- 			{ type="fluid", name="se-pyroflux", amount=10},
--         },
--         results = {
-- 			{ type = "fluid", name = "se-molten-iron", amount = 800 },
-- 		},
--     }
-- })
-- -- Iron ingot + Silicon Ingot = 2x Molten Iron

-- -- #6
-- -- Iron ingot + Cobalt Ingot + Nickel Ingot = 3x Molten Iron
-- data:extend({
-- 	-- Iron molten
-- 	{
--         type = "recipe",
--         name = "atom-iron-cobalt-nickel-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-iron-ingot", amount = 4 },
-- 			{ name = "cobalt-ingot", amount = 4 },
-- 			{ name = "nickel-ingot", amount = 4 },
-- 			{ type="fluid", name="se-pyroflux", amount=20},
--         },
--         results = {
-- 			{ type = "fluid", name = "se-molten-iron", amount = 1200 },
-- 		},
--     }
-- })
-- -- Iron ingot + Chrome Ingot + Nickel Ingot = 3x Molten Iron
-- data:extend({
-- 	-- Iron molten
-- 	{
--         type = "recipe",
--         name = "atom-iron-chrome-nickel-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-iron-ingot", amount = 4 },
-- 			{ name = "chromium-ingot", amount = 4 },
-- 			{ name = "nickel-ingot", amount = 4 },
-- 			{ type="fluid", name="se-pyroflux", amount=20},
--         },
--         results = {
-- 			{ type = "fluid", name = "se-molten-iron", amount = 1200 },
-- 		},
--     }
-- })
-- -- Iron ingot + Magnesium Ingot + Manganese Ingot = 3x Molten Iron
