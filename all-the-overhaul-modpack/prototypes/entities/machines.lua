local flib_data_util = require('__flib__.data-util');

-- Modified 248K machines
data.raw.lab["fu_lab_entity"].se_allow_in_space = true
data.raw.lab["fu_lab_entity"].researching_speed = 20
data.raw.lab["fu_lab_entity"].module_specification = {
	module_slots = 9, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}

-- Modified K2 machines
data.raw["assembling-machine"]["kr-advanced-assembling-machine"].module_specification = {
	module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}

data.raw["assembling-machine"]["kr-advanced-chemical-plant"].module_specification = {
	module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}

data.raw["assembling-machine"]["kr-filtration-plant"].module_specification = {
	module_slots = 4, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}
data.raw["assembling-machine"]["kr-filtration-plant"].crafting_speed = 1.75
data.raw["assembling-machine"]["kr-filtration-plant"].energy_usage = "625kW"

data.raw["assembling-machine"]["kr-electrolysis-plant"].module_specification = {
	module_slots = 4, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}
data.raw["assembling-machine"]["kr-electrolysis-plant"].crafting_speed = 1.75
data.raw["assembling-machine"]["kr-electrolysis-plant"].energy_usage = "3.125MW"

data.raw["assembling-machine"]["kr-advanced-furnace"].module_specification = {
	module_slots = 8, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}

data.raw["assembling-machine"]["kr-advanced-furnace"].crafting_speed = 384
data.raw["assembling-machine"]["kr-advanced-furnace"].energy_usage = "300MW"
data.raw["assembling-machine"]["kr-advanced-furnace"].energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	emissions_per_minute = 192,
}

data.raw["lab"]["5d-lab-03"].module_specification = {
	module_slots = 3, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5
}

-- Filtration plant
-- Original code from Seatorio by Rebecca-x https://mods.factorio.com/mod/SeaTorio
-- MK0
local t0_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"],
	"t0-filtration-plant")
t0_kr_filtration_plant_item.subgroup = "production-machine"
t0_kr_filtration_plant_item.order = "g[kr-filtration-plant-0]"
t0_kr_filtration_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t0-filtration-plant.png", icon_size = 64 }
}
data:extend({ t0_kr_filtration_plant_item })

local t0_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"],
	"t0-filtration-plant")
t0_kr_filtration_plant.module_specification = { module_slots = 3 }
t0_kr_filtration_plant.energy_usage = "500kW"
t0_kr_filtration_plant.crafting_speed = 1
t0_kr_filtration_plant.next_upgrade = "kr-filtration-plant"
t0_kr_filtration_plant.animation = {
	layers = {
		{
			filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/filtration-plant.png",
			priority = "high",
			width = 230,
			height = 260,
			shift = { 0, -0.2 },
			frame_count = 1,
			scale = 1,
			hr_version = {
				filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/hr-filtration-plant.png",
				priority = "high",
				width = 460,
				height = 520,
				shift = { 0, -0.2 },
				frame_count = 1,
				scale = 0.5,
			},
		},
		{
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-sh.png",
			priority = "high",
			width = 249,
			height = 219,
			shift = { 0.33, 0.32 },
			frame_count = 1,
			scale = 1,
			draw_as_shadow = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-sh.png",
				priority = "high",
				width = 498,
				height = 438,
				shift = { 0.33, 0.32 },
				frame_count = 1,
				scale = 0.5,
				draw_as_shadow = true,
			},
		},
	},
}
t0_kr_filtration_plant.working_visualisations = {
	{
		animation = {
			filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/filtration-plant-working.png",
			priority = "high",
			width = 170,
			height = 185,
			shift = { 0.3, -0.59 },
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			scale = 1,
			hr_version = {
				filename =
				"__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/hr-filtration-plant-working.png",
				priority = "high",
				width = 340,
				height = 370,
				shift = { 0.3, -0.59 },
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				scale = 0.5,
			},
		},

	},
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-dirty-mask.png",
			width = 78,
			height = 60,
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			shift = { 1.61, -1.02 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-dirty-mask.png",
				width = 156,
				height = 120,
				scale = 0.5,
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				shift = { 1.61, -1.02 },
			},
		},
	},
	{
		apply_recipe_tint = "secondary",
		animation = {
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-clear-mask.png",
			width = 78,
			height = 60,
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			shift = { 1.61, 1.31 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-clear-mask.png",
				width = 156,
				height = 120,
				scale = 0.5,
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				shift = { 1.61, 1.31 },
			},
		},
	},
}
data:extend({ t0_kr_filtration_plant })

