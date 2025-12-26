# Dockerfile for base16-complete development environment
# Provides Python 3, uv, and pybase16-builder for generating color schemes

FROM python:3.12-slim

LABEL maintainer="Tyler Butler <tyler@tylerbutler.com>"
LABEL description="Development environment for base16-complete color scheme generation"

# Install git (required for pybase16 to clone scheme/template sources) and curl (for uv install)
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

# Set working directory
WORKDIR /workspace

# Default command shows help
CMD ["uv", "run", "pybase16", "--help"]
