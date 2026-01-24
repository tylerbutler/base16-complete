#!/usr/bin/env bash

# Download/update schemes and templates from sources
uv run pybase16 update -cv

# Build all color schemes
# pybase16 exits with code 2 when there are warnings (e.g., file overwrites)
# even when the build completes successfully, so we check for actual output
uv run pybase16 build -v -o base16
BUILD_EXIT=$?

# Verify build produced output (at least the vim colorschemes should exist)
if [ ! -d "base16/vim/colors" ] || [ -z "$(ls -A base16/vim/colors 2>/dev/null)" ]; then
    echo "Error: Build failed - no output generated"
    exit 1
fi

# Exit 0 if build completed (exit code 0 or 2 with warnings)
if [ $BUILD_EXIT -eq 0 ] || [ $BUILD_EXIT -eq 2 ]; then
    exit 0
fi

exit $BUILD_EXIT
