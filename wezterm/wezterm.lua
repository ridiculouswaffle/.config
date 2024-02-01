-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'Gruvbox Dark (Gogh)'
config.color_scheme = 'nord'
config.window_background_opacity = 0.95
config.window_close_confirmation = 'NeverPrompt'
config.enable_tab_bar = false
config.font = wezterm.font('Iosevka Nerd Font', { weight = 'Medium' })
config.font_size = 14.0
config.window_decorations = 'RESIZE'

-- and finally, return the configuration to wezterm
return config
