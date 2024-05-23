local compatibilityList = require("__solar-productivity__/prototypes/compatibility")
local stringUtil = require("__solar-productivity__/prototypes/string-util")

-- Nerf solar productivity to 5 levels with 20% bonus each because it's so OP

-- Remove levels 6-50
for level = 6, 9 do
    data.raw.technology["solar-productivity-" .. level] = nil
end
for _, preset in pairs(compatibilityList) do
    if mods[preset.mod] then
        for level = 6, 50 do
            for _, solar in pairs(preset.solar_panels) do
                local base = data.raw["solar-panel"][solar]
                if (base) then
                    data.raw["solar-panel"]["sp-" .. tostring(level) .. "-" .. base.name] = nil
                end
            end
            for _, accu in pairs(preset.accumulators) do
                local base = data.raw["accumulator"][accu]
                if (base) then
                    data.raw["accumulator"]["sp-" .. tostring(level) .. "-" .. base.name] = nil
                end
            end
        end
    end
end

-- Set levels 1-5 to 20% bonus each
for _, preset in pairs(compatibilityList) do
    if mods[preset.mod] then
        for level = 1, 5 do
            local bonus = 1 + 0.2 * level
            for _, solar in pairs(preset.solar_panels) do
                local base = data.raw["solar-panel"][solar]
                if (base) then
                    local entity = data.raw["solar-panel"]["sp-" .. tostring(level) .. "-" .. base.name]
                    entity.production = stringUtil.msv(base.production, bonus)
                end
            end
            for _, accu in pairs(preset.accumulators) do
                local base = data.raw["accumulator"][accu]
                if (base) then
                    local entity = data.raw["accumulator"]["sp-" .. tostring(level) .. "-" .. base.name]
                    local bes = base.energy_source
                    table.assign(entity.energy_source, {
                        buffer_capacity = stringUtil.msv(bes.buffer_capacity, bonus),
                        input_flow_limit = stringUtil.msv(bes.input_flow_limit, bonus),
                        output_flow_limit = stringUtil.msv(bes.output_flow_limit, bonus),
                    })
                end
            end
        end
    end
end

-- Adjust technologies
local mk1Tech = data.raw.technology["solar-productivity-1"]
table.insert(mk1Tech.prerequisites, "chemical-science-pack")
mk1Tech.unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 }
}

local mk2Tech = data.raw.technology["solar-productivity-2"]
mk2Tech.prerequisites = { "solar-productivity-1", "space-science-pack" }
mk2Tech.unit.ingredients = {
    { "automation-science-pack", 1 },
    { "logistic-science-pack", 1 },
    { "chemical-science-pack", 1 },
    { "productivity-science-pack", 1 },
    { "se-rocket-science-pack", 1 },
    { "space-science-pack", 1 }
}

local mk3Tech = atom.util.Technology("solar-productivity-3")
mk3Tech.addIngredient("productivity-science-pack")

local mk4Tech = data.raw.technology["solar-productivity-4"]
mk4Tech.max_level = nil
mk4Tech.prerequisites = { "solar-productivity-3", "se-energy-science-pack-2" }
mk4Tech.unit = {
    count = 2500,
    ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "productivity-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "se-energy-science-pack-2", 1 }
    },
    time = 60
}

local mk5Tech = table.deepcopy(data.raw.technology["solar-productivity-4"])
mk5Tech.name = "solar-productivity-5"
mk5Tech.order = "sp-5"
mk5Tech.prerequisites = { "solar-productivity-4", "se-energy-science-pack-4" }
mk5Tech.unit = {
    count = 5000,
    ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "productivity-science-pack", 1 },
        { "se-rocket-science-pack", 1 },
        { "space-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "se-energy-science-pack-4", 1 }
    },
    time = 60
}
data.extend({ mk5Tech })

-- Set new effect description
for level = 1, 5 do
    local tech = data.raw.technology["solar-productivity-" .. level]
    tech.effects = {
        {
            type = "nothing",
            effect_description = { "effect-description.solar-productivity" }
        }
    }
end