FROM mcr.microsoft.com/devcontainers/python:3.10

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

# Copy dependency files
COPY pyproject.toml uv.lock /tmp/

# Install dependencies
# We use --system to install into the system python environment since this is a container
RUN cd /tmp && uv sync --frozen --system

# Clean up
RUN rm /tmp/pyproject.toml /tmp/uv.lock
