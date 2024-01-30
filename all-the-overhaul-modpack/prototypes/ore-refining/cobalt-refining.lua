-- #1
data:extend({
	-- Cobalt ingot
	{
        type = "recipe",
        name = "atom-cobalt-ingot",
        icons = {
          { icon = "__Cobalt__/graphics/icons/cobalt-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-dust.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "atom-cobalt-dust", amount = 20 }
        },
        results = {
			{ name = "cobalt-ingot", amount = 4 },
		},
    }
})

data:extend({
	-- Cobalt molten
	{
        type = "recipe",
        name = "atom-cobalt-molten",
        icons = {
          { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Cobalt__/graphics/icons/cobalt-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = "cobalt-ingot", amount = 4 }
        },
        results = {
			{ type = "fluid", name = "molten-cobalt", amount = 400 },
		},
    }
})

data:extend({
	-- Cobalt molten
	{
        type = "recipe",
        name = "atom-cobalt-plate",
        icons = {
          { icon = "__Cobalt__/graphics/icons/cobalt-plate.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Cobalt__/graphics/icons/molten-cobalt.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = "molten-cobalt", amount = 400 }
        },
        results = {
			{ name = "cobalt-plate", amount = 20 },
		},
    }
})

-- #2
data:extend({
	-- Cobalt enrichment
	{
        type = "recipe",
        name = "atom-cobalt-enrichment",
        icons = {
          { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = "atom-cobalt-dust", amount = 20 },
            { type = "fluid", name = "water", amount = 50 }
        },
        results = {
			{ name = "enriched-cobalt", amount = 2 },
--			{ name = "manganese-ore", probability = 0.8, amount = 1 },
			{ type = "fluid", name = "dirty-water", amount = 50 }
		},
		main_product = "enriched-cobalt",
    }
})

data:extend({
	-- Cobalt ingot
	{
        type = "recipe",
        name = "atom-cobalt-ingot-enriched",
        icons = {
          { icon = "__Cobalt__/graphics/icons/cobalt-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "enriched-cobalt", amount = 2 },
            { name = "coke", amount = 2 },
        },
        results = {
			{ name = "cobalt-ingot", amount = 6 },
		},
    }
})

-- #3
data:extend({
	-- Cobalt slurry
	{
        type = "recipe",
        name = "atom-cobalt-slurry",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-dust.png", icon_size = 32, icon_mipmaps = 3,},
          { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "atom-cobalt-dust", amount = 20 },
            { type = "fluid", name = "sulfuric-acid", amount = 5 },
        },
        results = {
			{ name = "fi-materials-pure-cobalt", amount = 1 },
--			{ name = "nickel-ore", amount = 1 },
		},
		main_product = "fi-materials-pure-cobalt",
    }
})

data:extend({
	-- Cobalt enrichment
	{
        type = "recipe",
        name = "atom-cobalt-enriched-pure",
        icons = {
          { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Cobalt__/graphics/icons/fi-materials-pure-cobalt.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "fi-materials-pure-cobalt", amount = 1 },
            { type = "fluid", name = "water", amount = 75 }
        },
        results = {
			{ name = "enriched-cobalt", amount = 3 },
--			{ name = "manganese-ore", amount = 1 },
			{ type = "fluid", name = "dirty-water", amount = 75 }
		},
		main_product = "enriched-cobalt",
    }
})

-- #4
data:extend({
  {
    type = "item",
    name = "atom-cobalt-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[cobalt-pellet]",
    stack_size = 50,
    subgroup = "cobalt",
  }
})

data:extend({
	-- Cobalt pellets
	{
        type = "recipe",
        name = "atom-cobalt-pellets",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-pellets.png", icon_size = 128, icon_mipmaps = 3,},
          { icon = "__Cobalt__/graphics/icons/enriched-cobalt.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "enriched-cobalt", amount = 3 }
        },
        results = {
			{ name = "atom-cobalt-pellets", amount = 4 },
		},
    }
})

data:extend({
	-- Cobalt pellets
	{
        type = "recipe",
        name = "atom-cobalt-ingot-pellets",
        icons = {
          { icon = "__Cobalt__/graphics/icons/cobalt-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-cobalt-pellets.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-cobalt-pellets", amount = 2 },
            { name = "quicklime", amount = 2 },
        },
        results = {
			{ name = "cobalt-ingot", amount = 5 },
		},
    }
})