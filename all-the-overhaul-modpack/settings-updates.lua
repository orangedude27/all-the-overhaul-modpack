--- Changes settings of other mods if value is not already the same, also adjust max and default if needed.
---@param setting_name  #The name of that setting
---@param value  #What to change it to
local setting_types = { "bool-setting", "int-setting", "double-setting", "string-setting" }
local function change_setting(setting_name, value)
  for _, setting_type in pairs(setting_types) do
    local setting = data.raw[setting_type][setting_name]
    for _, setting_type in pairs(setting_types) do
      if setting then
        if setting.default_value ~= value then
          if setting_type == "bool-setting" then
            setting.forced_value = value
          end
          if setting_type == "int-setting" then
            if setting.maximum_value ~= nil then
              setting.maximum_value = value + 1
              setting.minimum = value
              setting.allowed_values = { value }
            else
              setting.allowed_values = { value }
            end
          end
          if setting_type == "double-setting" then
            if setting.maximum_value ~= nil then
              setting.maximum_value = value
              setting.minimum = value
              setting.allowed_values = { value }
            else
              setting.allowed_values = { value }
            end
          end
          if setting_type == "string-setting" then
            setting.allowed_values = { value }
          end
          setting.default_value = value
        end
        setting.hidden = true
      end
    end
  end
end

--248k
if mods["248k"] then
  change_setting("el_solar_power_output", "80kW (normal)")
  change_setting("el_burner_power_output", "1.2MW (low)")
  change_setting("el_water_generator_power_output", "3MW (low)")
  change_setting("el_ki_core_productivity", false)
  change_setting("el_ki_core_energy_usage", "very high")
  change_setting("override_krastorio_endgame", true)
  change_setting("overhaul_mode", true)
  change_setting("retexture_science", false)
  change_setting("overhaul_science", false)
end
--aai-containers
if mods["aai-containers"] then
  change_setting("aai-containers-progression", "Smooth")
end
--aai-loaders
if mods["aai-loaders"] then
  change_setting("aai-loaders-mode", "expensive")
end
--aai-industries
if mods["aai-industry"] then
  change_setting("start-with-basic-logistics", false)
  change_setting("aai-fast-motor-crafting", false)
end
--artillary-shell-stack
if mods["ArtilleryShellStack"] then
  change_setting("artillery-shell-stack-size", 50)
  change_setting("artillery-turret-ammo-stack-limit", 50)
  change_setting("artillery-wagon-ammo-stack-limit", 50)
end
--balanced-waterfill
if mods["balanced-waterfill"] then
  change_setting("balanced-waterfill-recipe-cost-setting", "Consumes Barrels")
  change_setting("balanced-waterfill-collision-setting", "Walkable")
  change_setting("balanced-waterfill-biterspeed-setting", false)
end
--BioIndustries
if mods["Bio_Industries"] then
  change_setting("BI_Solar_Additions", false)
  change_setting("BI_Bio_Cannon", false)
  change_setting("BI_Easy_Bio_Gardens", false)
  change_setting("BI_Game_Tweaks_Stack_Size", false)
  change_setting("BI_Game_Tweaks_Recipe", false)
  change_setting("BI_Game_Tweaks_Tree", false)
  change_setting("BI_Game_Tweaks_Small_Tree_Collisionbox", false)
  change_setting("BI_Game_Tweaks_Player", false)
  change_setting("BI_Game_Tweaks_Bot", false)
  change_setting("BI_Bio_Cannon", false)
  change_setting("BI_Bigger_Wooden_Chests", false)
  change_setting("BI_Game_Tweaks_Production_Science", false)
end
--BrassTacks
if mods["BrassTacks"] then
  change_setting("brasstacks-experimental-intermediates", true)
  change_setting("brasstacks-starting-items", true)
end
--bismuth
if mods["bismuth"] then
  change_setting("bismuth-reduce-pcb-solder", "Default (reccomended)")
  change_setting("bismuth-disable-bismuthinite-ore", false)
  change_setting("bismuth-disable-bismuth-as-smelting-byproduct", false)
  change_setting("bismuth-contain-bismuth", 8129)
  change_setting("bismuth-contain-sulfur", 1871)
