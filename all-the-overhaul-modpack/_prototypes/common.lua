local equipment = require("_functions/equipment")

-- 248k assemblings
local fluid_boxes = {
    {
        production_type = "input",
        pipe_picture = assemblerkpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 0, -2 } } },
        secondary_draw_orders = { north = -1 },
    },
    {
        production_type = "output",
        pipe_picture = assemblerkpipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = { { type = "output", position = { 0, 2 } } },
        secondary_draw_orders = { north = -1 },
    },
    off_when_no_fluid_recipe = true,
}

local crafting_categories = {
    "basic-crafting",
    "crafting",
    "advanced-crafting",
    "crafting-with-fluid",
    "smelting-crafting",
}

data.raw["assembling-machine"]["fi_crafter_entity"].fluid_boxes = fluid_boxes
data.raw["assembling-machine"]["gr_crafter_entity"].fluid_boxes = fluid_boxes

data.raw["assembling-machine"]["fi_crafter_entity"].crafting_categories = crafting_categories
data.raw["assembling-machine"]["gr_crafter_entity"].crafting_categories = crafting_categories

equipment.create_equipment_category("generator-equipment")
equipment.create_equipment_category("defense-equipment")
equipment.create_equipment_category("transport-shield")
equipment.create_equipment_category("battery-equipment")
equipment.create_equipment_category("solar-equipment")
equipment.create_grid("kr-advanced-tank-grid")

data.raw["assembling-machine"]["kr-research-server"].ingredient_count = 20
data.raw["assembling-machine"]["el_purifier_entity"].ingredient_count = 20
data.raw["assembling-machine"]["fu_magnet_entity"].ingredient_count = 3

---Adjust grid size
---@param grid_name string
---@param size int
local function SetGridSize(grid_name, size)
    local grid = data.raw["equipment-grid"][grid_name]
    if grid then
        grid.width = size
        grid.height = size
    end
end

if not mods["Configurable-Armour-Suits"] then
    SetGridSize("small-equipment-grid", 5) --modular
    SetGridSize("medium-equipment-grid", 10) -- power mk1
    SetGridSize("large-equipment-grid", 15) -- power mk2
    SetGridSize("mk3-armor-grid", 20)
    SetGridSize("mk4-armor-grid", 25)
    SetGridSize("se-thruster-suit-grid", 10)
    SetGridSize("se-thruster-suit-2-grid", 15)
    SetGridSize("se-thruster-suit-3-grid", 20)
    SetGridSize("se-thruster-suit-4-grid", 25)
end

--sets all item stack sizes to a max of 200
for _, item in pairs(data.raw.item) do
    if item.stack_size > 200 then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    elseif not item.stack_size then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    end
end

--248k Science cubes are tools not items, so this is needed for that
for _, item in pairs(data.raw.tool) do
    if item.stack_size > 200 then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    elseif not item.stack_size then
        item.stack_size = 200
        --log("adjusted " .. item.name)
    end
end

data.raw.item["fu_materials_carbon_fiber"].localised_name = "Graphite fiber"
data.raw.item["fu_materials_KFK"].localised_name = "Graphite fiber reinforced plastic"