-- MK2
local t2_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"],
	"t2-filtration-plant")
t2_kr_filtration_plant_item.subgroup = "production-machine"
t2_kr_filtration_plant_item.order = "h[kr-filtration-plant-2]"
t2_kr_filtration_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-filtration-plant.png", icon_size = 64 }
}
data:extend({ t2_kr_filtration_plant_item })

local t2_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"],
	"t2-filtration-plant")
t2_kr_filtration_plant.module_specification = { module_slots = 5 }
t2_kr_filtration_plant.energy_usage = "750kW"
t2_kr_filtration_plant.crafting_speed = 2.5
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t2-filtration-plant"
t2_kr_filtration_plant.next_upgrade = "t3-filtration-plant"
t2_kr_filtration_plant.animation = {
	layers = {
		{
			filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/filtration-plant.png",
			priority = "high",
			width = 230,
			height = 260,
			shift = { 0, -0.2 },
			frame_count = 1,
			scale = 1,
			hr_version = {
				filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/hr-filtration-plant.png",
				priority = "high",
				width = 460,
				height = 520,
				shift = { 0, -0.2 },
				frame_count = 1,
				scale = 0.5,
			},
		},
		{
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-sh.png",
			priority = "high",
			width = 249,
			height = 219,
			shift = { 0.33, 0.32 },
			frame_count = 1,
			scale = 1,
			draw_as_shadow = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-sh.png",
				priority = "high",
				width = 498,
				height = 438,
				shift = { 0.33, 0.32 },
				frame_count = 1,
				scale = 0.5,
				draw_as_shadow = true,
			},
		},
	},
}
t2_kr_filtration_plant.working_visualisations = {
	{
		animation = {
			filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/filtration-plant-working.png",
			priority = "high",
			width = 170,
			height = 185,
			shift = { 0.3, -0.59 },
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			scale = 1,
			hr_version = {
				filename =
				"__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/hr-filtration-plant-working.png",
				priority = "high",
				width = 340,
				height = 370,
				shift = { 0.3, -0.59 },
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				scale = 0.5,
			},
		},
	},
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-dirty-mask.png",
			width = 78,
			height = 60,
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			shift = { 1.61, -1.02 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-dirty-mask.png",
				width = 156,
				height = 120,
				scale = 0.5,
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				shift = { 1.61, -1.02 },
			},
		},
	},
	{
		apply_recipe_tint = "secondary",
		animation = {
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-clear-mask.png",
			width = 78,
			height = 60,
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			shift = { 1.61, 1.31 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-clear-mask.png",
				width = 156,
				height = 120,
				scale = 0.5,
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				shift = { 1.61, 1.31 },
			},
		},
	},
}
data:extend({ t2_kr_filtration_plant })

-- MK3
local t3_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"],
	"t3-filtration-plant")
t3_kr_filtration_plant_item.subgroup = "production-machine"
t3_kr_filtration_plant_item.order = "i[kr-filtration-plant-3]"
t3_kr_filtration_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-filtration-plant.png", icon_size = 64 }
}
data:extend({ t3_kr_filtration_plant_item })

local t3_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"],
	"t3-filtration-plant")
t3_kr_filtration_plant.module_specification = { module_slots = 6 }
t3_kr_filtration_plant.energy_usage = "875kW"
t3_kr_filtration_plant.crafting_speed = 3.75
t3_kr_filtration_plant.animation = {
	layers = {
		{
			filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/filtration-plant.png",
			priority = "high",
			width = 230,
			height = 260,
			shift = { 0, -0.2 },
			frame_count = 1,
			scale = 1,
			hr_version = {
				filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/hr-filtration-plant.png",
				priority = "high",
				width = 460,
				height = 520,
				shift = { 0, -0.2 },
				frame_count = 1,
				scale = 0.5,
			},
		},
		{
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-sh.png",
			priority = "high",
			width = 249,
			height = 219,
			shift = { 0.33, 0.32 },
			frame_count = 1,
			scale = 1,
			draw_as_shadow = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-sh.png",
				priority = "high",
				width = 498,
				height = 438,
				shift = { 0.33, 0.32 },
				frame_count = 1,
				scale = 0.5,
				draw_as_shadow = true,
			},
		},
	},
}
t3_kr_filtration_plant.working_visualisations = {
	{
		animation = {
			filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/filtration-plant-working.png",
			priority = "high",
			width = 170,
			height = 185,
			shift = { 0.3, -0.59 },
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			scale = 1,
			hr_version = {
				filename =
				"__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/hr-filtration-plant-working.png",
				priority = "high",
				width = 340,
				height = 370,
				shift = { 0.3, -0.59 },
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				scale = 0.5,
			},
		},
	},
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-dirty-mask.png",
			width = 78,
			height = 60,
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			shift = { 1.61, -1.02 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-dirty-mask.png",
				width = 156,
				height = 120,
				scale = 0.5,
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				shift = { 1.61, -1.02 },
			},
		},
	},
	{
		apply_recipe_tint = "secondary",
		animation = {
			filename = "__Krastorio2Assets__/entities/filtration-plant/filtration-plant-clear-mask.png",
			width = 78,
			height = 60,
			frame_count = 30,
			line_length = 6,
			animation_speed = 0.6,
			shift = { 1.61, 1.31 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/filtration-plant/hr-filtration-plant-clear-mask.png",
				width = 156,
				height = 120,
				scale = 0.5,
				frame_count = 30,
				line_length = 6,
				animation_speed = 0.6,
				shift = { 1.61, 1.31 },
			},
		},
	},
}
data:extend({ t3_kr_filtration_plant })

