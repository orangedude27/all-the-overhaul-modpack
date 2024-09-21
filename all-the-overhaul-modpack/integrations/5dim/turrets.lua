-- Entities

-- Remove small, big and tesla turrets
for i = 1, 10 do
    local nameSmall = "5d-gun-turret-small-" .. (i < 10 and "0" or "") .. i
    local nameBig = "5d-gun-turret-big-" .. (i < 10 and "0" or "") .. i
    local nameLaserSmall = "5d-laser-turret-small-" .. (i < 10 and "0" or "") .. i
    local nameLaserBig = "5d-laser-turret-big-" .. (i < 10 and "0" or "") .. i
    local nameTesla = "5d-tesla-turret-" .. (i < 10 and "0" or "") .. i
    atom.util.item.removeByName(nameSmall)
    atom.util.item.removeByName(nameBig)
    atom.util.item.removeByName(nameLaserSmall)
    atom.util.item.removeByName(nameLaserBig)
    atom.util.item.removeByName(nameTesla)
    data.raw["ammo-turret"][nameSmall] = nil
    data.raw["ammo-turret"][nameBig] = nil
    data.raw["electric-turret"][nameLaserSmall] = nil
    data.raw["electric-turret"][nameLaserBig] = nil
    data.raw["electric-turret"][nameTesla] = nil
end

-- Rebalance first 5 tiers of turrets
local gunDamageModifier = { 1, 2, 3, 3.5, 4 }
local gunHpBonus = 0.2
local gunRange = { 18, 20, 22, 24, 26 }
local sniperRange = { 40, 44, 48, 52, 56 }
local sniperMinRange = { 12, 13, 14, 15, 16 }
local laserRange = { 24, 26, 28, 30, 32 }
local laserSniperRange = { 48, 52, 56 }
local laserSniperMinRange = { 14, 15, 16 }
local laserSniperEnergyUsage = 20
local burnerRange = { 28, 34, 40 }
local burnerMinRange = { 6, 7, 8 }
for i = 1, 5 do
    local gun = data.raw["ammo-turret"][i == 1 and "gun-turret" or ("5d-gun-turret-0" .. i)]
    gun.max_health = 500 * (1 + (i - 1) * gunHpBonus)
    gun.attack_parameters.cooldown = 6
    gun.attack_parameters.damage_modifier = gunDamageModifier[i]
    gun.attack_parameters.range = gunRange[i]

    local gunSniper = data.raw["ammo-turret"]["5d-gun-turret-sniper-0" .. i]
    gunSniper.max_health = 250 * (1 + (i - 1) * gunHpBonus)
    gunSniper.attack_parameters.cooldown = 120
    gunSniper.attack_parameters.ammo_category = "anti-material-rifle-ammo"
    gunSniper.attack_parameters.damage_modifier = 4 * gunDamageModifier[i]
    gunSniper.attack_parameters.ammo_consumption_modifier = 1
    gunSniper.attack_parameters.rotate_penalty = 20
    gunSniper.attack_parameters.health_penalty = -1000
    gunSniper.attack_parameters.range = sniperRange[i]
    gunSniper.attack_parameters.min_range = sniperMinRange[i]

    local laser = data.raw["electric-turret"][i == 1 and "laser-turret" or ("5d-laser-turret-0" .. i)]
    laser.max_health = 1000 * (1 + (i - 1) * gunHpBonus)
    laser.attack_parameters.cooldown = 40
    laser.attack_parameters.damage_modifier = gunDamageModifier[i]
    laser.attack_parameters.range = laserRange[i]
    laser.attack_parameters.ammo_type.action.action_delivery.duration = 30
    laser.attack_parameters.ammo_type.energy_consumption = (800 * gunDamageModifier[i]) .. "kJ"
    laser.energy_source.buffer_capacity = (800 * gunDamageModifier[i] + 1) .. "kJ"
    laser.energy_source.input_flow_limit = (9600 * gunDamageModifier[i]) .. "kW"
    laser.energy_source.drain = (24 * gunDamageModifier[i]) .. "kW"
end