end
--bzcarbon
if mods["bzcarbon"] then
  change_setting("bzcarbon-enable-fullerenes", "yes")
  change_setting("bzcarbon-enable-carbon-black", "no")
  change_setting("bzcarbon-enable-rough-diamond", "no")
  change_setting("bzcarbon-enable-flake-graphite", "yes")
  change_setting("bzcarbon-reuse", "yes")
  change_setting("bzcarbon-enable-carbon-fiber", "yes")
end
--bzchlorine
if mods["bzchlorine"] then
  change_setting("bzchlorine-salt", false)
  change_setting("bzchlorine-early-salt", "both")
  change_setting("bzchlorine-more-intermediates", "yes")
end
--bzfoundry
if mods["bzfoundry"] then
  change_setting("bzfoundry-minimal", false)
end
--bzgas
if mods["bzgas"] then
  change_setting("bzgas-more-intermediates", "phenol")
  change_setting("bzgas-handcraft", true)
end
--bzgold
if mods["bzgold"] then
  change_setting("bzgold-byproduct", true)
  change_setting("bzgold-platinum", true)
  change_setting("bzgold-silver", true)
  change_setting("bzgold-palladium", true)
  change_setting("bzgold-catalysis", true)
end
--bzlead
if mods["bzlead"] then
  change_setting("bzlead-byproduct", true)
  change_setting("bzlead-more-entities", "no")
  change_setting("bzlead-more-ammo", "no")
end
--bzlead
if mods["bzlead"] then
  change_setting("bzlead-byproduct", true)
  change_setting("bzlead-more-entities", "no")
  change_setting("bzlead-more-ammo", "no")
end
--bzsilicon
if mods["bzsilicon"] then
  change_setting("bzsilicon-more-intermediates", "no")
  change_setting("bzsilicon-bio-crushed-stone", false)
end
--bztin
if mods["bztin"] then
  --change_setting("bztin-more-intermediates", "cable")
  change_setting("bztin-more-intermediates", "bronze")
end
--bztitanium
if mods["bztitanium"] then
  change_setting("bztitanium-mining-fluid", "lubricant")
  change_setting("bztitanium-mining-fluid-amount", 3)
end
--bztungsten
if mods["bztungsten"] then
  change_setting("bztungsten-more-intermediates", "cuw")
  change_setting("bztungsten-avoid-military", "yes")
  change_setting("bztungsten-se-sintering", true)
  change_setting("bztungsten-mining-fluid-k2", "mineral-water")
  change_setting("bztungsten-mining-fluid-amount-k2", 1)
end
--bzzirconium
if mods["bzzirconium"] then
  change_setting("bzzirconium-byproduct", true)
  change_setting("bzzirconium-enable-intermediates", "yes")
  change_setting("bzzirconium-early", true)
  change_setting("bzzirconium-ammo", true)
  change_setting("bzzirconium-enable-sorting", false)
end
--cargo-ships
if mods["cargo-ships"] then
  change_setting("deep_oil", true)
  change_setting("oil_richness", "regular")
  change_setting("oil_rig_capacity", 100)
  change_setting("no_shallow_oil", true)
  change_setting("speed_modifier", 1)
  change_setting("fuel_modifier", 1)
  change_setting("tanker_capacity", 250)
  change_setting("no_catching_fish", true)
end
--combat-overhaul
if mods["combat-mechanics-overhaul"] then
  change_setting("spitter-spit-blockable", true)
  change_setting("worm-spit-blockable", true)
  change_setting("rockets-blockable", true)
  change_setting("pools-affect-structures", false)
  change_setting("pools-affect-flying", false)
  change_setting("shotguns-hit-friendly", true)
  change_setting("unit-speed", 120)
  change_setting("unit-health", 150)
  change_setting("unit-range", 105)
  change_setting("worm-health", 150)
  change_setting("worm-range", 110)
  change_setting("spawner-health", 110)
end
--companion drones rebalanced
if mods["companion-drones-rebalanced"] then
  change_setting("start-with-companions", true)
  change_setting("equipment-laser-mode", "enabled-start-without")
  change_setting("start-companions-has-shield", false)
