local max_stack = 10000

data:extend({
    {
        type = "bool-setting",
        name = "atom-easy-military-start",
        setting_type = "startup",
        default_value = false,
        order = "aaa"
    },
    {
        type = "bool-setting",
        name = "atom-easy-automation-start",
        setting_type = "startup",
        default_value = false,
        order = "aab"
    },
    {
        type = "bool-setting",
        name = "atom-enable-sorting",
        setting_type = "startup",
        default_value = true,
        order = "aac"
    }
})
