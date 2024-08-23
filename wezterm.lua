local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Set the initial size.
config.initial_cols = 96
config.initial_rows = 24

-- Set the theme.
local materia = wezterm.color.get_builtin_schemes()["Material Darker (base16)"]
materia.scrollbar_thumb = "#cccccc"
config.colors = materia

-- Enable to show the scroll bar.
config.enable_scroll_bar = true

-- Disable the default keymaps.
config.disable_default_key_bindings = true

-- Set the keymaps.
local act = wezterm.action
config.keys = {
	{key = "C", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard")},
	{key = "V", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard")},
}

return config