end
--IfNickel
if mods["IfNickel"] then
  change_setting("ifnickel-experimental-intermediates", true)
end
--k2
if mods["Krastorio2"] then
  change_setting("kr-stack-size", "No changes")
  change_setting("kr-long-hands", 1)
  change_setting("kr-bonus-inventory", 0)
  change_setting("kr-cargo-wagon-bonus", 0)
  change_setting("kr-bonus-items", true)
  --change_setting("kr-loaders", true)
  change_setting("kr-containers", false)
  change_setting("kr-tech-multiplier-everywhere", false)
  change_setting("kr-automation-science-pack-recipe", "Krastorio 2")
  change_setting("kr-logistic-science-pack-recipe", "Krastorio 2")
  change_setting("kr-military-science-pack-recipe", "Krastorio 2")
  change_setting("kr-chemical-science-pack-recipe", "Krastorio 2")
  change_setting("kr-production-science-pack-recipe", "Krastorio 2")
  change_setting("kr-utility-science-pack-recipe", "Krastorio 2")
  change_setting("kr-rebalance-vehicles&fuels", true)
  change_setting("kr-rebalance-radar", true)
  change_setting("kr-rebalance-fuels", true)
  change_setting("kr-electric-poles-changes", true)
  change_setting("kr-damage-and-ammo", true)
  change_setting("kr-pipes-and-belts-changes", true)
  change_setting("kr-more-realistic-weapon", true)
  change_setting("kr-more-realistic-weapon-auto-aim", true)
  change_setting("kr-finite-oil", true)
  change_setting("kr-peaceful-mode", false)
  change_setting("kr-infinite-technology", true)
  change_setting("kr-spidertron-exoskeleton", false)
  change_setting("kr-fix-laser-artillery-turret", true)
end
--wide chest
if mods["WideChests"] then
  change_setting("max-chest-width", 27)
  change_setting("max-chest-height", 27)
  change_setting("max-chest-area", 27)
  change_setting("inventory-size-multiplier", 1.0)
  change_setting("inventory-size-limit", 500)
end
if mods["RampantArsenal"] then
  change_setting("rampant-arsenal-enableNuclearGeneratorEquipmentConsuming", false)
  change_setting("rampant-arsenal-enableRifleTurret", false)
end
--rampant fixed
if mods["RampantFixed"] then
  change_setting("rampantFixed-removeBloodParticles", true)
  change_setting("rampantFixed--oneshotProtection_efficiency", 90)
  change_setting("rampantFixed--tierEnd", 10)
  change_setting("rampantFixed--addWallResistanceAcid", true)
  change_setting("rampantFixed--unitAndSpawnerFadeTime", 10)
  change_setting("rampantFixed--useBlockableSteamAttacks", true)
  change_setting("rampantFixed--maxNumberOfBuilders", 10)
  change_setting("rampantFixed--maxNumberOfSquads", 10)
  change_setting("rampantFixed--safeBuildings", true)
  change_setting("rampantFixed--safeBuildings-curvedRail", true)
  change_setting("rampantFixed--safeBuildings-straightRail", true)
  change_setting("rampantFixed--safeBuildings-bigElectricPole", true)
  change_setting("rampantFixed--safeBuildings-railChainSignals", true)
  change_setting("rampantFixed--safeBuildings-railSignals", true)
  change_setting("rampantFixed--safeBuildings-trainStops", true)
  change_setting("rampantFixed--safeBuildings-lamps", true)
  change_setting("rampantFixed--allowDaytimePlayerHunting", true)
  change_setting("rampantFixed--allowDaytimeNonRampantActions", true)
  change_setting("rampantFixed--enableMigration", true)
  change_setting("rampantFixed--peacePeriod", 120)
  change_setting("rampantFixed--undergroundAttack", false)
  change_setting("rampantFixed--removeBloodParticles", true)
