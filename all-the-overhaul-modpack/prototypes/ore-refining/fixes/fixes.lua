function removeRecipesByName(name)
    data.raw.recipe[name] = nil

    for _, module in pairs(data.raw.module) do
        if (module.limitation) then
            for key, value in pairs(module.limitation) do
                if value == name then
                    module.limitation[key] = nil
                end
            end
        end
    end
    for _, technology in pairs(data.raw.technology) do
        if (technology.effects) then
            for i, value in pairs(technology.effects) do
                if value.recipe == name then
                    technology.effects[i] = nil
                end
            end
        end
    end
end

function removeRecipesByPattern(pattern)
    for key, _ in pairs(data.raw.recipe) do
        if string.find(key, pattern) ~= nil then
            data.raw.recipe[key] = nil
        end
    end
    for _, module in pairs(data.raw.module) do
        if (module.limitation) then
            for key, value in pairs(module.limitation) do
                if string.find(value, pattern) ~= nil then
                    module.limitation[key] = nil
                end
            end
        end
    end
    for _, technology in pairs(data.raw.technology) do
        if (technology.effects) then
            for i, value in pairs(technology.effects) do
                if value.recipe and string.find(value.recipe, pattern) ~= nil then
                    technology.effects[i] = nil
                end
            end
        end
    end
end

require("248k")
require("k2")
require("se")
require("timeken")