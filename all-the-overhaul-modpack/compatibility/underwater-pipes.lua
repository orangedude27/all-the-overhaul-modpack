if (mods["underwater-pipes"] and mods["dredgeworks"]) then
	-- Reset ingredients to original values
	data.raw.recipe["underwater-pipe"].ingredients = {
		{"pipe", 2},
		{"steel-plate", 5},
		{"concrete", 20},
	}

	-- Amount of pipes for underground pipes should equal max length
	atom.util.Recipe("underwater-pipe-to-ground").replaceIngredient("underwater-pipe", 10)

	-- Set more appropriate tech dependencies
	data.raw.technology["underwater-pipes"].prerequisites = {
		"floating-logistics-technology",
		"concrete"
	}
	data.raw.technology["underwater-pipes"].unit.count = 100
end