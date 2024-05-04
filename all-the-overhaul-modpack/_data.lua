--call all needed scripts
flib = require('__flib__.data-util')
require("_prototypes/common")
if mods["RampantArsenal"] then
    require("_prototypes/rampant-arsenal")
end
require("_prototypes/entities/machines")