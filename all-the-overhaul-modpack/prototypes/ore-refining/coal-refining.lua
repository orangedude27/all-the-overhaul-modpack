data:extend({	
	{
		type = "recipe",
		name = "carbon",
		category = "smelting",
		energy_required = 1,
		enabled = false,
		allow_productivity = true,
		ingredients = {
			{ "atom-coal-dust", 1 }
		},
		result = "atom-carbon",
		result_count = 1,
	},
	{
        type = "recipe",
        name = "atom-coal-dust",
        icon = "__all-the-overhaul-modpack__/graphics/icons/atom-coal-dust.png", icon_size = 32, icon_mipmaps = 3,
        category = "mashering",
        energy_required = 3.2,
        ingredients = {
            {"coal", 1}
        },
        result = "atom-coal-dust",
		result_count = 2,
    },
})