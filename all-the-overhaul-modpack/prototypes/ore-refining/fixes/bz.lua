removeRecipesByPattern("^%a+%-plate%-dust$")

-- TODO: Find out, why the ingredient is missing
table.insert(data.raw.recipe["atom-lead-plate-dust"].ingredients, { "lead-dust", 22 })
table.insert(data.raw.recipe["atom-lead-slurry"].ingredients, { "lead-dust", 20 })