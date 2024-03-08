local function create_equipment_category(name_category)
    if data.raw["equipment-category"][name_category] == nil then
        data:extend({
            {
                type = "equipment-category",
                name = name_category,
            },
        })
    end
end

local arr_equipments = { "active-defense-equipment", "battery-equipment", "belt-immunity-equipment",
    "energy-shield-equipment", "generator-equipment", "movement-bonus-equipment", "night-vision-equipment",
    "roboport-equipment", "solar-panel-equipment" }

local function add_category_to_equipment(name_equipment, name_category)
    if data.raw["equipment-category"][name_category] ~= nil then
        for _, category in pairs(arr_equipments) do
            if data.raw[category][name_equipment] then
                table.insert(data.raw[category][name_equipment].categories, name_category)
            end
        end
    end
end

local function remove_category_from_equipment(name_equipment, name_category)
    if data.raw["equipment-category"][name_category] ~= nil then
        for _, category in pairs(arr_equipments) do
            if data.raw[category][name_equipment] then
                for k, v in pairs(data.raw[category][name_equipment].categories) do
                    if v == name_category then
                        data.raw[category][name_equipment].categories[k] = nil
                    end
                end
            end
        end
    end
end

local function add_category_to_grid(name_grid, name_category)
    if data.raw["equipment-grid"][name_grid] ~= nil then
        if data.raw["equipment-category"][name_category] ~= nil then
            table.insert(data.raw["equipment-grid"][name_grid].equipment_categories, name_category)
        end
    end
end

local function add_categories_to_grid(name_grid, categories)
    for _, category in pairs(categories) do
        add_category_to_grid(name_grid, category)
    end
end

local function remove_category_from_grid(name_grid, name_category)
    if data.raw["equipment-grid"][name_grid] ~= nil then
        if data.raw["equipment-category"][name_category] ~= nil then
            for k, v in pairs(data.raw["equipment-grid"][name_grid].equipment_categories) do
                if v == name_category then
                    data.raw["equipment-grid"][name_grid].equipment_categories[k] = nil
                end
            end
        end
    end
end

local function clear_categories_from_grid(name_grid)
    if data.raw["equipment-grid"][name_grid] ~= nil then
        data.raw["equipment-grid"][name_grid].equipment_categories = {}
    end
end

local function create_grid(name_grid, width, height)
    if name_grid then
        if data.raw["equipment-grid"][name_grid] == nil then
            width = width or 0
            height = height or 0
            data:extend({
                {
                    type = "equipment-grid",
                    name = name_grid,
                    width = width,
                    height = height,
                    equipment_categories = {}
                },
            })
        end
    end
end

return {
    create_equipment_category = create_equipment_category,
    add_category_to_equipment = add_category_to_equipment,
    remove_category_from_equipment = remove_category_from_equipment,
    clear_categories_from_grid = clear_categories_from_grid,
    add_category_to_grid = add_category_to_grid,
    add_categories_to_grid = add_categories_to_grid,
    remove_category_from_grid = remove_category_from_grid,
    create_grid = create_grid
}
