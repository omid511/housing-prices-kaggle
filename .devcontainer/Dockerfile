FROM python:3.11-bookworm

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

# Copy dependency files
COPY pyproject.toml uv.lock /tmp/

# Install dependencies
# We use --system to install into the system python environment since this is a container
# RUN cd /tmp && uv pip install -r pyproject.toml --system
RUN cd /tmp && uv pip compile pyproject.toml -o requirements.txt
RUN pip install -r /tmp/requirements.txt

# Clean up
RUN rm /tmp/pyproject.toml /tmp/uv.lock /tmp/requirements.txt