-- Rebalance first 3 tiers of turrets
for i = 1, 3 do
    local laserSniper = data.raw["electric-turret"]["5d-laser-turret-sniper-0" .. i]
    laserSniper.max_health = 500 * (1 + (i - 1) * 0.5)
    laserSniper.attack_parameters.cooldown = 150
    laserSniper.attack_parameters.damage_modifier = 40 * gunDamageModifier[i] + 10
    laserSniper.attack_parameters.rotate_penalty = 20
    laserSniper.attack_parameters.health_penalty = -1000
    laserSniper.attack_parameters.range = laserSniperRange[i]
    laserSniper.attack_parameters.min_range = laserSniperMinRange[i]
    laserSniper.attack_parameters.ammo_type.action.action_delivery.duration = 60
    laserSniper.attack_parameters.ammo_type.energy_consumption = (400 * laserSniperEnergyUsage * gunDamageModifier[i]) .. "kJ"
    laserSniper.energy_source.buffer_capacity = (400 * laserSniperEnergyUsage * gunDamageModifier[i] + 1) .. "kJ"
    laserSniper.energy_source.input_flow_limit = (4800 * laserSniperEnergyUsage * gunDamageModifier[i]) .. "kW"
    laserSniper.energy_source.drain = (12 * laserSniperEnergyUsage * gunDamageModifier[i]) .. "kW"

    local burner = data.raw["fluid-turret"][i == 1 and "flamethrower-turret" or ("5d-flamethrower-turret-0" .. i)]
    burner.max_health = 1500 * (1 + (i - 1) * 0.5)
    burner.attack_parameters.range = burnerRange[i]
    burner.attack_parameters.min_range = burnerMinRange[i]
    burner.attack_parameters.fluid_consumption = 0.2 * i
    burner.attack_parameters.damage_modifier = gunDamageModifier[i]
end

-- Remove tiers 6 to 10 of all remaining turrets
for i = 6, 10 do
    local nameGun = "5d-gun-turret-" .. (i < 10 and "0" or "") .. i
    local nameSniper = "5d-gun-turret-sniper-" .. (i < 10 and "0" or "") .. i
    local nameLaser = "5d-laser-turret-" .. (i < 10 and "0" or "") .. i
    local nameLaserSniper = "5d-laser-turret-sniper-" .. (i < 10 and "0" or "") .. i
    local nameBurner = "5d-flamethrower-turret-" .. (i < 10 and "0" or "") .. i
    atom.util.item.removeByName(nameGun)
    atom.util.item.removeByName(nameSniper)
    atom.util.item.removeByName(nameLaser)
    atom.util.item.removeByName(nameLaserSniper)
    atom.util.item.removeByName(nameBurner)
    data.raw["ammo-turret"][nameGun] = nil
    data.raw["ammo-turret"][nameSniper] = nil
    data.raw["electric-turret"][nameLaser] = nil
    data.raw["electric-turret"][nameLaserSniper] = nil
    data.raw["fluid-turret"][nameBurner] = nil
end

-- Remove tier 4 and 5 of some turrets
for i = 4, 5 do
    local nameLaserSniper = "5d-laser-turret-sniper-0" .. i
    local nameBurner = "5d-flamethrower-turret-0" .. i
    atom.util.item.removeByName(nameLaserSniper)
    atom.util.item.removeByName(nameBurner)
    data.raw["electric-turret"][nameLaserSniper] = nil
    data.raw["fluid-turret"][nameBurner] = nil
end

data.raw["ammo-turret"]["5d-gun-turret-05"].next_upgrade = nil
data.raw["ammo-turret"]["5d-gun-turret-sniper-05"].next_upgrade = nil
data.raw["electric-turret"]["5d-laser-turret-05"].next_upgrade = nil
data.raw["electric-turret"]["5d-laser-turret-sniper-03"].next_upgrade = nil
data.raw["fluid-turret"]["5d-flamethrower-turret-03"].next_upgrade = nil


-- Recipes

atom.util.Recipe("laser-turret").removeIngredient("gyroscope")

