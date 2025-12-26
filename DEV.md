# Development Guide

## Prerequisites

This project uses [uv](https://docs.astral.sh/uv/) for Python package management.

Install uv:

```bash
# macOS/Linux
curl -LsSf https://astral.sh/uv/install.sh | sh

# Or with Homebrew
brew install uv
```

## Building

```bash
./build.sh
```

This runs:
1. `uv run pybase16 update -cv` - Downloads/updates scheme and template sources
2. `uv run pybase16 build -v -o base16` - Generates all color scheme files

uv automatically creates a virtual environment and installs the `pybase16-builder` dependency on first run.

## Build Artifacts

The following directories are created during build and are gitignored:

- `sources/` - Cloned source repositories
- `schemes/` - Downloaded scheme definitions
- `templates/` - Downloaded template definitions
- `output/` - Intermediate build output
- `.venv/` - Python virtual environment (managed by uv)

## Source Configuration

The `sources.yaml` file defines where schemes and templates are fetched from. These are "source of sources" repositories that list individual scheme and template repositories.

## Contributing

### Adding a New Color Scheme

1. Create a scheme following the [Base16 scheme format](https://github.com/chriskempson/base16/blob/main/builder.md#schemes)
2. Submit it to an existing schemes repository, or add your own to the [schemes source list](https://github.com/tylerbutler/base16-schemes-source)
3. Run `./build.sh` to regenerate

### Adding Support for a New Application

1. Create a template following the [Base16 template format](https://github.com/chriskempson/base16/blob/main/builder.md#templates)
2. Submit it to an existing templates repository, or add your own to the [templates source list](https://github.com/chriskempson/base16-templates-source)
3. Run `./build.sh` to regenerate

### Updating the Repository

```bash
./build.sh
git add base16/
git commit -m "build"
```

## Important: Do Not Edit Generated Files

Files in `base16/` are auto-generated and will be overwritten on the next build. To modify themes:

- For color changes: modify the source scheme definition
- For format changes: modify the source template

## Troubleshooting

**"uv: command not found"** - Install uv following the instructions above

**Network errors** - The build requires internet access to fetch sources

**Missing schemes or templates** - Run `uv run pybase16 update -cv` to refresh sources
