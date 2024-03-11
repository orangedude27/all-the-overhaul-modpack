--call all needed scripts
flib = require('__flib__.data-util')
require("_prototypes/common")
require("_prototypes/pipes")
if mods["Bio_Industries"] then
    require("_prototypes/bio-industries")
end
if mods["RampantArsenal"] then
    require("_prototypes/rampant-arsenal")
end
require("_prototypes/items")
require("_prototypes/entities/machines")