for i = 1, 5 do
    local nameGun = i == 1 and "gun-turret" or ("5d-gun-turret-0" .. i)
    local nameSniper = "5d-gun-turret-sniper-0" .. i
    local nameLaser = i == 1 and "laser-turret" or ("5d-laser-turret-0" .. i)

    local gunRecipe = atom.util.Recipe(nameGun)
    gunRecipe.removeIngredient("iron-plate")
    gunRecipe.removeIngredient("copper-plate")
    gunRecipe.removeIngredient("iron-gear-wheel")

    local sniperRecipe = atom.util.Recipe(nameSniper)
    sniperRecipe.removeIngredient("steel-plate")
    sniperRecipe.removeIngredient("iron-gear-wheel")

    local laserRecipe = atom.util.Recipe(nameLaser)
    laserRecipe.replaceIngredient("battery", "gyroscope", 1)
    laserRecipe.replaceIngredient("electronic-circuit", "hv-power-regulator", 1)
    laserRecipe.replaceIngredient("steel-plate", "carbon-dioxide-laser", 1)
end

for i = 1, 3 do
    local nameLaserSniper = "5d-laser-turret-sniper-0" .. i
    local nameBurner = i == 1 and "flamethrower-turret" or ("5d-flamethrower-turret-0" .. i)

    local laserSniperRecipe = atom.util.Recipe(nameLaserSniper)
    laserSniperRecipe.replaceIngredient("battery", "gyroscope", 1)
    laserSniperRecipe.replaceIngredient("electronic-circuit", "hv-power-regulator", 1)
    laserSniperRecipe.replaceIngredient("steel-plate", "carbon-dioxide-laser", 1)
    laserSniperRecipe.addIngredient("advanced-machining-tool", 5)
    laserSniperRecipe.addIngredient("processing-unit", 10)

    local burnerRecipe = atom.util.Recipe(nameBurner)
    burnerRecipe.replaceIngredient("iron-gear-wheel", "spark-plug", 1)
    burnerRecipe.removeIngredient("pipe")
    burnerRecipe.removeIngredient("steel-plate")
end

local gunRecipe1 = atom.util.Recipe("gun-turret")
gunRecipe1.addIngredient("steel-plate", 8)

local gunRecipe2 = atom.util.Recipe("5d-gun-turret-02")
gunRecipe2.addIngredient("titanium-plate", 8)
gunRecipe2.addIngredient("hardened-hull", 4)
gunRecipe2.addIngredient("steel-gear-wheel", 2)

local gunRecipe3 = atom.util.Recipe("5d-gun-turret-03")
gunRecipe3.addIngredient("nitinol-plate", 8)
gunRecipe3.addIngredient("zirconium-plate", 4)
gunRecipe3.addIngredient("steel-gear-wheel", 2)

local gunRecipe4 = atom.util.Recipe("5d-gun-turret-04")
gunRecipe4.addIngredient("imersium-plate", 8)
gunRecipe4.addIngredient("zirconium-plate", 4)
gunRecipe4.addIngredient("imersium-gear-wheel", 2)

local gunRecipe5 = atom.util.Recipe("5d-gun-turret-05")
gunRecipe5.addIngredient("se-iridium-plate", 8)
gunRecipe5.addIngredient("zirconium-plate", 4)
gunRecipe5.addIngredient("imersium-gear-wheel", 2)

local sniperRecipe1 = atom.util.Recipe("5d-gun-turret-sniper-01")
sniperRecipe1.addIngredient("tungsten-plate", 16)
sniperRecipe1.addIngredient("steel-gear-wheel", 4)
sniperRecipe1.addIngredient("turret-base", 1)

local sniperRecipe2 = atom.util.Recipe("5d-gun-turret-sniper-02")
sniperRecipe2.addIngredient("nitinol-plate", 16)
sniperRecipe2.addIngredient("zirconium-plate", 4)
sniperRecipe2.addIngredient("steel-gear-wheel", 4)

local sniperRecipe3 = atom.util.Recipe("5d-gun-turret-sniper-03")
sniperRecipe3.addIngredient("nitinol-plate", 16)
sniperRecipe3.addIngredient("imersium-gear-wheel", 4)
sniperRecipe3.addIngredient("cobalt-carbide", 4)
sniperRecipe3.replaceIngredient("electronic-circuit", "advanced-circuit")

local sniperRecipe4 = atom.util.Recipe("5d-gun-turret-sniper-04")
sniperRecipe4.addIngredient("se-iridium-plate", 16)
sniperRecipe4.addIngredient("imersium-gear-wheel", 4)
sniperRecipe4.addIngredient("imersium-beam", 4)
sniperRecipe4.replaceIngredient("electronic-circuit", "advanced-circuit")

