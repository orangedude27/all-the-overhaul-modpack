if mods["space-exploration"] and mods["248k"] and mods["bztin"] then
    data:extend({
        {
            type = "item",
            name = "hcp-board",
            icon = "__all-the-overhaul-modpack__/graphics/icons/hcp-board.png",
            icon_size = 128,
            subgroup = "bob-boards",
            order = "c-b4",
            stack_size = 200
        },
        {
            type = "recipe",
            name = "hcp-board",
            category = "electronics-machine",
            energy_required = 10,
            enabled = false,
            ingredients = {
                { "gr_materials_pcb", 1 },
                { "se-holmium-plate", 1 },
                { "tin-plate", 2 },
                { type = "fluid", name = "ferric-chloride-solution", amount = 5 }
            },
            result = "hcp-board",
            allow_decomposition = false
        },
        {
            type = "recipe",
            name = "hcp-circuit",
            category = "crafting-with-fluid",
            energy_required = 1,
            enabled = false,
            ingredients = {
                { type = "item", name = "se-superconductive-cable", amount = 2 },
                { type = "item", name = "advanced-electronic-components", amount = 3 },
                { type = "item", name = "electronic-components", amount = 2 },
                { type = "item", name = "hcp-board", amount = 1 },
                { type = "fluid", name = "fi_strong_acid", amount = 50 },
            },
            results = {
                data.raw.fluid["depleted-acid"] and { type = "fluid", name = "depleted-acid", amount = 50 } or nil,
                { type = "item", name = "gr_materials_circuit", amount = 1 },
            },
            main_product = "gr_materials_circuit",
            allow_decomposition = false
        },
        {
            type = "recipe",
            name = "pcb-recipe",
            category = "crafting-with-fluid",
            energy_required = 2,
            enabled = false,
            ingredients = {
                { type = "fluid", name = "se-vitalic-acid", amount = 4 },
                { type = "item", name = "fi_materials_glass_fiber", amount = 1 },
                { type = "item", name = "fu_materials_carbon_fiber", amount = 1 },
                { type = "item", name = "plastic-bar", amount = 4 },
            },
            results = {
                { type = "item", name = "gr_materials_pcb", amount = 6 },
            },
            allow_decomposition = false
        },
        {
            type = "technology",
            name = "hcp-circuit",
            effects = {
                { type = "unlock-recipe", recipe = "hcp-circuit" },
                { type = "unlock-recipe", recipe = "pcb-recipe" },
                { type = "unlock-recipe", recipe = "hcp-board" },
            },
            icon = "__248k__/ressources/techs/gr_circuit_tech.png",
            icon_size = 128,
            prerequisites = { "se-superconductive-cable" },
            unit = {
                count = 300,
                time = 30,
                ingredients = {
                    { "automation-science-pack", 1 },
                    { "logistic-science-pack", 1 },
                    { "chemical-science-pack", 1 },
                    { "se-rocket-science-pack", 1 },
                    { "space-science-pack", 1 },
                    { "production-science-pack", 1 },
                    { "utility-science-pack", 1 },
                    { "se-material-science-pack-3", 1 },
                    { "se-energy-science-pack-3", 1 },
                },
            },
        }
    })

    atom.util.technology.replacePrerequisite("gr_circuit_tech", "gr_stage_tech")
    data.raw.technology["gr_circuit_tech"] = nil

    -- HCP circuit usage
    atom.util.Recipe("fusion-reactor-equipment").replaceIngredient("processing-unit", "gr_materials_circuit", 150)
    atom.util.Recipe("big-battery-mk3-equipment").replaceIngredient("processing-unit", "gr_materials_circuit", 2)
    atom.util.Recipe("battery-mk3-equipment").replaceIngredient("processing-unit", "gr_materials_circuit", 1)
    atom.util.Recipe("se-space-supercomputer-3").replaceIngredient("processing-unit", "gr_materials_circuit", 1000)
    atom.util.Recipe("se-thruster-suit-3").replaceIngredient("processing-unit", "gr_materials_circuit", 100)
    atom.util.Recipe("se-thruster-suit-4").replaceIngredient("processing-unit", "gr_materials_circuit", 200)
    atom.util.Recipe("se-big-turbine").addIngredient("gr_materials_circuit", 20)
    atom.util.Recipe("se-energy-transmitter-emitter").replaceIngredient("processing-unit", "gr_materials_circuit", 100)
    atom.util.Recipe("se-energy-transmitter-injector").replaceIngredient("processing-unit", "gr_materials_circuit", 50)
    atom.util.Recipe("se-energy-receiver").replaceIngredient("processing-unit", "gr_materials_circuit", 50)
    atom.util.Recipe("se-antimatter-reactor").replaceIngredient("processing-unit", "gr_materials_circuit", 500)
    atom.util.Recipe("se-nexus").addIngredient("gr_materials_circuit", 10)
    atom.util.Recipe("kr-stabilizer-charging-station").replaceIngredient("processing-unit", "gr_materials_circuit", 1)
    atom.util.Recipe("kr-antimatter-reactor").addIngredient("gr_materials_circuit", 100)
    atom.util.Recipe("kr-energy-storage").addIngredient("gr_materials_circuit", 10)
    atom.util.Recipe("antimatter-turret-rocket").replaceIngredient("processing-unit", "gr_materials_circuit", 1)
    atom.util.Recipe("antimatter-rocket").replaceIngredient("processing-unit", "gr_materials_circuit", 1)
    atom.util.Recipe("antimatter-artillery-shell").replaceIngredient("processing-unit", "gr_materials_circuit", 1)
    atom.util.Recipe("antimatter-railgun-shell").replaceIngredient("processing-unit", "gr_materials_circuit", 1)
    atom.util.Recipe("antimatter-reactor-equipment").addIngredient("gr_materials_circuit", 50)
    atom.util.Recipe("fu_star_engine_core_recipe").replaceIngredient("processing-unit", "gr_materials_circuit", 3000)
end