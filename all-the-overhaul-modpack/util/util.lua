atom.util = {
    -- Used to apply (data:extend) all given prototypes.
    -- If using an ATOM util class (e.g. atom.util.Recipe), the apply function will be called.
    -- Else it will be added to data:extend as is.
    -- @param value table The prototypes to apply
    applyAll = function(value)
        for _, item in pairs(value) do
            if item.apply then
                item.apply()
            else
                data:extend({ item })
            end
        end
    end
}

require("log")
require("string")
require("table")
require("icon")
require("item")
require("recipe")
require("technology")