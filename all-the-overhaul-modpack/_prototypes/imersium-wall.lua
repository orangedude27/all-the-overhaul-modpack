local util = require("_data-util")

--Add new items
data:extend({
  {
    type = "item",
    name = "imersium-wall",
    icon = "__all-the-overhaul-modpack__/graphics/icons/imersium-wall.png",
    icon_size = 64,
    icon_mipmaps = 1,
    order = "a[stone-wall]a[steel-wall]-c[imersium-wall]",
    place_result = "imersium-wall",
    stack_size = 50,
    subgroup = "defensive-structure",
  }
})

--Take a copy of stone walls
local imersium = table.deepcopy(data.raw.wall["stone-wall"])
--adjust properties of new item to what we are trying to make
imersium.name = "imersium-wall"
imersium.minable.result = "imersium-wall"
imersium.icon = data.raw.item["imersium-wall"].icon
imersium.icon_size = data.raw.item["imersium-wall"].icon_size
imersium.icon_mipmaps = data.raw.item["imersium-wall"].icon_mipmaps
util.replace_filenames_recursive(imersium.pictures, "__aai-industry__", "__all-the-overhaul-modpack__")
--util.replace_filenames_recursive(imersium.pictures, "entity/wall", "entity/stone-wall")
util.replace_filenames_recursive(imersium.pictures, "stone-wall", "imersium-wall")
imersium.max_health = 2000
imersium.next_upgrade = nil
imersium.hide_resistances = false
imersium.resistances = {
    {
        decrease = 20,
        percent = 90,
        type = "physical"
    },
    {
        decrease = 45,
        percent = 90,
        type = "impact"
    },
    {
        decrease = 100,
        percent = 90,
        type = "explosion"
    },
    {
        percent = 100,
        type = "fire"
    },
    {
        percent = 80,
        type = "acid"
    },
    {
        percent = 80,
        type = "laser"
    },
    {
        percent = 80,
        type = "poison"
    }
}

imersium.mined_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 }
imersium.vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 }
data:extend({ imersium })

--Adding new recipies
data:extend
({
  {
    type = "recipe",
    name = "imersium-wall",
    category = "bioprocessing",
    enabled = false,
    energy_required = 1,
    normal = {
      ingredients =
      {
        { "steel-wall",     1 },
        { "imersium-plate", 5 }
      },
      results = { { type = "item", name = "imersium-wall", amount = 1 } }
    },
    expensive = {
      ingredients =
      {
        { "concrete-wall",  1 },
        { "imersium-plate", 10 }
      },
      results = { { type = "item", name = "imersium-wall", amount = 1 } }
    }
  },
  {
    type = "recipe",
    name = "ato-biomass-growing",
    category = "chemistry",
    enabled = true,
    energy_required = 100,
    ingredients = {
      { type = "fluid", name = "petroleum-gas", amount = 1000 },
      { type = "fluid", name = "oxygen",        amount = 1000 },
      { "stone",        100 },
      { "wood",         100 },
      { "coke",         100 },
      { "raw-fish",     5 }
    },
    results = {
      { type = "item", name = "biomass", amount = 5 },
    }
  },
  {
    type = "recipe",
    name = "ato-bismuth-sorting",
    category = "el_purifier_category",
    enabled = true,
    energy_required = 100,
    ingredients = {
      { type = "fluid", name = "water", amount = 50 },
      { "copper-ore",   10 },
      { "lead-ore",     10 },
      { "tin-ore",      10 },
      { "zinc-ore",     10 }
    },
    results = {
      { type = "item", name = "bismuth-ore", amount = 5 },
    }
  }
})

