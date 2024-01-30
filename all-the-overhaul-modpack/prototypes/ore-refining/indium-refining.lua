-- #1
data:extend({
  -- Iron ingot
  {
    type = "recipe",
    name = "atom-indium-ingot",
    icons = {
      { icon = "__Indium__/graphics/icons/indium-ingot.png",                       icon_size = 64, icon_mipmaps = 3, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-dust.png", icon_size = 32, scale = 0.5,      shift = { -8, -8 } },
    },
    category = "casting",
    energy_required = 28.8,
    ingredients = {
      { name = "atom-indium-dust", amount = 20 }
    },
    results = {
      { name = "indium-ingot", amount = 4 },
    },
  }
})

data:extend({
  -- Iron molten
  {
    type = "recipe",
    name = "atom-indium-molten",
    icons = {
      { icon = "__Indium__/graphics/icons/molten-indium.png", icon_size = 64, icon_mipmaps = 3, },
      { icon = "__Indium__/graphics/icons/indium-ingot.png",  icon_size = 64, scale = 0.25,     shift = { -8, -8 } },
    },
    category = "el_arc_furnace_category",
    energy_required = 14.4,
    ingredients = {
      { name = "indium-ingot", amount = 4 }
    },
    results = {
      { type = "fluid", name = "molten-indium", amount = 400 },
    },
  }
})

data:extend({
  -- Iron molten
  {
    type = "recipe",
    name = "atom-indium-plate",
    icons = {
      { icon = "__Indium__/graphics/icons/indium-plate.png",  icon_size = 64, icon_mipmaps = 3, },
      { icon = "__Indium__/graphics/icons/molten-indium.png", icon_size = 64, scale = 0.25,     shift = { -8, -8 } },
    },
    category = "el_caster_category",
    energy_required = 14.4,
    ingredients = {
      { type = "fluid", name = "molten-indium", amount = 400 }
    },
    results = {
      { name = "indium-plate", amount = 20 },
    },
  }
})

-- #2
data:extend({
  -- Iron enrichment
  {
    type = "recipe",
    name = "atom-indium-enrichment",
    icons = {
      { icon = "__Indium__/graphics/icons/enriched-indium.png", icon_size = 64, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-dust.png", icon_size = 32, scale = 0.5, shift = { -8, -8 } },
    },
    category = "fluid-filtration",
    energy_required = 11.25,
    ingredients = {
      { name = "atom-indium-dust", amount = 20 },
      { type = "fluid",            name = "water", amount = 50 }
    },
    results = {
      { name = "enriched-indium", amount = 2 },
      --{ name = "manganese-ore", probability = 0.8, amount = 1 },
      { type = "fluid",           name = "dirty-water", amount = 50 }
    },
    main_product = "enriched-indium",
  }
})

data:extend({
  -- Iron ingot
  {
    type = "recipe",
    name = "atom-indium-ingot-enriched",
    icons = {
      { icon = "__Indium__/graphics/icons/indium-ingot.png",    icon_size = 64, },
      { icon = "__Indium__/graphics/icons/enriched-indium.png", icon_size = 64, scale = 0.25, shift = { -8, -8 } },
    },
    category = "casting",
    energy_required = 18,
    ingredients = {
      { name = "enriched-indium", amount = 2 },
      { name = "coke",            amount = 2 },
    },
    results = {
      { name = "indium-ingot", amount = 6 },
    },
  }
})

-- #3
data:extend({
  {
    type = "item",
    name = "atom-indium-pure",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pure.png",
    icon_size = 64,
    icon_mipmaps = 1,
    order = "a[indium-pure]",
    stack_size = 50,
    subgroup = "indium",
  }
})

data:extend({
  -- Iron slurry
  {
    type = "recipe",
    name = "atom-indium-slurry",
    icons = {
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pure.png", icon_size = 64, icon_mipmaps = 3, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-dust.png", icon_size = 32, scale = 0.50,     shift = { -8, -8 } },
    },
    category = "el_purifier_category",
    energy_required = 5,
    ingredients = {
      { name = "atom-indium-dust", amount = 20 },
      { type = "fluid",            name = "sulfuric-acid", amount = 5 },
    },
    results = {
      { name = "atom-indium-pure", amount = 1 },
      { name = "nickel-ore",       amount = 1 },
    },
    main_product = "atom-indium-pure",
  }
})

data:extend({
  -- Iron enrichment
  {
    type = "recipe",
    name = "atom-indium-enriched-pure",
    icons = {
      { icon = "__Indium__/graphics/icons/enriched-indium.png",                    icon_size = 64, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pure.png", icon_size = 64, scale = 0.25, shift = { -8, -8 } },
    },
    category = "fluid-filtration",
    energy_required = 5,
    ingredients = {
      { name = "atom-indium-pure", amount = 1 },
      { type = "fluid",            name = "water", amount = 75 }
    },
    results = {
      { name = "enriched-indium", amount = 3 },
      --{ name = "manganese-ore", amount = 1 },
      { type = "fluid",           name = "dirty-water", amount = 75 }
    },
    main_product = "enriched-indium",
  }
})

-- #4
data:extend({
  {
    type = "item",
    name = "atom-indium-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[indium-pellet]",
    stack_size = 50,
    subgroup = "indium",
  }
})

data:extend({
  -- Iron pellets
  {
    type = "recipe",
    name = "atom-indium-pellets",
    icons = {
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pellets.png", icon_size = 128, },
      { icon = "__Indium__/graphics/icons/enriched-indium.png",                       icon_size = 64,  scale = 0.25, shift = { -8, -8 } },
    },
    category = "pulverising",
    energy_required = 5,
    ingredients = {
      { name = "enriched-indium", amount = 3 }
    },
    results = {
      { name = "atom-indium-pellets", amount = 4 },
    },
  }
})

data:extend({
  -- Iron pellets
  {
    type = "recipe",
    name = "atom-indium-ingot-pellets",
    icons = {
      { icon = "__Indium__/graphics/icons/indium-ingot.png",                          icon_size = 64,  icon_mipmaps = 3, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-indium-pellets.png", icon_size = 128, scale = 0.15,     shift = { -8, -8 } },
    },
    category = "casting",
    energy_required = 5,
    ingredients = {
      { name = "atom-indium-pellets", amount = 2 },
      { name = "quicklime",           amount = 2 },
    },
    results = {
      { name = "indium-ingot", amount = 5 },
    },
  }
})

-- -- #5
-- -- Iron ingot + Manganese Ingot = 2x Molten Iron
-- data:extend({
-- 	-- Iron molten
-- 	{
--         type = "recipe",
--         name = "atom-indium-manganese-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-indium.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/indium-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-indium-ingot", amount = 4 },
-- 			{ name = "manganese-ingot", amount = 4 },
-- 			{ type="fluid", name="se-pyroflux", amount=10},
--         },
--         results = {
-- 			{ type = "fluid", name = "se-molten-indium", amount = 800 },
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
--         name = "atom-indium-cobalt-nickel-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-indium.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/indium-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-indium-ingot", amount = 4 },
-- 			{ name = "cobalt-ingot", amount = 4 },
-- 			{ name = "nickel-ingot", amount = 4 },
-- 			{ type="fluid", name="se-pyroflux", amount=20},
--         },
--         results = {
-- 			{ type = "fluid", name = "se-molten-indium", amount = 1200 },
-- 		},
--     }
-- })
-- -- Iron ingot + Chrome Ingot + Nickel Ingot = 3x Molten Iron
-- data:extend({
-- 	-- Iron molten
-- 	{
--         type = "recipe",
--         name = "atom-indium-chrome-nickel-molten",
--         icons = {
--           { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-indium.png", icon_size = 64, icon_mipmaps = 3,},
--           { icon = "__space-exploration-graphics__/graphics/icons/indium-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
--         },
--         category = "el_arc_furnace_category",
--         energy_required = 14.4,
--         ingredients = {
--             { name = "se-indium-ingot", amount = 4 },
-- 			{ name = "chromium-ingot", amount = 4 },
-- 			{ name = "nickel-ingot", amount = 4 },
-- 			{ type="fluid", name="se-pyroflux", amount=20},
--         },
--         results = {
-- 			{ type = "fluid", name = "se-molten-indium", amount = 1200 },
-- 		},
--     }
-- })
-- -- Iron ingot + Magnesium Ingot + Manganese Ingot = 3x Molten Iron
