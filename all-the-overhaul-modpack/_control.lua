--- Used with on_player_created to get the player and then adjust the starting items if easy start is on.
---@param event  #The event that was triggered
function PlayerCreated(event)
    local player_index = event.player_index
    local player = game.get_player(player_index)

    if settings.startup["atom-easy-military-start"].value then
        for _, item in pairs(EASY_MILITARY) do
            if prototypes.item[item[1]] ~= nul then
                player.insert { name = item[1], count = item[2] }
                player.print("Added item \"" .. item[1])
            else
                player.print("Unable to add \"" .. item[1] .. "\" to inventory, please check spelling.")
            end
        end
    end
    if settings.startup["atom-easy-automation-start"].value then
        for _, item in pairs(EASY_AUTOMATION) do
            if prototypes.item[item[1]] ~= nul then
                player.insert { name = item[1], count = item[2] }
                player.print("Added item \"" .. item[1])
            else
                player.print("Unable to add \"" .. item[1] .. "\" to inventory, please check spelling.")
            end
        end
    end
end

script.on_event(defines.events.on_cutscene_cancelled, PlayerCreated)

EASY_MILITARY = {
    { "kr-armor-piercing-rifle-magazine", 4000 },
    { "gun-turret", 20 },
    { "concrete-wall", 1000 }
}

EASY_AUTOMATION = {
    { "assembling-machine-1", 20 },
    { "electric-mining-drill", 20 },
    { "solar-panel", 100 },
    { "accumulator", 100 },
    { "substation", 20 },
    { "inserter", 50 },
    { "transport-belt", 200 },
    { "underground-belt", 50 },
    { "splitter", 50 }
}

function rmm_check()
    for _, force in pairs(game.forces) do
        if force.technologies["kr-fluids-chemistry"].researched == true then
            force.technologies["kr-rare-metal-mining"].researched = true
        end
    end
end

script.on_configuration_changed(rmm_check)

commands.add_command("atom_fix_rare_metals", nil, function(command)
    rmm_check()
end)

--No revert event because it seems to happen on it's own... plus for ATOM even if it doesn't that's probably fine.
script.on_event(defines.events.on_research_finished, function(event)
    game.print(serpent.block(event.research.name))
    if event.research.name == "kr-fluids-chemistry" then
        event.research.force.technologies["kr-rare-metal-mining"].researched = true
    end
end)

