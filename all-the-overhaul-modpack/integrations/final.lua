require("mini-machines-final")
require("248k.final")

-- Use purple tech cards more
-- Apply basic tech card setting
local function isIngredient(_table, name)
    if (_table == nil) then
        return false
    end
    return _table[1] == name or _table.name == name
end
local basic_tech_card_mode = settings.startup["atom-basic-tech-card-mode"].value
local basic_tech_card_exceptions = {
    "robot-attrition-explosion-safety",
    "energy-shield-equipment",
    "energy-shield-mk2-equipment",
    "energy-shield-mk3-equipment",
    "energy-shield-mk4-equipment"
}
for _, technology in pairs(data.raw.technology) do
    local hasBasic = false
    local hasAutomation = false
    local hasLogistic = false
    local hasChemical = false
    local hasProductivity = false
    local hasRocket = false
    local hasSpace = false
    if technology.unit then
        local function addBasic()
            if basic_tech_card_mode == "all" or not table.contains(basic_tech_card_exceptions, technology.name) then
                atom.util.Technology(technology).addIngredient("kr-basic-tech-card")
            end
        end
        local function removeBasic()
            atom.util.Technology(technology).removeIngredient("kr-basic-tech-card")
        end

        for _, ingredient in pairs(technology.unit.ingredients) do
            if isIngredient(ingredient, "kr-basic-tech-card") then
                hasBasic = true
            end
            if isIngredient(ingredient, "automation-science-pack") then
                hasAutomation = true
            end
            if isIngredient(ingredient, "logistic-science-pack") then
                hasLogistic = true
            end
            if isIngredient(ingredient, "chemical-science-pack") then
                hasChemical = true
            end
            if isIngredient(ingredient, "productivity-science-pack") then
                hasProductivity = true
            end
            if isIngredient(ingredient, "se-rocket-science-pack") then
                hasRocket = true
            end
            if isIngredient(ingredient, "space-science-pack") then
                hasSpace = true
            end
        end

        if hasChemical and hasRocket and hasSpace and not hasProductivity then
            atom.util.Technology(technology).addIngredient("productivity-science-pack")
        end

        if basic_tech_card_mode == "none" and hasBasic and hasAutomation then
            removeBasic()
        end
        if basic_tech_card_mode == "red" then
            if not hasBasic and hasAutomation and not hasLogistic then
                addBasic()
            end
            if hasBasic and hasLogistic then
                removeBasic()
            end
        end
        if basic_tech_card_mode == "green" then
            if not hasBasic and hasLogistic and not hasChemical then
                addBasic()
            end
            if hasBasic and hasChemical then
                removeBasic()
            end
        end
        if basic_tech_card_mode == "nauvis" then
            if not hasBasic and hasAutomation and not hasSpace then
                addBasic()
            end
            if hasBasic and hasSpace then
                removeBasic()
            end
        end
        if basic_tech_card_mode == "all" then
            if not hasBasic then
                addBasic()
            end
        end
    end
end

-- Remove crushed manganese
atom.util.Recipe("mangalloy").removeIngredient("crushed-manganese")
atom.util.item.removeByName("crushed-manganese")
