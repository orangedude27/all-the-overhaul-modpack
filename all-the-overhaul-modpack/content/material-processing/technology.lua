if mods["space-exploration"] then
    -- Advanced ore processing 1
    local processing1 = table.deepcopy(data.raw.technology["se-pyroflux-smelting"])
    processing1.name = "atom-advanced-ore-processing-1"
    processing1.prerequisites = { "productivity-science-pack" }
    processing1.effects = {}
    processing1.unit = {
        count = 250,
        time = 30,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "productivity-science-pack", 1 }
        }
    }

    -- Advanced ore processing 2
    local processing2 = table.deepcopy(data.raw.technology["se-pyroflux-smelting"])
    processing2.name = "atom-advanced-ore-processing-2"
    processing2.unit = {
        count = 500,
        time = 30,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "se-rocket-science-pack", 1 },
            { "space-science-pack", 1 }
        }
    }

    -- Advanced ore processing 3
    local processing3 = table.deepcopy(data.raw.technology["se-pyroflux-smelting"])
    processing3.name = "atom-advanced-ore-processing-3"
    processing3.prerequisites = { "se-material-science-pack-1", "production-science-pack" }
    processing3.effects = {}
    processing3.unit = {
        count = 500,
        time = 30,
        ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "se-rocket-science-pack", 1 },
            { "space-science-pack", 1 },
            { "production-science-pack", 1 },
            { "se-material-science-pack-1", 1 }
        }
    }

    -- Advanced ore processing 4
    local processing4 = table.deepcopy(data.raw.technology["se-pyroflux-smelting"])
    processing4.name = "atom-advanced-ore-processing-4"
    processing4.prerequisites = { "se-material-science-pack-3", "kr-optimization-tech-card" }
    processing4.effects = {}
    processing4.unit = {
        count = 700,
        time = 30,
        ingredients = {
            { "se-rocket-science-pack", 1 },
            { "space-science-pack", 1 },
            { "production-science-pack", 1 },
            { "kr-optimization-tech-card", 1 },
            { "se-material-science-pack-3", 1 }
        }
    }

    data:extend({
        processing1,
        processing2,
        processing3,
        processing4
    })
end