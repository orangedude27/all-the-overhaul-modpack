atom.util.technology = {
    -- Replaces a prerequisite in all technologies
    -- @param old string The name of the old prerequisite
    -- @param new string The name of the new prerequisite
    replacePrerequisite = function(old, new)
        for _, tech in pairs(data.raw.technology) do
            if tech.prerequisites then
                for i, prerequisite in pairs(tech.prerequisites) do
                    if prerequisite == old then
                        tech.prerequisites[i] = new
                    end
                end
            end
        end
    end
}