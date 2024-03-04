if not atom then
    atom = {}
end
atom.refining = {
    config = {}
}

require("technology")
require("refining")

-- Metals
local tantalite = require("materials.tantalite")
atom.refining.config.tantalum = tantalite.tantalum
atom.refining.config.niobium = tantalite.niobium
atom.refining.config.cobalt = require("materials.cobalt")
atom.refining.config.copper = require("materials.copper")
atom.refining.config.gold = require("materials.gold")
atom.refining.config.indium = require("materials.indium")
atom.refining.config.iron = require("materials.iron")
atom.refining.config.lead = require("materials.lead")
atom.refining.config.manganese = require("materials.manganese")
atom.refining.config.tin = require("materials.tin")
atom.refining.config.tungsten = require("materials.tungsten")
atom.refining.config.zinc = require("materials.zinc")
atom.refining.config.aluminum = require("materials.aluminum")
atom.refining.config.bismuth = require("materials.bismuth")
atom.refining.config.titanium = require("materials.titanium")
atom.refining.config.chromium = require("materials.chromium")
atom.refining.config.nickel = require("materials.nickel")
atom.refining.config.silver = require("materials.silver")
atom.refining.config.metals = require("materials.rare-metals")
atom.refining.config.platinum = require("materials.platinum")
atom.refining.config.palladium = require("materials.palladium")

-- Alloys
table.insert(atom.refining.config, require("materials.brass"))

-- Others
atom.refining.config.coal = require("materials.coal")