-- #1
data:extend({
  -- Iron ingot
  {
    type = "recipe",
    name = "atom-tin-ingot",
    icons = {
      { icon = "__bztin__/graphics/icons/tin-ingot.png",                          icon_size = 128, },
      { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-tin-dust.png", icon_size = 32,  scale = 0.5, shift = { -8, -8 } },
    },
    category = "casting",
    energy_required = 28.8,
    ingredients = {
      { name = "atom-tin-dust", amount = 20 }
    },
    results = {
      { name = "tin-ingot", amount = 4 },
    },
  }
})

data:extend({
  -- Iron molten
  {
    type = "recipe",
    name = "atom-tin-molten",
    icons = {
      { icon = "__bztin__/graphics/icons/molten-tin.png", icon_size = 128, },
      { icon = "__bztin__/graphics/icons/tin-ingot.png",  icon_size = 128, scale = 0.15, shift = { -8, -8 } },
    },
    category = "el_arc_furnace_category",
    energy_required = 14.4,
    ingredients = {
      { name = "tin-ingot", amount = 4 }
    },
    results = {
      { type = "fluid", name = "molten-tin", amount = 400 },
    },
  }
})

data:extend({
  -- Iron molten
  {
    type = "recipe",
    name = "atom-tin-plate",
    icons = {
      { icon = "__bztin__/graphics/icons/tin-plate.png",  icon_size = 128,  icon_mipmaps = 3, },
      { icon = "__bztin__/graphics/icons/molten-tin.png", icon_size = 128, scale = 0.15,     shift = { -8, -8 } },
    },
    category = "el_caster_category",
    energy_required = 14.4,
    ingredients = {
      { type = "fluid", name = "molten-tin", amount = 400 }
    },
    results = {
      { name = "tin-plate", amount = 20 },
    },
  }
})

-- #2
data:extend({
  -- Iron enrichment
  {
    type = "recipe",
    name = "atom-tin-enrichment",
    icons = {
      { icon = "__bztin__/graphics/icons/enriched-tin.png",                       icon_size = 128, },
      { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-tin-dust.png", icon_size = 32, scale = 0.50, shift = { -8, -8 } },
    },
    category = "fluid-filtration",
    energy_required = 11.25,
    ingredients = {
      { name = "atom-tin-dust", amount = 20 },
      { type = "fluid",         name = "water", amount = 50 }
    },
    results = {
      { name = "enriched-tin", amount = 2 },
      { type = "fluid",        name = "dirty-water", amount = 50 }
    },
    main_product = "enriched-tin",
  }
})

data:extend({
  -- Iron ingot
  {
    type = "recipe",
    name = "atom-tin-ingot-enriched",
    icons = {
      { icon = "__bztin__/graphics/icons/tin-ingot.png",    icon_size = 128, },
      { icon = "__bztin__/graphics/icons/enriched-tin.png", icon_size = 128,  scale = 0.15, shift = { -8, -8 } },
    },
    category = "casting",
    energy_required = 18,
    ingredients = {
      { name = "enriched-tin", amount = 2 },
      { name = "coke",         amount = 2 },
    },
    results = {
      { name = "tin-ingot", amount = 6 },
    },
  }
})

-- #3
data:extend({
  {
    type = "item",
    name = "atom-tin-pure",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pure.png",
    icon_size = 64,
    icon_mipmaps = 1,
    order = "a[tin-pure]",
    stack_size = 50,
    subgroup = "tin",
  }
})

data:extend({
  -- Iron slurry
  {
    type = "recipe",
    name = "atom-tin-slurry",
    icons = {
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pure.png",   icon_size = 64, },
      { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-tin-dust.png", icon_size = 32, scale = 0.50, shift = { -8, -8 } },
    },
    category = "el_purifier_category",
    energy_required = 5,
    ingredients = {
      { name = "atom-tin-dust", amount = 20 },
      { type = "fluid",         name = "sulfuric-acid", amount = 5 },
    },
    results = {
      { name = "atom-tin-pure", amount = 1 },
    },
    main_product = "atom-tin-pure",
  }
})

data:extend({
  -- Iron enrichment
  {
    type = "recipe",
    name = "atom-tin-enriched-pure",
    icons = {
      { icon = "__bztin__/graphics/icons/enriched-tin.png", icon_size = 128, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pure.png", icon_size = 64, scale = 0.25, shift = { -8, -8 } },
    },
    category = "fluid-filtration",
    energy_required = 5,
    ingredients = {
      -- This needs to be replaced with a pure version of tin
      { name = "atom-tin-pure", amount = 1 },
      { type = "fluid",   name = "water", amount = 75 }
    },
    results = {
      { name = "enriched-tin", amount = 3 },
      { type = "fluid",        name = "dirty-water", amount = 75 }
    },
    main_product = "enriched-tin",
  }
})

-- #4
data:extend({
  {
    type = "item",
    name = "atom-tin-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[tin-pellet]",
    stack_size = 50,
    subgroup = "tin",
  }
})

data:extend({
  -- Iron pellets
  {
    type = "recipe",
    name = "atom-tin-pellets",
    icons = {
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pellets.png", icon_size = 128, },
      { icon = "__bztin__/graphics/icons/enriched-tin.png",                        icon_size = 128,  scale = 0.15, shift = { -8, -8 } },
    },
    category = "pulverising",
    energy_required = 5,
    ingredients = {
      { name = "enriched-tin", amount = 3 }
    },
    results = {
      { name = "atom-tin-pellets", amount = 4 },
    },
  }
})

data:extend({
  -- Iron pellets
  {
    type = "recipe",
    name = "atom-tin-ingot-pellets",
    icons = {
      { icon = "__bztin__/graphics/icons/tin-ingot.png",                           icon_size = 128, },
      { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-tin-pellets.png", icon_size = 128, scale = 0.15, shift = { -8, -8 } },
    },
    category = "casting",
    energy_required = 5,
    ingredients = {
      { name = "atom-tin-pellets", amount = 2 },
      { name = "atom-carbon",      amount = 2 },
    },
    results = {
      { name = "tin-ingot", amount = 5 },
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
