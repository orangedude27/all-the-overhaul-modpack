-- Give the burner mining drill a 3x3 mining area
local drill = data.raw["mining-drill"]["burner-mining-drill"]
drill.resource_searching_radius = 1.99
drill.radius_visualisation_picture = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"].radius_visualisation_picture)