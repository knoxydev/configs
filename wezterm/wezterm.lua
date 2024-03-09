-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'AdventureTime'
config.default_cursor_style = 'SteadyBar'
config.use_fancy_tab_bar = false
config.enable_scroll_bar = true
config.tab_max_width = 22
config.font = wezterm.font('JetBrains Mono')
config.font_size = 11.0
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.colors = {
  tab_bar = {
    background = '#1F1D45',

    active_tab = {
      bg_color = '#1F1D45',
      fg_color = '#c0c0c0',
      intensity = 'Normal',
      underline = 'None',
      italic = false,
      strikethrough = false,
    },

    inactive_tab = {
      bg_color = '#1F1D45',
      fg_color = '#595959',
    },

    inactive_tab_hover = {
      bg_color = '#030129',
      fg_color = '#909090',
    },

    new_tab = {
      bg_color = '#1F1D45',
      fg_color = '#808080',
    },

    new_tab_hover = {
      bg_color = '#1F1D45',
      fg_color = '#CCCAF2',
    },
  },
}


return config