local sniperRecipe5 = atom.util.Recipe("5d-gun-turret-sniper-05")
sniperRecipe5.addIngredient("se-iridium-plate", 16)
sniperRecipe5.addIngredient("imersium-gear-wheel", 4)
sniperRecipe5.addIngredient("se-heavy-girder", 4)
sniperRecipe5.replaceIngredient("electronic-circuit", "processing-unit")

local laserRecipe1 = atom.util.Recipe("laser-turret")
laserRecipe1.addIngredient("turret-base", 1)

local laserRecipe2 = atom.util.Recipe("5d-laser-turret-02")
laserRecipe2.addIngredient("nitinol-plate", 20)
laserRecipe2.addIngredient("motorized-articulator", 5)

local laserRecipe3 = atom.util.Recipe("5d-laser-turret-03")
laserRecipe3.addIngredient("nitinol-plate", 20)
laserRecipe3.addIngredient("cobalt-carbide", 5)
laserRecipe3.addIngredient("motorized-articulator", 5)

local laserRecipe4 = atom.util.Recipe("5d-laser-turret-04")
laserRecipe4.addIngredient("se-iridium-plate", 20)
laserRecipe4.addIngredient("imersium-beam", 5)
laserRecipe4.addIngredient("motorized-articulator", 5)

local laserRecipe5 = atom.util.Recipe("5d-laser-turret-05")
laserRecipe5.addIngredient("se-holmium-cable", 4)
laserRecipe5.addIngredient("se-iridium-plate", 20)
laserRecipe5.addIngredient("imersium-beam", 5)
laserRecipe5.addIngredient("motorized-articulator", 5)

local laserSniperRecipe1 = atom.util.Recipe("5d-laser-turret-sniper-01")
laserSniperRecipe1.addIngredient("niobium-tin-cable", 8)
laserSniperRecipe1.addIngredient("cobalt-nanotubes", 40)
laserSniperRecipe1.addIngredient("tantalum-titanium-beam", 10)

local laserSniperRecipe2 = atom.util.Recipe("5d-laser-turret-sniper-02")
laserSniperRecipe2.addIngredient("se-holmium-cable", 4)
laserSniperRecipe2.addIngredient("se-iridium-plate", 40)
laserSniperRecipe2.addIngredient("se-heavy-girder", 10)

local laserSniperRecipe3 = atom.util.Recipe("5d-laser-turret-sniper-03")
laserSniperRecipe3.addIngredient("se-superconductive-cable", 4)
laserSniperRecipe3.addIngredient("se-iridium-plate", 40)
laserSniperRecipe3.addIngredient("se-heavy-girder", 10)

local burnerRecipe1 = atom.util.Recipe("flamethrower-turret")

local burnerRecipe2 = atom.util.Recipe("5d-flamethrower-turret-02")
burnerRecipe2.replaceIngredient("engine-unit", "advanced-multi-cylinder-engine", 5)
burnerRecipe2.addIngredient("kr-steel-pipe", 10)
burnerRecipe2.addIngredient("titanium-plate", 20)
burnerRecipe2.addIngredient("invar-plate", 10)
burnerRecipe2.addIngredient("cuw", 5)

local burnerRecipe3 = atom.util.Recipe("5d-flamethrower-turret-03")
burnerRecipe3.replaceIngredient("engine-unit", "advanced-multi-cylinder-engine", 5)
burnerRecipe3.replaceIngredient("advanced-circuit", "invar-plate", 10)
burnerRecipe3.addIngredient("brass-pipe", 10)
burnerRecipe3.addIngredient("imersium-plate", 20)
burnerRecipe3.addIngredient("cobalt-carbide", 5)


-- Technologies

-- Remove small, big and tesla turrets
for i = 1, 10 do
    data.raw.technology["5d-gun-turret-small-" .. i] = nil
    data.raw.technology["5d-gun-turret-big-" .. i] = nil
    data.raw.technology["5d-laser-turret-small-" .. i] = nil
    data.raw.technology["5d-laser-turret-big-" .. i] = nil
    data.raw.technology["5d-tesla-turrets-" .. i] = nil
end

