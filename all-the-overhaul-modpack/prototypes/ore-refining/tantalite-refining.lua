-- #1
data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-tantalum-ingot",
        icons = {
          { icon = "__Tantalite__/graphics/icons/tantalum-ingot.png", icon_size = 64, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-dust.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "atom-tantalite-dust", amount = 20 }
        },
        results = {
			{ name = "tantalum-ingot", amount = 4 },
		},
    }
})

data:extend({
	-- Iron molten
	{
        type = "recipe",
        name = "atom-tantalite-molten",
        icons = {
          { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64, },
          { icon = "__Tantalite__/graphics/icons/tantalum-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = "tantalum-ingot", amount = 4 }
        },
        results = {
			{ type = "fluid", name = "molten-tantalite", amount = 400 },
		},
    }
})

data:extend({
	-- Iron molten
	{
        type = "recipe",
        name = "atom-tantalum-plate",
        icons = {
          { icon = "__Tantalite__/graphics/icons/tantalum-plate.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Tantalite__/graphics/icons/molten-tantalite.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = "molten-tantalite", amount = 400 }
        },
        results = {
			{ name = "tantalum-plate", amount = 20 },
		},
    }
})

-- #2
data:extend({
	-- Iron enrichment
	{
        type = "recipe",
        name = "atom-tantalite-enrichment",
        icons = {
          { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = "atom-tantalite-dust", amount = 20 },
            { type = "fluid", name = "water", amount = 50 }
        },
        results = {
			{ name = "enriched-tantalite", amount = 2 },
			{ type = "fluid", name = "dirty-water", amount = 50 }
		},
		main_product = "enriched-tantalite",
    }
})

data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-tantalum-ingot-enriched",
        icons = {
          { icon = "__Tantalite__/graphics/icons/tantalum-ingot.png", icon_size = 64, },
          { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "enriched-tantalite", amount = 2 },
            { name = "coke", amount = 2 },
        },
        results = {
			{ name = "tantalum-ingot", amount = 6 },
		},
    }
})

-- #3
data:extend({
	-- Iron slurry
	{
        type = "recipe",
        name = "atom-tantalite-slurry",
        icons = {
          { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "atom-tantalite-dust", amount = 20 },
            { type = "fluid", name = "sulfuric-acid", amount = 5 },
        },
        results = {
			{ name = "fi-materials-pure-tantalum", amount = 1 },
		},
		main_product = "fi-materials-pure-tantalum",
    }
})

data:extend({
	-- Iron enrichment
	{
        type = "recipe",
        name = "atom-tantalite-enriched-pure",
        icons = {
          { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64, },
          { icon = "__Tantalite__/graphics/icons/fi-materials-pure-tantalum.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "fi-materials-pure-tantalum", amount = 1 },
            { type = "fluid", name = "water", amount = 75 }
        },
        results = {
			{ name = "enriched-tantalite", amount = 3 },
			{ type = "fluid", name = "dirty-water", amount = 75 }
		},
		main_product = "enriched-tantalite",
    }
})

-- #4
data:extend({
  {
    type = "item",
    name = "atom-tantalite-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[tantalite-pellet]",
    stack_size = 50,
    subgroup = "tantalite",
  }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-tantalite-pellets",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128, },
          { icon = "__Tantalite__/graphics/icons/enriched-tantalite.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "enriched-tantalite", amount = 3 }
        },
        results = {
			{ name = "atom-tantalite-pellets", amount = 4 },
		},
    }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-tantalum-ingot-pellets",
        icons = {
          { icon = "__Tantalite__/graphics/icons/tantalum-ingot.png", icon_size = 64, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tantalite-pellets.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-tantalite-pellets", amount = 2 },
            { name = "quicklime", amount = 2 },
        },
        results = {
			{ name = "tantalum-ingot", amount = 5 },
		},
    }
})

-- -- #5
-- -- Iron ingot + Manganese Ingot = 2x Molten Iron
-- data:extend({
-- 	-- Iron molten
-- 	{
--         type = "recipe",
--         name = "atom-iron-tantalite-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-iron-ingot", amount = 4 },
-- 			{ name = "tantalum-ingot", amount = 4 },
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
