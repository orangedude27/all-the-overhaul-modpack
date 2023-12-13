local flib_data_util = require('__flib__.data-util');

-- Modified K2 machines
data.raw["assembling-machine"]["kr-advanced-assembling-machine"].module_specification = { 
	module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
}

data.raw["assembling-machine"]["kr-advanced-chemical-plant"].module_specification = {
	module_slots = 6, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
}

--data.raw["assembling-machine"]["kr-filtration-plant"].localised_name = "Filtration Plant MK2"
data.raw["assembling-machine"]["kr-filtration-plant"].module_specification = {
	module_slots = 4, module_info_icon_shift = { 0, 0.8 }, module_info_icon_scale = 0.5 
}
data.raw["assembling-machine"]["kr-filtration-plant"].crafting_speed = 1.75
data.raw["assembling-machine"]["kr-filtration-plant"].energy_usage = "625kW"

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

-- Filtration plant
-- Original code from Seatorio by Rebecca-x https://mods.factorio.com/mod/SeaTorio
-- MK0
local t0_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "t0-filtration-plant")
t0_kr_filtration_plant_item.subgroup = "production-machine"
t0_kr_filtration_plant_item.order = "g[kr-filtration-plant-0]"
t0_kr_filtration_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t0-filtration-plant.png", icon_size = 64 }
}
data:extend({t0_kr_filtration_plant_item})

local t0_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "t0-filtration-plant")
t0_kr_filtration_plant.module_specification = { module_slots = 3}
t0_kr_filtration_plant.energy_usage = "500kW"
t0_kr_filtration_plant.crafting_speed = 1
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t0-filtration-plant"
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
				filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk0/hr-filtration-plant-working.png",
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
}
data:extend({t0_kr_filtration_plant})

-- MK2
local t2_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "t2-filtration-plant")
t2_kr_filtration_plant_item.subgroup = "production-machine"
t2_kr_filtration_plant_item.order = "g[kr-filtration-plant-2]"
t2_kr_filtration_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t2-filtration-plant.png", icon_size = 64 }
}
data:extend({t2_kr_filtration_plant_item})

local t2_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "t2-filtration-plant")
t2_kr_filtration_plant.module_specification = { module_slots = 5}
t2_kr_filtration_plant.energy_usage = "750kW"
t2_kr_filtration_plant.crafting_speed = 2.5
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t2-filtration-plant"
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
				filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk2/hr-filtration-plant-working.png",
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
}
data:extend({t2_kr_filtration_plant})

-- MK3
local t3_kr_filtration_plant_item = flib_data_util.copy_prototype(data.raw["item"]["kr-filtration-plant"], "t3-filtration-plant")
t3_kr_filtration_plant_item.subgroup = "production-machine"
t3_kr_filtration_plant_item.order = "g[kr-filtration-plant-3]"
t3_kr_filtration_plant_item.icons = {
	{ icon = "__all-the-overhaul-modpack__/graphics/icons/machines/t3-filtration-plant.png", icon_size = 64 }
}
data:extend({t3_kr_filtration_plant_item})

local t3_kr_filtration_plant = flib_data_util.copy_prototype(data.raw["assembling-machine"]["kr-filtration-plant"], "t3-filtration-plant")
t3_kr_filtration_plant.module_specification = { module_slots = 6}
t3_kr_filtration_plant.energy_usage = "875kW"
t3_kr_filtration_plant.crafting_speed = 3.75
data.raw["assembling-machine"]["kr-filtration-plant"].next_upgrade = "t3-filtration-plant"
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
				filename = "__all-the-overhaul-modpack__/graphics/entity/filtration-plant-mk3/hr-filtration-plant-working.png",
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
}
data:extend({t3_kr_filtration_plant})

data:extend({
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t0-filtration-plant",
        ingredients = {
			{"electric-engine-unit", 5},
			{"kr-filtration-plant", 1},	
			{"kr-steel-pipe", 4},
			{"tungsten-carbide", 5}
        },
		result = "t0-filtration-plant",
	},
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t2-filtration-plant",
        ingredients = {
			{"electric-engine-unit", 5},
			{"kr-filtration-plant", 1},	
			{"kr-steel-pipe", 4},
			{"tungsten-carbide", 5}
        },
		result = "t2-filtration-plant",
	},
	{
		type = "recipe",
		enabled = false,
		energy_required = 10,
		name = "t3-filtration-plant",
        ingredients = {
			{"electric-engine-unit", 5},
			{"t2-filtration-plant", 1},	
			{"kr-steel-pipe", 4},
			{"tungsten-carbide", 5}
        },
		result = "t3-filtration-plant",
	},
})