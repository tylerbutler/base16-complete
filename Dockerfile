# Dockerfile for base16-complete development environment
# Provides Python 3 and pybase16-builder for generating color schemes

FROM python:3.12-slim

LABEL maintainer="Tyler Butler <tyler@tylerbutler.com>"
LABEL description="Development environment for base16-complete color scheme generation"

# Install git (required for pybase16 to clone scheme/template sources)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install pybase16-builder
RUN pip install --no-cache-dir pybase16-builder

# Set working directory
WORKDIR /workspace

# Default command shows help
CMD ["pybase16", "--help"]
