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

-- Set the font size.
config.font_size = 14

-- Enable to show the scroll bar.
config.enable_scroll_bar = true

-- Disable the default keymaps.
config.disable_default_key_bindings = true

local launch_menu = {}
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	ssh_cmd = {"powershell.exe"}
	table.insert(
		launch_menu,
		{
			label = "PowerShell",
			args = {
				"powershell.exe",
				"-NoLogo"
			}
		}
	)

	table.insert(
		launch_menu,
		{
			label = "CMD",
			args = {
				"cmd.exe",
			}
		}
	)

	config.launch_menu = launch_menu
	config.default_prog = {
		"powershell.exe",
		"-NoLogo",
	}
end

-- Set the keymaps.
local act = wezterm.action
config.keys = {
	{key = "C", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard")},
	{key = "V", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard")},
}

return config

