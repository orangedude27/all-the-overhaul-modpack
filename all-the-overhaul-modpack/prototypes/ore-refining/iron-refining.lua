

data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-iron-ingot",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-iron-dust.png", icon_size = 32,  scale=0.5, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 28.8,
        ingredients = {
            { name = "5d-iron-dust", amount = 20 }
        },
        results = {
			{ name = "se-iron-ingot", amount = 4 },
		},
    }
})

data:extend({
	-- Iron molten
	{
        type = "recipe",
        name = "atom-iron-molten",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_arc_furnace_category",
        energy_required = 14.4,
        ingredients = {
            { name = "se-iron-ingot", amount = 4 }
        },
        results = {
			{ type = "fluid", name = "se-molten-iron", amount = 400 },
		},
    }
})

data:extend({
	-- Iron molten
	{
        type = "recipe",
        name = "atom-iron-plate",
        icons = {
          { icon = "__base__/graphics/icons/iron-plate.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__space-exploration-graphics__/graphics/icons/fluid/molten-iron.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_caster_category",
        energy_required = 14.4,
        ingredients = {
            { type = "fluid", name = "se-molten-iron", amount = 400 }
        },
        results = {
			{ name = "iron-plate", amount = 20 },
		},
    }
})

data:extend({
	-- Iron enrichment
	{
        type = "recipe",
        name = "atom-iron-enrichment",
        icons = {
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-iron/enriched-iron.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-iron-dust.png", icon_size = 32,  scale=0.50, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 11.25,
        ingredients = {
            { name = "5d-iron-dust", amount = 20 }
        },
        results = {
			{ name = "enriched-iron", amount = 2 },
		},
    }
})

data:extend({
	-- Iron ingot
	{
        type = "recipe",
        name = "atom-iron-ingot-enriched",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-iron/enriched-iron.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 18,
        ingredients = {
            { name = "enriched-iron", amount = 2 }
        },
        results = {
			{ name = "se-iron-ingot", amount = 6 },
		},
    }
})

data:extend({
	-- Iron slurry
	{
        type = "recipe",
        name = "atom-iron-slurry",
        icons = {
          { icon = "__OD27_5dim_resources__/graphics/icon/resources/5d-iron-dust.png", icon_size = 32, icon_mipmaps = 3,},
          { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_iron.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "el_purifier_category",
        energy_required = 5,
        ingredients = {
            { name = "5d-iron-dust", amount = 20 }
        },
        results = {
			{ name = "el_materials_pure_iron", amount = 1 },
		},
    }
})

data:extend({
	-- Iron enrichment
	{
        type = "recipe",
        name = "atom-iron-enriched-pure",
        icons = {
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-iron/enriched-iron.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__248k__/ressources/electronic/el_materials/el_materials_pure_iron.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "fluid-filtration",
        energy_required = 5,
        ingredients = {
            { name = "el_materials_pure_iron", amount = 1 }
        },
        results = {
			{ name = "enriched-iron", amount = 3 },
		},
    }
})

data:extend({
  {
    type = "item",
    name = "atom-iron-pellets",
    icon = "__all-the-overhaul-modpack__/graphics/icons/atom-iron-pellets.png",
    icon_size = 128,
    icon_mipmaps = 1,
    order = "a[iron-pellet]",
    stack_size = 50,
    subgroup = "iron",
  }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-iron-pellets",
        icons = {
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-iron-pellets.png", icon_size = 128, icon_mipmaps = 3,},
          { icon = "__Krastorio2Assets__/icons/items-with-variations/enriched-iron/enriched-iron.png", icon_size = 64,  scale=0.25, shift= {-8, -8}},
        },
        category = "pulverising",
        energy_required = 5,
        ingredients = {
            { name = "enriched-iron", amount = 3 }
        },
        results = {
			{ name = "atom-iron-pellets", amount = 4 },
		},
    }
})

data:extend({
	-- Iron pellets
	{
        type = "recipe",
        name = "atom-iron-ingot-pellets",
        icons = {
          { icon = "__space-exploration-graphics__/graphics/icons/iron-ingot.png", icon_size = 64, icon_mipmaps = 3,},
          { icon = "__all-the-overhaul-modpack__/graphics/icons/atom-iron-pellets.png", icon_size = 128,  scale=0.15, shift= {-8, -8}},
        },
        category = "casting",
        energy_required = 5,
        ingredients = {
            { name = "atom-iron-pellets", amount = 2 }
        },
        results = {
			{ name = "se-iron-ingot", amount = 5 },
		},
    }
})