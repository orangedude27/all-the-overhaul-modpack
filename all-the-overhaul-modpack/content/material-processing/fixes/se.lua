-- Remove ingot to plate recipes
atom.util.recipe.removeByNamePattern("%-ingot%-to%-plate$", { "se-iridium-ingot-to-plate", "se-holmium-ingot-to-plate", "se-beryllium-ingot-to-plate", "se-naquium-ingot-to-plate" })
atom.util.recipe.removeByName("se-molten-copper")
atom.util.recipe.removeByName("se-molten-iron")
atom.util.recipe.removeByName("se-copper-ingot")
atom.util.recipe.removeByName("se-iron-ingot")
atom.util.recipe.removeByName("rare-metals-vulcanite")

atom.util.item.removeByName("se-steel-ingot")

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

--Allow more material processing steps in space machines.
table.insert(data.raw["assembling-machine"]["se-space-thermodynamics-laboratory"].crafting_categories, "el_caster_category")
table.insert(data.raw["assembling-machine"]["se-space-thermodynamics-laboratory"].crafting_categories, "el_arc_furnace_category")
table.insert(data.raw["assembling-machine"]["se-space-decontamination-facility"].crafting_categories, "el_purifier_category")
