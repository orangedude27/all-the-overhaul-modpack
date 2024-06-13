-- Add second fluid box to laser-mill to enable recipes with two fluids (one being helium)
local newInput = {
  production_type = "input",
  pipe_picture = data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_picture,
  pipe_covers = data.raw["assembling-machine"]["laser-mill"].fluid_boxes[1].pipe_covers,
  base_area = 10,
  base_level = -1,
  pipe_connections = {
    { type = "input", position = { -2, 0 }},
    { type = "input", position = { 2, 0 }}
  },
  secondary_draw_orders = { north = -1, east = -1, west = -1 }
}
table.insert(data.raw["assembling-machine"]["laser-mill"].fluid_boxes, newInput)