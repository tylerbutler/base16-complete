# Development Guide

This document covers how to build and contribute to base16-complete.

## Prerequisites

- Python 3.x
- pip3

## Setup

Install the required Python package:

```bash
./install.sh
```

Or manually:

```bash
pip3 install pybase16-builder
```

## Building

To regenerate all color schemes:

```bash
./build.sh
```

This executes two commands:

1. `pybase16 update -cv` - Downloads/updates scheme and template sources
2. `pybase16 build -v -o base16` - Generates color scheme files for all applications

The build process:
- Fetches the latest scheme definitions (color palettes) from the schemes source
- Fetches the latest templates (application-specific formats) from the templates source
- Generates theme files for each scheme/template combination
- Outputs everything to the `base16/` directory

## Project Structure

```
base16-complete/
├── base16/                    # Generated output (committed to repo)
│   └── {app}/                 # One directory per application template
├── sources/                   # Downloaded source repos (gitignored)
├── schemes/                   # Raw scheme definitions (gitignored)
├── templates/                 # Raw template definitions (gitignored)
├── output/                    # Intermediate build output (gitignored)
├── build.sh                   # Main build script
├── install.sh                 # Dependency installation
├── sources.yaml               # External source configuration
└── CLAUDE.md                  # AI assistant documentation
```

## Source Configuration

The `sources.yaml` file defines where schemes and templates are fetched from:

```yaml
schemes: https://github.com/tylerbutler/base16-schemes-source.git
templates: https://github.com/chriskempson/base16-templates-source.git
```

These are "source of sources" repositories that list individual scheme and template repositories.

## How to Contribute

### Adding a New Color Scheme

Color schemes are defined in external repositories. To add a new scheme:

1. Create a scheme definition following the [Base16 scheme format](https://github.com/chriskempson/base16/blob/main/builder.md#schemes)
2. Submit it to an existing schemes repository, or create your own
3. If using a custom repository, add it to the [schemes source list](https://github.com/tylerbutler/base16-schemes-source)
4. Run `./build.sh` to regenerate all themes

### Adding Support for a New Application

Application templates are defined in external repositories. To add support for a new application:

1. Create a template following the [Base16 template format](https://github.com/chriskempson/base16/blob/main/builder.md#templates)
2. Submit it to an existing templates repository, or create your own
3. If using a custom repository, add it to the [templates source list](https://github.com/chriskempson/base16-templates-source)
4. Run `./build.sh` to regenerate all themes

### Updating the Repository

To update to the latest schemes and templates:

```bash
./build.sh
git add base16/
git commit -m "build"
git push
```

## Important Notes

### Do Not Edit Generated Files

Files in the `base16/` directory are auto-generated. Any manual changes will be overwritten on the next build. To modify themes:

- For color changes: modify the source scheme definition
- For format changes: modify the source template

### Build Artifacts

The following directories are created during the build process and are gitignored:

- `sources/` - Cloned source repositories
- `schemes/` - Downloaded scheme definitions
- `templates/` - Downloaded template definitions
- `output/` - Intermediate build output

### File Naming Convention

All generated files follow the pattern: `base16-{scheme-name}.{extension}`

Examples:
- `base16-dracula.vim`
- `base16-nord.toml`
- `base16-gruvbox-dark-hard.json`

## Troubleshooting

### Build fails with "pybase16: command not found"

Run `./install.sh` or `pip3 install pybase16-builder`.

### Network errors during build

The build process requires internet access to fetch sources. Ensure you have connectivity and try again.

### Missing schemes or templates

Run `pybase16 update -cv` to refresh the source repositories, then rebuild.

## Resources

- [Base16 Specification](https://github.com/chriskempson/base16)
- [pybase16-builder Documentation](https://github.com/InspectorMustache/base16-builder-python)
- [Scheme Format](https://github.com/chriskempson/base16/blob/main/builder.md#schemes)
- [Template Format](https://github.com/chriskempson/base16/blob/main/builder.md#templates)
