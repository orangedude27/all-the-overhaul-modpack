-- Recipe balancing

-- Fixes Advanced circuit (the recipe uses two fluids but the building only supports one)
-- atom.util.Recipe("advanced-circuit-in-laser-mill").removeIngredient("helium")

data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_connections = {{ type = "input", position = { 1, -2 }}}
newInput = {
  production_type = "input",
  pipe_picture = data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_picture,
  pipe_covers = data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_covers,
  base_area = 10,
  base_level = -1,
  pipe_connections = {{ type = "input", position = { -1, -2 }}},
  secondary_draw_orders = { north = -1, east = -1, west = -1 }
}
table.insert(data.raw["assembling-machine"]["laser-mill"].fluid_boxes, newInput)