-- Electrolysis plant
-- MK0
local t0_kr_electrolysis_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-electrolysis-plant"],
	"t0-electrolysis-plant")
t0_kr_electrolysis_plant_item.subgroup = "production-machine"
t0_kr_electrolysis_plant_item.order = "j[kr-electrolysis-plant-0]"
t0_kr_electrolysis_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t0-electrolysis-plant.png", icon_size = 64 }
}
data:extend({ t0_kr_electrolysis_plant_item })

local t0_kr_electrolysis_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-electrolysis-plant"],
	"t0-electrolysis-plant")
t0_kr_electrolysis_plant.module_specification = { module_slots = 3 }
t0_kr_electrolysis_plant.energy_usage = "2.5MW"
t0_kr_electrolysis_plant.crafting_speed = 1
t0_kr_electrolysis_plant.next_upgrade = "kr-electrolysis-plant"
t0_kr_electrolysis_plant.se_allow_in_space = true
t0_kr_electrolysis_plant.animation = {
	layers = {
		{
			filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk0/electrolysis-plant.png",
			width = 190,
			height = 190,
			frame_count = 1,
			shift = { 0, 0 },
			hr_version = {
				filename =
				"__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk0/hr-electrolysis-plant.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 1,
				shift = { 0, 0 },
			},
		},
		{
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
			width = 190,
			height = 190,
			frame_count = 1,
			draw_as_shadow = true,
			shift = { 0, 0 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 1,
				draw_as_shadow = true,
				shift = { 0, 0 },
			},
		},
	},
}
t0_kr_electrolysis_plant.working_visualisations = {
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
			width = 190,
			height = 190,
			frame_count = 12,
			line_length = 6,
			animation_speed = 0.4,
			shift = { 0, 0 },
			blend_mode = "additive",
			draw_as_glow = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 12,
				line_length = 6,
				animation_speed = 0.4,
				shift = { 0, 0 },
				blend_mode = "additive",
				draw_as_glow = true,
			},
		},
	},
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
			width = 190,
			height = 190,
			frame_count = 12,
			line_length = 6,
			animation_speed = 0.4,
			shift = { 0, 0 },
			draw_as_light = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 12,
				line_length = 6,
				animation_speed = 0.4,
				shift = { 0, 0 },
				draw_as_light = true,
			},
		},
	},
}
data:extend({ t0_kr_electrolysis_plant })

-- MK2
local t2_kr_electrolysis_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-electrolysis-plant"],
	"t2-electrolysis-plant")
t2_kr_electrolysis_plant_item.subgroup = "production-machine"
t2_kr_electrolysis_plant_item.order = "k[kr-electrolysis-plant-2]"
t2_kr_electrolysis_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-electrolysis-plant.png", icon_size = 64 }
}
data:extend({ t2_kr_electrolysis_plant_item })

local t2_kr_electrolysis_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-electrolysis-plant"],
	"t2-electrolysis-plant")
