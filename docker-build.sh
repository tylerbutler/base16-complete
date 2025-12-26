#!/usr/bin/env bash
set -euo pipefail

# docker-build.sh - Build base16 color schemes using Docker
# This script builds the Docker image and runs the build process,
# outputting generated files to the base16/ directory.

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IMAGE_NAME="base16-complete"

echo "==> Building Docker image..."
docker build -t "$IMAGE_NAME" "$SCRIPT_DIR"

echo "==> Running build in Docker container..."
docker run --rm \
    -v "$SCRIPT_DIR:/workspace" \
    -w /workspace \
    "$IMAGE_NAME" \
    bash -c "./build.sh"

echo "==> Build complete! Generated files are in base16/"
