if not atom then
    atom = {}
end
atom.refining = {
    config = {}
}

require('refining')

-- Metals
local tantalite = require("tantalite")
atom.refining.config.tantalum = tantalite.tantalum
atom.refining.config.niobium = tantalite.niobium
atom.refining.config.cobalt = require("cobalt")
atom.refining.config.copper = require("copper")
atom.refining.config.gold = require("gold")
atom.refining.config.indium = require("indium")
atom.refining.config.iron = require("iron")
atom.refining.config.lead = require("lead")
atom.refining.config.manganese = require("manganese")
atom.refining.config.tin = require("tin")
atom.refining.config.tungsten = require("tungsten")
atom.refining.config.zinc = require("zinc")
atom.refining.config.aluminum = require("aluminum")
atom.refining.config.bismuth = require("bismuth")
atom.refining.config.titanium = require("titanium")
atom.refining.config.chromium = require("chromium")
atom.refining.config.nickel = require("nickel")
atom.refining.config.silver = require("silver")
atom.refining.config.metals = require("rare-metals")

-- Alloys
table.insert(atom.refining.config, require("brass"))