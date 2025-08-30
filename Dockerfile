# Quarto + Python base
FROM ghcr.io/quarto-dev/quarto:1.5.57

# Add Python (uv) + Jupyter support
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3 python3-pip python3-venv \
    && rm -rf /var/lib/apt/lists/*

# Set workdir
WORKDIR /project

# Preinstall python deps to leverage Docker cache
COPY requirements.txt requirements.txt
RUN python3 -m venv .venv \
    && . .venv/bin/activate \
    && pip install --upgrade pip \
    && pip install -r requirements.txt || true

# Copy project last to maximize cache
COPY . .

# Expose preview port
EXPOSE 4000

# Default command: run preview for the deck
CMD ["bash", "-lc", "quarto preview slides/index.qmd --host 0.0.0.0 --port 4000 --no-browser"]