-- Remove tiers 6 to 10 of all remaining turrets
for i = 6, 10 do
    data.raw.technology["gun-turret-" .. i] = nil
    data.raw.technology["5d-gun-turret-sniper-" .. i] = nil
    data.raw.technology["laser-turret-" .. i] = nil
    data.raw.technology["5d-laser-turret-sniper-" .. i] = nil
    data.raw.technology["5d-flamethrower-turrets-" .. i] = nil
end

-- Remove tier 4 and 5 of sniper laser turrets and burner turrets
for i = 4, 5 do
    data.raw.technology["5d-laser-turret-sniper-" .. i] = nil
    data.raw.technology["5d-flamethrower-turrets-" .. i] = nil
end

-- Somehow flamethrower techs go from 1 to 9 while all others with vanilla tier 1 go from 2 to 10
data.raw.technology["5d-flamethrower-turrets-3"] = nil

local gunTech1 = atom.util.Technology("gun-turret")
gunTech1.prototype.icon = "__OD27_5dim_battlefield__/graphics/icon/gun-turret/normal/gun-turret-normal-01.png"
gunTech1.prototype.icon_size = 64
gunTech1.prototype.unit.count = 75
gunTech1.addPrerequisite("steel-processing")
gunTech1.addPrerequisite("logistic-science-pack")
gunTech1.addIngredient("automation-science-pack")
gunTech1.addIngredient("logistic-science-pack")

local gunTech2 = atom.util.Technology("gun-turret-2")
gunTech2.addPrerequisite("titanium-processing")
gunTech2.addPrerequisite("military-science-pack")
gunTech2.removeIngredient("basic-tech-card")
gunTech2.addIngredient("logistic-science-pack")
gunTech2.addIngredient("military-science-pack")
gunTech2.addIngredient("chemical-science-pack")

local gunTech3 = atom.util.Technology("gun-turret-3")
gunTech3.addPrerequisite("nitinol-processing")
gunTech3.addPrerequisite("productivity-science-pack")
gunTech3.removeIngredient("basic-tech-card")
gunTech3.addIngredient("logistic-science-pack")
gunTech3.addIngredient("military-science-pack")
gunTech3.addIngredient("chemical-science-pack")
gunTech3.addIngredient("productivity-science-pack")
gunTech3.addIngredient("se-rocket-science-pack")

local gunTech4 = atom.util.Technology("gun-turret-4")
gunTech4.removePrerequisite("logistic-science-pack")
gunTech4.addPrerequisite("kr-imersium-processing")
gunTech4.removeIngredient("basic-tech-card")
gunTech4.addIngredient("military-science-pack")
gunTech4.addIngredient("productivity-science-pack")
gunTech4.addIngredient("se-rocket-science-pack")
gunTech4.addIngredient("space-science-pack")

local gunTech5 = atom.util.Technology("gun-turret-5")
gunTech5.addPrerequisite("se-processing-iridium")
gunTech5.removeIngredient("basic-tech-card")
gunTech5.addIngredient("military-science-pack")
gunTech5.addIngredient("production-science-pack")

local sniperTech1 = atom.util.Technology("5d-gun-turret-sniper-1")
sniperTech1.replacePrerequisite("5d-gun-turret-big-5", "gun-turret")
sniperTech1.removeIngredient("se-rocket-science-pack")

local sniperTech2 = atom.util.Technology("5d-gun-turret-sniper-2")
sniperTech2.addPrerequisite("nitinol-processing")
sniperTech2.addPrerequisite("productivity-science-pack")
sniperTech2.addIngredient("chemical-science-pack")
sniperTech2.addIngredient("productivity-science-pack")

local sniperTech3 = atom.util.Technology("5d-gun-turret-sniper-3")
sniperTech3.addPrerequisite("kr-imersium-processing")
sniperTech3.addPrerequisite("cobalt-carbide")
sniperTech3.addIngredient("chemical-science-pack")
sniperTech3.addIngredient("productivity-science-pack")
sniperTech3.addIngredient("space-science-pack")

local sniperTech4 = atom.util.Technology("5d-gun-turret-sniper-4")
sniperTech4.addPrerequisite("se-processing-iridium")
sniperTech4.addIngredient("productivity-science-pack")
sniperTech4.addIngredient("space-science-pack")
sniperTech4.addIngredient("production-science-pack")

