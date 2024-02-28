-- Remove ingot to plate recipes
removeRecipesByPattern("%-ingot%-to%-plate$")

-- Allow productivity modules in se-casting-machine
table.insert(data.raw["assembling-machine"]["se-casting-machine"].allowed_effects, "productivity")

-- Replace the se-pyroflux-smelting technology with atom-advanced-ore-processing-2
for _, technology in pairs(data.raw.technology) do
    if technology.effects then
        for _, effect in pairs(technology.effects) do
            if effect.type == "unlock-recipe" and effect.recipe == "se-pyroflux-smelting" then
                effect.recipe = "atom-advanced-ore-processing-2"
            end
        end
    end
    if technology.prerequisites then
        for i, prerequisite in pairs(technology.prerequisites) do
            if prerequisite == "se-pyroflux-smelting" then
                technology.prerequisites[i] = "atom-advanced-ore-processing-2"
            end
        end
    end
end
data.raw.technology["se-pyroflux-smelting"] = nil

-- Increase speed for se-casting-machine
local caster = data.raw["assembling-machine"]["se-casting-machine"]
caster.crafting_speed = 2
caster.energy_usage = "200kW"