--
-- Base16 Spaceduck
-- Author: Guillermo Rodriguez (pineapplegiant)
--

function hex2rgb(hex)
    local hex = hex:gsub("#","")
    return string.format("%s, %s, %s",tonumber("0x"..hex:sub(1,2)), tonumber("0x"..hex:sub(3,4)), tonumber("0x"..hex:sub(5,6)))
end

local base00 = "#000000" -- ----
local base01 = "#5ccc96" -- ---
local base02 = "#b3a1e6" -- --
local base03 = "#686f9a" -- -
local base04 = "#00a3cc" -- +
local base05 = "#686f9a" -- ++
local base06 = "#f2ce00" -- +++
local base07 = "#f0f1ce" -- ++++
local base08 = "#e33400" -- red
local base09 = "#e33400" -- orange
local base0A = "#b3a1e6" -- yellow
local base0B = "#5ccc96" -- green
local base0C = "#7a5ccc" -- aqua/cyan
local base0D = "#00a3cc" -- blue
local base0E = "#f2ce00" -- purple
local base0F = "#7a5ccc" -- brown

local theme = {}

-- Default settings
theme.fg   = base00
theme.bg   = base07

-- Genaral colours
theme.success_fg = base0C
theme.loaded_fg  = base0D
theme.error_fg   = base00
theme.error_bg   = base08

-- Warning colours
theme.warning_fg = base00
theme.warning_bg = base0E

-- Notification colours
theme.notif_fg = base00
theme.notif_bg = base05

-- Menu colours
theme.menu_fg                   = base05
theme.menu_bg                   = base00
theme.menu_selected_fg          = base01
theme.menu_selected_bg          = base0A

theme.menu_title_bg             = base00
theme.menu_primary_title_fg     = base05
theme.menu_secondary_title_fg   = base04

theme.menu_disabled_fg = base03
theme.menu_disabled_bg = theme.menu_bg
theme.menu_enabled_fg  = theme.menu_fg
theme.menu_enabled_bg  = theme.menu_bg
theme.menu_active_fg   = base06
theme.menu_active_bg   = theme.menu_bg

-- Proxy manager
theme.proxy_active_menu_fg      = base05
theme.proxy_active_menu_bg      = base00
theme.proxy_inactive_menu_fg    = base03
theme.proxy_inactive_menu_bg    = base00

-- Statusbar specific
theme.sbar_fg         = base05
theme.sbar_bg         = base00

-- Downloadbar specific
theme.dbar_fg         = base00
theme.dbar_bg         = base0D
theme.dbar_error_fg   = base08

-- Input bar specific
theme.ibar_fg           = base05
theme.ibar_bg           = base00

-- Tab label
theme.tab_fg            = base05
theme.tab_bg            = base00
theme.tab_hover_bg      = base03
theme.tab_ntheme        = base03
theme.selected_fg       = base05
theme.selected_bg       = base03
theme.selected_ntheme   = base00
theme.loading_fg        = base0D
theme.loading_bg        = base00

theme.selected_private_tab_bg = base05
theme.private_tab_bg          = base03

-- Trusted/untrusted ssl colours
theme.trust_fg          = base0B
theme.notrust_fg        = base0D

-- Follow mode hints
theme.hint_fg     = base00
theme.hint_bg     = base0A
theme.hint_border = string.format("1px dashed %s", base0A)

theme.hint_overlay_bg     = string.format("rgba(%s, 0.3)", hex2rgb(base07))
theme.hint_overlay_border = string.format("1px dotted %s", base07)

theme.hint_overlay_selected_bg     = string.format("rgba(%s, 0.3)", hex2rgb(base0B))
theme.hint_overlay_selected_border = theme.hint_overlay_border

-- General colour pairings
theme.ok    = { fg = base05, bg = base00 }
theme.warn  = { fg = base00, bg = base0E }
theme.error = { fg = base08, bg = base00 }

-- Font
theme.font      = "12px monospace"
theme.hint_font = "10px monospace, courier, sans-serif"

return theme

-- vim: et:sw=4:ts=8:sts=4:tw=80:ft=lua