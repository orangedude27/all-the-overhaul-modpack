if mods['valves'] then
    for _, recipe in pairs({ "valves-one_way", "valves-overflow", "valves-top_up" }) do
        data.raw.recipe[recipe].ingredients = {
            { type = "item", name = recipe == "valves-one_way" and "invar-valve" or "flow-controller", amount = 1 },
            { type = "item", name = "pipe", amount = 1 },
            { type = "item", name = "iron-plate", amount = 1 }
        }
    end
end