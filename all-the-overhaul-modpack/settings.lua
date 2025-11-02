data:extend({
    {
        type = "bool-setting",
        name = "atom-easy-military-start",
        setting_type = "startup",
        default_value = false,
        order = "a"
    },
    {
        type = "bool-setting",
        name = "atom-easy-automation-start",
        setting_type = "startup",
        default_value = false,
        order = "b"
    },
    {
        type = "bool-setting",
        name = "atom-disable-laser-artillery",
        setting_type = "startup",
        default_value = false,
        order = "c"
    },
    {
        type = "string-setting",
        name = "atom-basic-tech-card-mode",
        setting_type = "startup",
        allowed_values = { "none", "red", "green", "nauvis", "all" },
        default_value = "red",
        order = "d"
    }
})