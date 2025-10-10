atom.util.icon = {
    --- Creates a small icon from a given icon
    --- @param icon IconData The icon to create a small version of
    --- @param position string The position of the small icon. Allowed values: "top-left", "top-right", "bottom-left", "bottom-right". Defaults to "top-left".
    --- @return IconData The small icon as a copy of the original
    createSmallIcon = function(icon, position)
        local smallIcon = table.deepcopy(icon)
        smallIcon.scale = 16 / smallIcon.icon_size
        if (not position or position == "top-left") then
            smallIcon.shift = { -8, -8 }
        end
        if (position == "top-right") then
            smallIcon.shift = { 8, -8 }
        end
        if (position == "bottom-left") then
            smallIcon.shift = { -8, 8 }
        end
        if (position == "bottom-right") then
            smallIcon.shift = { 8, 8 }
        end
        return smallIcon
    end,

    --- Creates a small icon from a given icon
    --- @param icon IconData The icon to create a small version of
    --- @param position string The position of the small icon. Allowed values: "top-left", "top-right", "bottom-left", "bottom-right". Defaults to "top-left".
    --- @return IconData The small icon as a copy of the original
    createSmallTechIcon = function(icon, position)
        local smallIcon = table.deepcopy(icon)
        smallIcon.scale = 96 / smallIcon.icon_size
        if (not position or position == "top-left") then
            smallIcon.shift = { -64, -64 }
        end
        if (position == "top-right") then
            smallIcon.shift = { 64, -64 }
        end
        if (position == "bottom-left") then
            smallIcon.shift = { -64, 64 }
        end
        if (position == "bottom-right") then
            smallIcon.shift = { 64, 64 }
        end
        return smallIcon
    end
}