data:extend({
	-- copper ingot
	{
        type = "recipe",
        name = "atom-copper-ingot",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/copper-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "5d-copper-dust", amount = 20 }
        },
        results = {
			{ name = "se-copper-ingot", amount = 4 },
		},
    }
})

data:extend({
	-- copper molten
	{
        type = "recipe",
        name = "atom-copper-molten",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-copper.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__space-exploration-graphics__/graphics/icons/copper-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = "se-copper-ingot", amount = 4 }
        },
        results = {
			{ type = "fluid", name = "se-molten-copper", amount = 400 },
		},
    }
})

data:extend({
	-- copper molten
	{
        type = "recipe",
        name = "atom-copper-plate",
        icons = {
          { icon = "__base__/graphics/icons/copper-plate.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-copper.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = "se-molten-copper", amount = 400 }
        },
        results = {
			{ name = "copper-plate", amount = 20 },
		},
    }
})

data:extend({
	-- copper enrichment
	{
        type = "recipe",
        name = "atom-copper-enrichment",
        icons = {
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = "5d-copper-dust", amount = 20 }
        },
        results = {
			{ name = "enriched-copper", amount = 2 },
		},
    }
})

data:extend({
	-- copper ingot
	{
        type = "recipe",
        name = "atom-copper-ingot-enriched",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/copper-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "enriched-copper", amount = 2 }
        },
        results = {
			{ name = "se-copper-ingot", amount = 6 },
		},
    }
})

data:extend({
	-- copper slurry
	{
        type = "recipe",
        name = "atom-copper-slurry",
        icons = {
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-copper-dust.png", icon_size = 32, icon_mipmaps = 3,},
          { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_copper.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "5d-copper-dust", amount = 20 }
        },
        results = {
			{ name = "el_materials_pure_copper", amount = 1 },
		},
    }
})

data:extend({
	-- copper enrichment
	{
        type = "recipe",
        name = "atom-copper-enriched-pure",
        icons = {
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_copper.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "el_materials_pure_copper", amount = 1 }
        },
        results = {
			{ name = "enriched-copper", amount = 3 },
		},
    }
})

data:extend({
  {
    type = "item",
    name = "atom-copper-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-copper-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[copper-pellet]",
    stack_size = 50,
    subgroup = "copper",
  }
})

data:extend({
	-- copper pellets
	{
        type = "recipe",
        name = "atom-copper-pellets",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-copper-pellets.png", icon_size = 128, icon_mipmaps = 3,},
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-copper/enriched-copper.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "enriched-copper", amount = 3 }
        },
        results = {
			{ name = "atom-copper-pellets", amount = 4 },
		},
    }
})

data:extend({
	-- copper pellets
	{
        type = "recipe",
        name = "atom-copper-ingot-pellets",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/copper-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-copper-pellets.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-copper-pellets", amount = 2 }
        },
        results = {
			{ name = "se-copper-ingot", amount = 5 },
		},
    }
})