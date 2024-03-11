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

local technology = {
    type = "technology",
    name = "imersium-walls",
    icons = { icon },
    order = "a",
    prerequisites = { "steel-walls", "military-science-pack" },
    unit = {
        count = 400,
        ingredients = {
            { "space-science-pack", 1 },
            { "se-material-science-pack-1", 1 },
            { "military-science-pack", 1 },
        },
        time = 40
    }
}

local recipe = atom.util.Recipe({
    type = "recipe",
    name = item.name,
    category = "bioprocessing",
    enabled = false,
    energy_required = 1,
    normal = {
        ingredients = {
            { "steel-wall", 1 },
            { "imersium-plate", 5 }
        },
        results = { { type = "item", name = item.name, amount = 1 } }
    },
    expensive = {
        ingredients = {
            { "concrete-wall", 1 },
            { "imersium-plate", 10 }
        },
        results = { { type = "item", name = item.name, amount = 1 } }
    }
})
recipe.unlockedByTechnology(technology)

atom.util.applyAll({
    item,
    entity,
    recipe,
    technology
})

