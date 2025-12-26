# base16-complete

A comprehensive collection of pre-generated [Base16](https://github.com/chriskempson/base16) color schemes for 84 applications.

## Overview

This repository provides ready-to-use Base16 color themes for terminal emulators, text editors, window managers, and other applications. All themes are pre-generated from 188 color palette definitions, so you can simply download the theme file you need without running any build tools.

## Quick Start

1. Navigate to `base16/{application}/` to find themes for your application
2. Copy the theme file to your application's configuration directory
3. Enable the theme according to your application's documentation

For example, to use the Dracula theme in Vim:

```bash
cp base16/vim/colors/base16-dracula.vim ~/.vim/colors/
```

Then add to your `.vimrc`:

```vim
colorscheme base16-dracula
```

## Supported Applications

### Terminal Emulators
Alacritty, Blink, Crosh, Foot, GNOME Terminal, iTerm2, Kitty, Konsole, Mate Terminal, Mintty, PuTTY, st, Terminator, Termite, Termux, Tilix, WezTerm, Windows Terminal, Xfce4 Terminal

### Text Editors & IDEs
Doom Emacs, Emacs, Helix, JetBrains IDEs, Joe, Kakoune, MonoDevelop, Neovim, Qt Creator, Scide, Sublime Text (via Textmate), TextAdept, TextMate, Vim, vis, VS Code, Xcode

### Window Managers & Status Bars
dwm, i3, i3status, i3status-rust, Polybar, Sway, Waybar, Window Maker

### Notification Daemons
Dunst, Mako

### Application Launchers
Rofi, Wofi

### Other Applications
Amfora, Binary Ninja, ConEmu, Console2, ConsoleZ, concfg, Everything, Frescobaldi, FZF, Godot, GTK (FlatColor), Hexchat, Highlight, Highlight.js, Hugo, k9s, Luakit, Prism, Prompt-Toolkit, Pygments, Pywal, QOwnNotes, Qutebrowser, Shell exports, Spotify (spicetify), StumpWM, Tmux, TTY, Vim Airline, Vimiv, Zathura

### Web & Development
C Headers, HTML Preview, Highlight.js, Prism, Xresources

## Available Color Schemes

This repository includes 188 color schemes, including popular themes such as:

- **Dark themes**: Dracula, Nord, Gruvbox Dark, One Dark, Tokyo Night, Catppuccin, Monokai, Solarized Dark, Tomorrow Night
- **Light themes**: Gruvbox Light, One Light, Solarized Light, Tomorrow, GitHub

All scheme files follow the naming pattern: `base16-{scheme-name}.{extension}`

## Repository Structure

```
base16-complete/
├── base16/                    # Generated color schemes
│   ├── alacritty/colors/      # Alacritty terminal themes
│   ├── vim/colors/            # Vim colorschemes
│   ├── vscode/themes/         # VS Code themes
│   └── ...                    # 84 application directories
├── build.sh                   # Build script
├── pyproject.toml             # Python project config (uv)
├── sources.yaml               # Source configuration
└── CLAUDE.md                  # AI assistant documentation
```

## Base16 Color Palette

Each scheme defines 16 colors following the [Base16 specification](https://github.com/chriskempson/base16/blob/main/styling.md):

| Color   | Role                    | Typical Use                    |
|---------|-------------------------|--------------------------------|
| base00  | Default Background      | Editor background              |
| base01  | Lighter Background      | Status bars, line numbers      |
| base02  | Selection Background    | Text selection                 |
| base03  | Comments                | Comments, invisibles           |
| base04  | Dark Foreground         | Dark text on light backgrounds |
| base05  | Default Foreground      | Default text                   |
| base06  | Light Foreground        | Light text                     |
| base07  | Light Background        | Light background elements      |
| base08  | Red                     | Variables, errors              |
| base09  | Orange                  | Integers, constants            |
| base0A  | Yellow                  | Classes, search highlighting   |
| base0B  | Green                   | Strings                        |
| base0C  | Cyan                    | Support, regex                 |
| base0D  | Blue                    | Functions, methods             |
| base0E  | Purple                  | Keywords, tags                 |
| base0F  | Brown                   | Deprecated, embedded language  |

## Contributing

See [DEV.md](DEV.md) for information on building the repository and contributing.

## Related Projects

- [Base16](https://github.com/chriskempson/base16) - The original Base16 project
- [pybase16-builder](https://github.com/InspectorMustache/base16-builder-python) - Python builder used to generate these themes
- [base16-schemes-source](https://github.com/tylerbutler/base16-schemes-source) - Color scheme definitions
- [base16-templates-source](https://github.com/chriskempson/base16-templates-source) - Application templates

## License

MIT License - see [LICENSE](LICENSE) for details.