end
--rampent-evolution
if mods["RampantEvolution"] then
  change_setting("rampant-evolution--displayEvolutionMsg", true)
  change_setting("rampant-evolution-evolutionPerHiveKilled", 0)
  change_setting("rampant-evolution-evolutionPerSpawnerAbsorbed", 0)
  change_setting("rampant-evolution-evolutionPerSpawnerKilled", 0)
  change_setting("rampant-evolution-evolutionPerTileAbsorbed", 0)
  change_setting("rampant-evolution-evolutionPerTreeAbsorbed", 0)
  change_setting("rampant-evolution-evolutionPerTreeDied", 0)
  change_setting("rampant-evolution-evolutionPerUnitKilled", 0)
  change_setting("rampant-evolution--evolutionPerTime", 100000)
  change_setting("rampant-evolution--researchEvolutionCap", true)
  change_setting("rampant-evolution--toggleResearchEvolutionMultiplier", true)
  change_setting("rampant-evolution--technology-utility-science-multiplier", 40)
  change_setting("rampant-evolution--technology-production-science-multiplier", 20)
  change_setting("rampant-evolution--technology-military-science-multiplier", 10)
  change_setting("rampant-evolution--technology-logistic-science-multiplier", 2)
  change_setting("rampant-evolution--technology-automation-science-multiplier", 5)
  change_setting("rampant-evolution--processingPerTick", 1)
  change_setting("rampant-evolution--displayEvolutionMsg", false)
end
--robot-attrition
if mods["robot_attrition"] then
  change_setting("robot-attrition-factor", 1)
  change_setting("robot-attrition-repair", "Disabled")
end
--rpg-system
if mods["RPGsystem"] then
  change_setting("charxpmod_enable_damage_attribs", true)
  change_setting("charxpmod_LV_Health_Bonus", 30)
  change_setting("charxpmod_LV_Armor_Bonus", 2)
  change_setting("charxpmod_LV_Run_Speed", 10)
  change_setting("charxpmod_LV_Damage_Bonus", 4)
  change_setting("charxpmod_LV_Damage_Critical", 0.5)
  change_setting("charxpmod_LV_Magic", 1)
  change_setting("charxpmod_LV_Craft_Speed", 15)
  change_setting("charxpmod_LV_Mining_Speed", 10)
  change_setting("charxpmod_LV_Reach_Dist", 1)
  change_setting("charxpmod_LV_Inv_Bonus", 5)
  change_setting("charxpmod_LV_InvTrash_Bonus", 5)
  change_setting("charxpmod_LV_Robot_Bonus", 5)
  change_setting("charxpmod_xp_maxlevel", 50)
  change_setting("charxpmod_xp_maxlevel_ability", 20)
  change_setting("charxpmod_xpinilevel", 600)
  change_setting("charxpmod_xpmult", 1.61)
  change_setting("charxpmod_xp_mp_reductor", 0.023)
  change_setting("charxpmod_xp_multiplier_bonus", 1)
  change_setting("charxpmod_allow_xp_by_tech", true)
  change_setting("charxpmod_allow_xp_by_kill", true)
  change_setting("charxpmod_allow_xp_by_rocket", true)
  change_setting("charxpmod_allow_xp_by_mining", true)
  change_setting("charxpmod_enable_potion_loot", false)
  change_setting("charxpmod_death_penal", 20)
  change_setting("charxpmod_afk", 15)
  change_setting("charxpmod_time_ratio_xp", true)
  change_setting("charxpmod_print_critical", true)
end
--se
if mods["space-exploration"] then
  change_setting("se-space-pipe-capacity", 150)
  change_setting("se-deep-space-belt-speed-2", 90)
  change_setting("se-spawn-small-resources", true)
  --change_setting("se-meteor-interval", 30)
  change_setting("se-cmes-max-frequency", 60)
  change_setting("shotguns-hit-friendly", false)
end
--ta miners
if mods["WipMod_TA-miners"] then
  change_setting("ta-vanilla-recipes", "normal")
  change_setting("ta-maxium-tier", "mantle")
  change_setting("ta-modded-kr2", false)
  change_setting("ta-modded-se", false)
end
--heroturrets
if mods["heroturrets"] then
  change_setting("heroturrets-setting-level-up-modifier", 50)
end
if mods["Load-Furn-2"] then
  change_setting("bool-setting", "logist", false)
  change_setting("bool-setting", "steel-plate2", false)
  change_setting("bool-setting", "cool", false)
  change_setting("double-setting", "load-furn-energy", 2)
end