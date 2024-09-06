require("248k.final")

-- Use purple tech cards more
local function isIngredient(_table, name)
    if (_table == nil) then
        return false
    end
    return _table[1] == name or _table.name == name
end
for _, technology in pairs(data.raw.technology) do
    local hasRocket = false
    local hasChemical = false
    local hasSpace = false
    local hasProductivity = false
    for _, ingredient in pairs(technology.unit.ingredients) do
        if isIngredient(ingredient, "se-rocket-science-pack") then
            hasRocket = true
        end
        if isIngredient(ingredient, "chemical-science-pack") then
            hasChemical = true
        end
        if isIngredient(ingredient, "space-science-pack") then
            hasSpace = true
        end
        if isIngredient(ingredient, "productivity-science-pack") then
            hasProductivity = true
        end
    end
    if hasChemical and hasRocket and hasSpace and not hasProductivity then
        atom.util.Technology(technology).addIngredient("productivity-science-pack")
    end
end

-- Remove crushed manganese
atom.util.item.removeByName("crushed-manganese")