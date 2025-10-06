-- Add second fluid box to laser-mill to enable recipes with two fluids (one being helium)
local newInput = {
  production_type = "input",
  pipe_picture = data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_picture,
  pipe_covers = data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_covers,
  volume = 1000,
  pipe_connections = {
    { flow_direction = "input", direction = defines.direction.west, position = { -1, 0 }},
    { flow_direction = "input", direction = defines.direction.east, position = { 1, 0 }}
  },
  secondary_draw_orders = { north = -1, east = -1, west = -1 }
}
table.insert(data.raw["assembling-machine"]["laser-mill"].fluid_boxes, newInput)