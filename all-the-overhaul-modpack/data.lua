--this is example of function setup with comments, learn to use comments people

--- Checks if true
--- @param check  #What to check
local function Test(check)
    if check then
        log("True PIG")
    else
        log("false PIG")
    end
end

Test(true)

--call all needed scripts
require("prototypes/imersium-wall")
require("prototypes/common")
require("prototypes/pipes")
require("prototypes/bio-industries")
if mods["RampantArsenal"] then
    require("prototypes/rampant-arsenal")
end
require("prototypes.items")
