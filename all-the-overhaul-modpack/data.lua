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
flib = require('__flib__.data-util')
require("prototypes/imersium-wall")
require("prototypes/common")
require("prototypes/pipes")
if mods["Bio_Industries"] then
    require("prototypes/bio-industries")
end
if mods["RampantArsenal"] then
    require("prototypes/rampant-arsenal")
end
require("prototypes/items")
require("prototypes/entities/machines")

require("prototypes/ore-refining")
