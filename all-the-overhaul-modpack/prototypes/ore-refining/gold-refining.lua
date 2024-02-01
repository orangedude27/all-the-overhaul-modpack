-- #1
data:extend({
	-- Gold ingot
	{
        type = "recipe",
        name = "atom-gold-ingot",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/gold-ingot.png", icon_size = 64, },
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-gold-dust.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "atom-gold-dust", amount = 20 }
        },
        results = {
			{ name = "gold-ingot", amount = 4 },
		},
    }
})

data:extend({
	-- Gold molten
	{
        type = "recipe",
        name = "atom-gold-molten",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/molten-gold.png", icon_size = 64, },
          { icon = "__ThemTharHills__/graphics/icons/gold-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = "gold-ingot", amount = 4 }
        },
        results = {
			{ type = "fluid", name = "molten-gold", amount = 400 },
		},
    }
})

data:extend({
	-- Gold molten
	{
        type = "recipe",
        name = "atom-gold-plate",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/gold-plate.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__ThemTharHills__/graphics/icons/molten-gold.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = "molten-gold", amount = 400 }
        },
        results = {
			{ name = "fi_materials_gold", amount = 20 },
		},
    }
})

-- #2
data:extend({
	-- Gold enrichment
	{
        type = "recipe",
        name = "atom-gold-enrichment",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64, },
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-gold-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = "atom-gold-dust", amount = 20 },
            { type = "fluid", name = "water", amount = 50 }
        },
        results = {
			{ name = "gold-powder", amount = 2 },
			{ type = "fluid", name = "dirty-water", amount = 50 }
		},
		main_product = "gold-powder",
    }
})

data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-gold-ingot-enriched",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/gold-ingot.png", icon_size = 64, },
          { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64, scale=0.25, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "gold-powder", amount = 2 },
            { name = "coke", amount = 2 },
        },
        results = {
			{ name = "gold-ingot", amount = 6 },
		},
    }
})

-- #3
data:extend({
	-- Gold slurry
	{
        type = "recipe",
        name = "atom-gold-slurry",
        icons = {
          { icon = "__248k__/ressources/fission/fi_materials/fi_materials_pure_gold.png", icon_size = 64, },
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-gold-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "atom-gold-dust", amount = 20 },
            { type = "fluid", name = "sulfuric-acid", amount = 5 },
        },
        results = {
			{ name = "fi_materials_pure_gold", amount = 1 },
		},
		main_product = "fi_materials_pure_gold",
    }
})

data:extend({
	-- Gold enrichment
	{
        type = "recipe",
        name = "atom-gold-enriched-pure",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64, },
          { icon = "__248k__/ressources/fission/fi_materials/fi_materials_pure_gold.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "fi_materials_pure_gold", amount = 1 },
            { type = "fluid", name = "water", amount = 75 }
        },
        results = {
			{ name = "gold-powder", amount = 3 },
			{ type = "fluid", name = "dirty-water", amount = 75 }
		},
		main_product = "gold-powder",
    }
})

-- #4
data:extend({
  {
    type = "item",
    name = "atom-gold-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-gold-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[gold-pellet]",
    stack_size = 50,
    subgroup = "gold",
  }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-gold-pellets",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-gold-pellets.png", icon_size = 128, },
          { icon = "__ThemTharHills__/graphics/icons/gold-powder.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "gold-powder", amount = 3 }
        },
        results = {
			{ name = "atom-gold-pellets", amount = 4 },
		},
    }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-gold-ingot-pellets",
        icons = {
          { icon = "__ThemTharHills__/graphics/icons/gold-ingot.png", icon_size = 64, },
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-gold-pellets.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-gold-pellets", amount = 2 },
            { name = "quicklime", amount = 2 },
        },
        results = {
			{ name = "gold-ingot", amount = 5 },
		},
    }
})