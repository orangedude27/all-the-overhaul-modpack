--- Replaces filenames with new ones
local function replaceFilenames(value, oldPath, newPath)
    if value.filename then
        value.filename = string.replace(value.filename, oldPath, newPath)
    end
    for _, sub in pairs(value) do
        if (type(sub) == "table") then
            replaceFilenames(sub, oldPath, newPath)
        end
    end
end

local icon = { icon = "__all-the-overhaul-modpack__/graphics/icons/imersium-wall.png", icon_size = 64, icon_mipmaps = 1 }

local item = {
    type = "item",
    name = "imersium-wall",
    icons = { icon },
    order = "a[stone-wall]a[steel-wall]-c[imersium-wall]",
    place_result = "imersium-wall",
    stack_size = 50,
    subgroup = "defensive-structure",
}

local entity = table.deepcopy(data.raw.wall["stone-wall"])
table.assign(entity, {
    name = item.name,
    icons = { icon },
    max_health = 2000,
    next_upgrade = nil,
    hide_resistances = false,
    resistances = {
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
    },
    mined_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 1.0 }
})
entity.minable.result = item.name
replaceFilenames(entity.pictures, "__aai-industry__", "__all-the-overhaul-modpack__")
replaceFilenames(entity.pictures, "stone-wall", "imersium-wall")

data:extend({
    item,
    entity,
    {
        type = "recipe",
        name = "imersium-wall",
        category = "bioprocessing",
        enabled = false,
        energy_required = 1,
        normal = {
            ingredients = {
                { "steel-wall", 1 },
                { "imersium-plate", 5 }
            },
            results = { { type = "item", name = "imersium-wall", amount = 1 } }
        },
        expensive = {
            ingredients = {
                { "concrete-wall", 1 },
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
            { type = "fluid", name = "oxygen", amount = 1000 },
            { "stone", 100 },
            { "wood", 100 },
            { "coke", 100 },
            { "raw-fish", 5 }
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
            { "copper-ore", 10 },
            { "lead-ore", 10 },
            { "tin-ore", 10 },
            { "zinc-ore", 10 }
        },
        results = {
            { type = "item", name = "bismuth-ore", amount = 5 },
        }
    }
})

