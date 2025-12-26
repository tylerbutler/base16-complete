# CLAUDE.md - AI Assistant Guide for base16-complete

## Project Overview

**base16-complete** is a comprehensive color scheme distribution repository that generates Base16 color schemes for 84+ applications from 188 color palette definitions.

- **Author**: Tyler Butler (tyler@tylerbutler.com)
- **License**: MIT
- **Purpose**: Pre-generate Base16 color themes across terminal emulators, text editors, window managers, and system applications

The Base16 specification defines a standard 16-color palette (base00-base0F) that provides consistent theming across different applications.

## Directory Structure

```
base16-complete/
├── base16/                    # Generated color schemes (DO NOT EDIT MANUALLY)
│   ├── alacritty/colors/      # Alacritty terminal (YAML)
│   ├── doom/themes/           # Doom Emacs (Elisp)
│   ├── helix/themes/          # Helix editor (TOML)
│   ├── iterm2/colors/         # iTerm2 Mac (PLIST)
│   ├── kitty/colors/          # Kitty terminal
│   ├── neovim/colors/         # Neovim (Lua)
│   ├── nvim/colors/           # Alt Neovim location
│   ├── shell/scripts/         # Shell color exports
│   ├── tmux/colors/           # Tmux (config)
│   ├── vim/colors/            # Vim (VimL)
│   ├── vscode/themes/         # VS Code (JSON)
│   ├── windows-terminal/      # Windows Terminal (JSON)
│   └── ... (84 template directories total)
├── .devcontainer/             # VS Code / Codespaces dev container config
│   └── devcontainer.json
├── build.sh                   # Main build script
├── docker-build.sh            # Build using Docker (no local deps needed)
├── Dockerfile                 # Docker dev environment definition
├── pyproject.toml             # Python project config (uv)
├── sources.yaml               # External source configuration
├── LICENSE                    # MIT License
└── .gitignore                 # Ignores temp build dirs
```

## Build System

### Dependencies

- **[uv](https://docs.astral.sh/uv/)** (Python package manager)
- **pybase16-builder** (Python package for generating color schemes, installed automatically by uv)

### Building

```bash
./build.sh
```

This runs:
1. `uv run pybase16 update -cv` - Downloads/updates schemes and templates from sources
2. `uv run pybase16 build -v -o base16` - Generates all color scheme files

uv automatically creates a virtual environment and installs dependencies on first run.

### Docker Development

The project includes Docker support for development without installing dependencies locally.

#### Using Docker directly

```bash
# Build using Docker (recommended for one-off builds)
./docker-build.sh
```

This builds the Docker image and runs the build process, outputting files to `base16/`.

#### VS Code Dev Containers / GitHub Codespaces

The project includes a `.devcontainer/` configuration for seamless development:

1. **VS Code**: Install the "Dev Containers" extension, then use "Reopen in Container"
2. **GitHub Codespaces**: Click "Code" > "Codespaces" > "Create codespace"

Once inside the container, run `./build.sh` to generate color schemes.

### External Sources (sources.yaml)

- **Schemes**: https://github.com/tylerbutler/base16-schemes-source.git (188 color palettes)
- **Templates**: https://github.com/chriskempson/base16-templates-source.git (84 app templates)

## Key Conventions

### File Naming

All generated files follow the pattern: `base16-{scheme-name}.{extension}`

Examples:
- `base16-dracula.vim`
- `base16-nord.json`
- `base16-gruvbox-dark-hard.toml`

### Base16 Color Palette

Each scheme defines 16 colors following the Base16 standard:
- `base00` - Default Background
- `base01` - Lighter Background
- `base02` - Selection Background
- `base03` - Comments/Invisibles
- `base04` - Dark Foreground
- `base05` - Default Foreground
- `base06` - Light Foreground
- `base07` - Light Background
- `base08` - Red (Variables)
- `base09` - Orange (Integers)
- `base0A` - Yellow (Classes)
- `base0B` - Green (Strings)
- `base0C` - Cyan (Support)
- `base0D` - Blue (Functions)
- `base0E` - Purple (Keywords)
- `base0F` - Brown (Deprecated)

### Ignored Directories

The following are temporary build artifacts (in .gitignore):
- `sources/` - Downloaded source repositories
- `schemes/` - Raw scheme definitions
- `templates/` - Raw template definitions
- `output/` - Intermediate output
- `.venv/` - Python virtual environment (managed by uv)

## Important Notes for AI Assistants

### DO NOT

1. **Do not manually edit files in `base16/`** - These are auto-generated. Changes will be overwritten on next build.
2. **Do not commit build artifacts** - The `sources/`, `schemes/`, `templates/`, and `output/` directories are gitignored.
3. **Do not modify individual color scheme files** - To change colors, modify the source scheme definition and rebuild.

### DO

1. **Modify `sources.yaml`** to change which scheme/template sources are used
2. **Modify `build.sh`** to change build behavior or output location
3. **Run `./build.sh`** after changing sources to regenerate all files
4. **Check multiple formats** when verifying a color scheme (e.g., both vim and vscode versions)

### Common Tasks

#### Adding a new color scheme
1. Add the scheme to the schemes source repository (defined in sources.yaml)
2. Run `./build.sh` to regenerate all templates

#### Adding support for a new application
1. Add the template to the templates source repository (defined in sources.yaml)
2. Run `./build.sh` to generate schemes for the new application

#### Updating all schemes to latest
```bash
./build.sh
git add base16/
git commit -m "build"
```

## Supported Applications (Partial List)

### Terminal Emulators
Alacritty, iTerm2, Kitty, GNOME Terminal, Terminator, Windows Terminal, WezTerm, Xfce4 Terminal, st

### Text Editors
Vim, Neovim, VS Code, Sublime Text, Emacs, Doom Emacs, TextMate, Xcode, Helix, JetBrains IDEs

### Window Managers
i3, Sway, Polybar, Waybar, Rofi, Dunst

### Other
Tmux, FZF, Highlight.js, Pygments, Zathura, GTK themes, Shell exports

## Repository Stats

- **188** color schemes
- **84** application templates
- **15,000+** generated theme files
- **~86MB** of color scheme data