t2_kr_electrolysis_plant.module_specification = { module_slots = 5 }
t2_kr_electrolysis_plant.energy_usage = "4MW"
t2_kr_electrolysis_plant.crafting_speed = 2.5
data.raw["assembling-machine"]["kr-electrolysis-plant"].next_upgrade = "t2-electrolysis-plant"
t2_kr_electrolysis_plant.next_upgrade = "t3-electrolysis-plant"
t2_kr_electrolysis_plant.se_allow_in_space = true
t2_kr_electrolysis_plant.animation = {
	layers = {
		{
			filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk2/electrolysis-plant.png",
			width = 190,
			height = 190,
			frame_count = 1,
			shift = { 0, 0 },
			hr_version = {
				filename =
				"__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk2/hr-electrolysis-plant.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 1,
				shift = { 0, 0 },
			},
		},
		{
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
			width = 190,
			height = 190,
			frame_count = 1,
			draw_as_shadow = true,
			shift = { 0, 0 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 1,
				draw_as_shadow = true,
				shift = { 0, 0 },
			},
		},
	},
}
t2_kr_electrolysis_plant.working_visualisations = {
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
			width = 190,
			height = 190,
			frame_count = 12,
			line_length = 6,
			animation_speed = 0.4,
			shift = { 0, 0 },
			blend_mode = "additive",
			draw_as_glow = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 12,
				line_length = 6,
				animation_speed = 0.4,
				shift = { 0, 0 },
				blend_mode = "additive",
				draw_as_glow = true,
			},
		},
	},
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
			width = 190,
			height = 190,
			frame_count = 12,
			line_length = 6,
			animation_speed = 0.4,
			shift = { 0, 0 },
			draw_as_light = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 12,
				line_length = 6,
				animation_speed = 0.4,
				shift = { 0, 0 },
				draw_as_light = true,
			},
		},
	},
}
data:extend({ t2_kr_electrolysis_plant })

-- MK3
local t3_kr_electrolysis_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-electrolysis-plant"],
	"t3-electrolysis-plant")
t3_kr_electrolysis_plant_item.subgroup = "production-machine"
t3_kr_electrolysis_plant_item.order = "l[kr-electrolysis-plant-3]"
t3_kr_electrolysis_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-electrolysis-plant.png", icon_size = 64 }
}
data:extend({ t3_kr_electrolysis_plant_item })

local t3_kr_electrolysis_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-electrolysis-plant"],
	"t3-electrolysis-plant")
t3_kr_electrolysis_plant.module_specification = { module_slots = 6 }
t3_kr_electrolysis_plant.energy_usage = "5MW"
t3_kr_electrolysis_plant.crafting_speed = 3.75
t3_kr_electrolysis_plant.se_allow_in_space = true
t3_kr_electrolysis_plant.animation = {
	layers = {
		{
			filename = "__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk3/electrolysis-plant.png",
			width = 190,
			height = 190,
			frame_count = 1,
			shift = { 0, 0 },
			hr_version = {
				filename =
				"__all-the-overhaul-modpack__/graphics/entity/electrolysis-plant-mk3/hr-electrolysis-plant.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 1,
				shift = { 0, 0 },
			},
		},
		{
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-sh.png",
			width = 190,
			height = 190,
			frame_count = 1,
			draw_as_shadow = true,
			shift = { 0, 0 },
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-sh.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 1,
				draw_as_shadow = true,
				shift = { 0, 0 },
			},
		},
	},
}
t3_kr_electrolysis_plant.working_visualisations = {
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work.png",
			width = 190,
			height = 190,
			frame_count = 12,
			line_length = 6,
			animation_speed = 0.4,
			shift = { 0, 0 },
			blend_mode = "additive",
			draw_as_glow = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 12,
				line_length = 6,
				animation_speed = 0.4,
				shift = { 0, 0 },
				blend_mode = "additive",
				draw_as_glow = true,
			},
		},
	},
	{
		apply_recipe_tint = "primary",
		animation = {
			filename = "__Krastorio2Assets__/entities/electrolysis-plant/electrolysis-plant-work-light.png",
			width = 190,
			height = 190,
			frame_count = 12,
			line_length = 6,
			animation_speed = 0.4,
			shift = { 0, 0 },
			draw_as_light = true,
			hr_version = {
				filename = "__Krastorio2Assets__/entities/electrolysis-plant/hr-electrolysis-plant-work-light.png",
				width = 380,
				height = 380,
				scale = 0.5,
				frame_count = 12,
				line_length = 6,
				animation_speed = 0.4,
				shift = { 0, 0 },
				draw_as_light = true,
			},
		},
	},
}
data:extend({ t3_kr_electrolysis_plant })

