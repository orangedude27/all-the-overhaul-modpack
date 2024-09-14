if mods["dredgeworks"] then
    function createSmallItemIcon()
        return atom.util.icon.createSmallIcon({ icon = "__base__/graphics/icons/fluid/water.png", icon_size = 64, icon_mipmaps = 4 }, "bottom-left")
    end

    function createSmallTechIcon()
        return {
            icon = "__base__/graphics/icons/fluid/water.png",
            icon_size = 64,
            icon_mipmaps = 4,
            scale = 0.5,
            shift = { -16, 16 }
        }
    end

    -- mk1
    table.assign(data.raw["mining-drill"]["seafloor-drill"], {
        fast_replaceable_group = "seafloor-drill",
        next_upgrade = "seafloor-drill-mk2",
        icons = {
            { icon = "__base__/graphics/icons/electric-mining-drill.png", icon_size = 64, icon_mipmaps = 4 },
            createSmallItemIcon()
        }
    })
    data.raw.item["seafloor-drill"].icons = data.raw["mining-drill"]["seafloor-drill"].icons
    data.raw.technology["floating-drill-technology"].icons = {
        data.raw["mining-drill"]["seafloor-drill"].icons[1],
        createSmallTechIcon()
    }

    -- mk2
    local drill2 = table.deepcopy(data.raw["mining-drill"]["kr-electric-mining-drill-mk2"])
    table.assign(drill2, {
        name = "seafloor-drill-mk2",
        minable = { mining_time = 0.5, result = "seafloor-drill-mk2" },
        collision_mask = { 'ground-tile', 'object-layer' },
        fast_replaceable_group = "seafloor-drill",
        next_upgrade = "seafloor-drill-mk3",
        icons = {
            { icon = drill2.icon, icon_size = drill2.icon_size, icon_mipmaps = drill2.icon_mipmaps },
            createSmallItemIcon()
        }
    });
    data:extend({
        drill2,
        {
            type = "item",
            name = "seafloor-drill-mk2",
            icons = drill2.icons,
            flags = {},
            subgroup = "extraction-machine",
            order = "b[seafloor-drill-2]-a[offshore-pump]",
            place_result = "seafloor-drill-mk2",
            stack_size = 50
        },
        {
            type = "recipe",
            name = "seafloor-drill-mk2",
            enabled = false,
            energy_required = 1,
            ingredients = {
                { "flotation-platform", 4 },
                { "kr-electric-mining-drill-mk2", 1 }
            },
            result = "seafloor-drill-mk2",
            result_count = 1
        },
        {
            type = "technology",
            name = "floating-drill-mk2-technology",
            icons = {
                drill2.icons[1],
                createSmallTechIcon()
            },
            effects = {
                { type = "unlock-recipe", recipe = "seafloor-drill-mk2" }
            },
            prerequisites = { "floating-drill-technology", "kr-electric-mining-drill-mk2" },
            unit = {
                count = 50,
                ingredients = {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 }
                },
                time = 20
            },
            order = "c-k-a",
        }
    })

    -- mk3
    local drill3 = table.deepcopy(data.raw["mining-drill"]["kr-electric-mining-drill-mk3"])
    table.assign(drill3, {
        name = "seafloor-drill-mk3",
        minable = { mining_time = 0.5, result = "seafloor-drill-mk3" },
        collision_mask = { 'ground-tile', 'object-layer' },
        fast_replaceable_group = "seafloor-drill",
        next_upgrade = nil,
        icons = {
            { icon = drill3.icon, icon_size = drill3.icon_size, icon_mipmaps = drill3.icon_mipmaps },
            createSmallItemIcon()
        }
    });
    data:extend({
        drill3,
        {
            type = "item",
            name = "seafloor-drill-mk3",
            icons = drill3.icons,
            flags = {},
            subgroup = "extraction-machine",
            order = "b[seafloor-drill-3]-a[offshore-pump]",
            place_result = "seafloor-drill-mk3",
            stack_size = 50
        },
        {
            type = "recipe",
            name = "seafloor-drill-mk3",
            enabled = false,
            energy_required = 1,
            ingredients = {
                { "flotation-platform", 4 },
                { "kr-electric-mining-drill-mk3", 1 }
            },
            result = "seafloor-drill-mk3",
            result_count = 1
        },
        {
            type = "technology",
            name = "floating-drill-mk3-technology",
            icons = {
                drill3.icons[1],
                createSmallTechIcon()
            },
            effects = {
                { type = "unlock-recipe", recipe = "seafloor-drill-mk3" }
            },
            prerequisites = { "floating-drill-mk2-technology", "kr-electric-mining-drill-mk3" },
            unit = {
                count = 50,
                ingredients = {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "productivity-science-pack", 1 },
                    { "se-rocket-science-pack", 1 },
                    { "space-science-pack", 1 },
                    { "kr-optimization-tech-card", 1 }
                },
                time = 20
            },
            order = "c-k-a",
        }
    })
end