local sniperTech5 = atom.util.Technology("5d-gun-turret-sniper-5")
sniperTech5.addPrerequisite("se-heavy-girder")
sniperTech5.addIngredient("production-science-pack")
sniperTech5.addIngredient("se-material-science-pack-1")

local laserTech1 = atom.util.Technology("laser-turret")
laserTech1.prototype.icon = "__OD27_5dim_battlefield__/graphics/icon/laser-turret/normal/laser-turret-normal-01.png"
laserTech1.prototype.icon_size = 64

local laserTech2 = atom.util.Technology("laser-turret-2")
laserTech2.prototype.unit.count = 200
laserTech2.addPrerequisite("nitinol-processing")
laserTech2.addPrerequisite("productivity-science-pack")
laserTech2.addIngredient("productivity-science-pack")
laserTech2.addIngredient("se-rocket-science-pack")

local laserTech3 = atom.util.Technology("laser-turret-3")
laserTech3.prototype.unit.count = 400
laserTech3.addPrerequisite("cobalt-carbide")
laserTech3.addIngredient("productivity-science-pack")
laserTech3.addIngredient("se-rocket-science-pack")
laserTech3.addIngredient("space-science-pack")

local laserTech4 = atom.util.Technology("laser-turret-4")
laserTech4.addPrerequisite("se-processing-iridium")
laserTech4.addIngredient("productivity-science-pack")
laserTech4.addIngredient("se-rocket-science-pack")
laserTech4.addIngredient("space-science-pack")
laserTech4.addIngredient("production-science-pack")

local laserTech5 = atom.util.Technology("laser-turret-5")
laserTech5.addPrerequisite("se-holmium-cable")
laserTech5.addIngredient("production-science-pack")
laserTech5.addIngredient("se-energy-science-pack-1")

local laserSniperTech1 = atom.util.Technology("5d-laser-turret-sniper-1")
laserSniperTech1.prototype.unit.count = 600
laserSniperTech1.replacePrerequisite("5d-laser-turret-big-5", "laser-turret-3")
laserSniperTech1.addIngredient("productivity-science-pack")
laserSniperTech1.addIngredient("space-science-pack")

local laserSniperTech2 = atom.util.Technology("5d-laser-turret-sniper-2")
laserSniperTech2.addPrerequisite("se-heavy-girder")
laserSniperTech2.addPrerequisite("se-energy-science-pack-1")
laserSniperTech2.addIngredient("productivity-science-pack")
laserSniperTech2.addIngredient("space-science-pack")
laserSniperTech2.addIngredient("se-energy-science-pack-1")

local laserSniperTech3 = atom.util.Technology("5d-laser-turret-sniper-3")
laserSniperTech3.addPrerequisite("se-superconductive-cable")
laserSniperTech3.addIngredient("productivity-science-pack")
laserSniperTech3.addIngredient("space-science-pack")
laserSniperTech3.addIngredient("se-energy-science-pack-3")

local burnerTech1 = atom.util.Technology("flamethrower")
burnerTech1.prototype.icon = "__OD27_5dim_battlefield__/graphics/icon/flamethrower-turret/flamethrower-turret-icon-01.png"
burnerTech1.prototype.icon_size = 64
burnerTech1.prototype.unit.count = 100

local burnerTech2 = atom.util.Technology("5d-flamethrower-turrets-1")
burnerTech2.prototype.unit.count = 200
burnerTech2.addPrerequisite("productivity-science-pack")
burnerTech2.addPrerequisite("se-rocket-science-pack")
burnerTech2.addIngredient("chemical-science-pack")
burnerTech2.addIngredient("productivity-science-pack")
burnerTech2.addIngredient("se-rocket-science-pack")

local burnerTech3 = atom.util.Technology("5d-flamethrower-turrets-2")
burnerTech3.addPrerequisite("kr-imersium-processing")
burnerTech3.addPrerequisite("production-science-pack")
burnerTech3.addIngredient("chemical-science-pack")
burnerTech3.addIngredient("productivity-science-pack")
burnerTech3.addIngredient("se-rocket-science-pack")
burnerTech3.addIngredient("space-science-pack")
burnerTech3.addIngredient("production-science-pack")