--Recipes
data:extend({
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t0-filtration-plant",
		ingredients = {
			{ "galvanized-steel-plate", 10 },
			{ "automation-core",        3 },
			{ "flow-controller",        5 },
			{ "basic-chemical-plant",   1 },
			{ "glass",                  10 },
			{ "el_materials_ALK",       10 },
		},
		result = "t0-filtration-plant",
	},
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t2-filtration-plant",
		ingredients = {
			{ "imersium-beam",                  20 },
			{ "advanced-multi-cylinder-engine", 10 },
			{ "glass",                          10 },
			{ "kr-filtration-plant",            1 },
			{ "kr-steel-pipe",                  10 },
			{ "imersium-plate",                 20 },
			{ "tungsten-carbide",               5 },
			{ "el_materials_ALK",               20 },
		},
		result = "t2-filtration-plant",
	},
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t3-filtration-plant",
		ingredients = {
			{ "se-heavy-girder",                20 },
			{ "advanced-multi-cylinder-engine", 20 },
			{ "glass",                          10 },
			{ "t2-filtration-plant",            1 },
			{ "brass-pipe",                     10 },
			{ "se-iridium-plate",               20 },
			{ "tungsten-carbide",               5 },
			{ "el_materials_ALK",               20 },
		},
		result = "t3-filtration-plant",
	},

	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t0-electrolysis-plant",
		ingredients = {
			{ "galvanized-steel-plate", 10 },
			{ "automation-core",        3 },
			{ "flow-controller",        5 },
			{ "copper-plate",           10 },
			{ "glass",                  10 },
			{ "graphite",               10 },
			{ "el_materials_ALK",       10 },
		},
		result = "t0-electrolysis-plant",
	},
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t2-electrolysis-plant",
		ingredients = {
			{ "imersium-beam",                  20 },
			{ "advanced-multi-cylinder-engine", 10 },
			{ "glass",                          10 },
			{ "kr-electrolysis-plant",          1 },
			{ "kr-steel-pipe",                  10 },
			{ "rare-metals",                    20 },
			{ "hv-power-regulator",             5 },
			{ "tungsten-carbide",               5 },
			{ "el_materials_ALK",               20 },
		},
		result = "t2-electrolysis-plant",
	},
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t3-electrolysis-plant",
		ingredients = {
			{ "se-heavy-girder",                20 },
			{ "advanced-multi-cylinder-engine", 20 },
			{ "glass",                          10 },
			{ "t2-electrolysis-plant",          1 },
			{ "brass-pipe",                     10 },
			{ "se-holmium-plate",               20 },
			{ "hv-power-regulator",             5 },
			{ "tungsten-carbide",               5 },
			{ "el_materials_ALK",               20 },
		},
		result = "t3-electrolysis-plant",
	},
})

-- Lifted from bobassembler mod
local function fluid_energy_source()
	return {
		type = "fluid",
		emissions_per_minute = 3,
		burns_fluid = true,
		scale_fluid_usage = true,
		fluid_box = {
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_connections = {
				{ type = "input-output", position = { 1.5, 0.5 } },
				{ type = "input-output", position = { -1.5, 0.5 } },
			},
			pipe_covers = pipecoverspictures(),
			pipe_picture = assembler2pipepictures(),
			production_type = "input-output",
		},
		smoke = {
			{
				name = "smoke",
				frequency = 10,
				north_position = { 0.7, -1.2 },
				east_position = { 0.7, -1.2 },
				south_position = { 0.7, -1.2 },
				west_position = { 0.7, -1.2 },
				starting_vertical_speed = 0.08,
				starting_frame_deviation = 60,
			},
		},
	}
end

data:extend({
	{
		type = "item",
		name = "fluid-furnace",
		icon = "__base__/graphics/icons/steel-furnace.png",
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = "smelting-machine",
		order = "b[steela-furnace]",
		place_result = "fluid-furnace",
		stack_size = 50,
	},
	util.merge({
		data.raw.furnace["steel-furnace"],
		{
			name = "fluid-furnace",
			minable = { result = "fluid-furnace" },
		},
	}),
	{
		type = "recipe",
		name = "fluid-furnace",
		energy_required = 2,
		enabled = false,
		ingredients = {
			{ "steel-furnace", 1 },
			{ "pipe",          2 },
		},
		result = "fluid-furnace",
	},
	{
		type = "technology",
		name = "fluid-furnace",
		icon_size = 256,
		icon_mipmaps = 4,
		icon = "__base__/graphics/technology/advanced-material-processing.png",
		prerequisites = {
			"advanced-material-processing",
			"oil-processing",
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "fluid-furnace",
			},
		},
		unit = {
			count = 50,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack",   1 },
			},
			time = 30,
		},
		order = "c-c-a",
	},
})
data.raw.furnace["fluid-furnace"].energy_source = fluid_energy_source()
