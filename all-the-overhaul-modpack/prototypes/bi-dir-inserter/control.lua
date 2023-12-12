local function on_bi_dir_inserter_built(event)
    if event.created_entity and event.created_entity.name == "bi_dir_inserter" then
        local entity = event.created_entity
        local surface = entity.surface
        local position = entity.position

        if global.BiDirInserter[entity.unit_number] then
            log("Duplicate Inserter exists")
        else
            -- Create bi_dir_arm entity on top of bi_dir_inserter
            local bi_dir_arm_entity = surface.create_entity({
                name = "bi_dir_arm",
                position = position,
                force = entity.force,
            })

            bi_dir_arm_entity.operable = false
            bi_dir_arm_entity.minable = false
            bi_dir_arm_entity.destructible = false

            global.BiDirInserter[entity.unit_number] = {
                parent_inserter = entity,
                child_arm = bi_dir_arm_entity,
            }
        end
    end
end

local function on_bi_dir_inserter_mined(event, create_ghosts)
    if event.entity and event.entity.name == "bi_dir_inserter" then
        local entity = event.entity
        local bi_dir_inserter_pair = global.BiDirInserter[entity.unit_number]
        
        if bi_dir_inserter_pair then
            if bi_dir_inserter_pair.child_arm and bi_dir_inserter_pair.child_arm.valid then
                if create_ghosts then
                    bi_dir_inserter_pair.child_arm.destructible = true
                    bi_dir_inserter_pair.child_arm.die()
                else
                    bi_dir_inserter_pair.child_arm.destroy()
                end
            end
        end
    end
end

local function on_bi_dir_inserter_rotated(event)
    if event.entity and event.entity.name == "bi_dir_inserter" then
        local entity = event.entity
        local bi_dir_inserter_pair = global.BiDirInserter[entity.unit_number]

        if bi_dir_inserter_pair then
            if entity.direction == defines.direction.north then
                bi_dir_inserter_pair.child_arm.direction = defines.direction.south
            elseif entity.direction == defines.direction.east then
                bi_dir_inserter_pair.child_arm.direction = defines.direction.west
            elseif entity.direction == defines.direction.south then
                bi_dir_inserter_pair.child_arm.direction = defines.direction.north
            elseif entity.direction == defines.direction.west then
                bi_dir_inserter_pair.child_arm.direction = defines.direction.east
            end
        end
    end
end

local filters_on_built = {{ filter="type", type="inserter" }}
local filters_on_mined = {{ filter="type", type="inserter" }}

-- always track built/removed train stops for duplicate name list
script.on_event(defines.events.on_built_entity, on_bi_dir_inserter_built, filters_on_built)
script.on_event(defines.events.on_robot_built_entity, on_bi_dir_inserter_built, filters_on_built )
script.on_event({defines.events.script_raised_built, defines.events.script_raised_revive, defines.events.on_entity_cloned}, on_bi_dir_inserter_built)

script.on_event(defines.events.on_pre_player_mined_item, on_bi_dir_inserter_mined, filters_on_mined )
script.on_event(defines.events.on_robot_pre_mined, on_bi_dir_inserter_mined, filters_on_mined )
script.on_event(defines.events.on_entity_died, function(event) on_bi_dir_inserter_mined(event, true) end, filters_on_mined )
script.on_event(defines.events.script_raised_destroy, on_bi_dir_inserter_mined)

script.on_event(defines.events.on_player_rotated_entity, on_bi_dir_inserter_rotated)