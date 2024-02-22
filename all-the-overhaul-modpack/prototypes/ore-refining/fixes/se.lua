-- Remove ingot to plate recipes
removeRecipesByPattern("%-ingot%-to%-plate$")

-- Allow productivity modules in se-casting-machine
table.insert(data.raw["assembling-machine"]["se-casting-machine"].allowed_effects, "productivity")
