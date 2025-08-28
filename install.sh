#!/usr/bin/env bash
set -euo pipefail

# This script bootstraps an Ubuntu environment by installing dependencies,
# optionally cloning the repository, and setting up development tools.

REPO_URL=${REPO_URL:-"https://github.com/yourusername/my_ubuntu_bash_settings.git"}
INSTALL_DIR=${INSTALL_DIR:-"$HOME/my_ubuntu_bash_settings"}

## Update package index and install basic requirements
if command -v apt-get >/dev/null 2>&1; then
    sudo apt-get update -y
    sudo apt-get install -y git curl wget htop
fi

# Install desktop applications via snap if available
if command -v snap >/dev/null 2>&1; then
    sudo snap install vivaldi || true
    sudo snap install telegram-desktop || true
    sudo snap install code --classic || true
fi

# Clone or update the repository
if [ ! -d "$INSTALL_DIR" ]; then
    git clone "$REPO_URL" "$INSTALL_DIR"
else
    git -C "$INSTALL_DIR" pull --ff-only
fi

# Install uv if missing
if ! command -v uv >/dev/null 2>&1; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.local/bin:$PATH"
fi

# Install ruff using uv if missing
if ! command -v ruff >/dev/null 2>&1; then
    uv tool install ruff
    export PATH="$HOME/.local/share/uv/bin:$PATH"
fi

cat <<EOM
Installation complete.
Repository: $INSTALL_DIR
uv: $(uv --version 2>/dev/null || echo "not installed")
ruff: $(ruff --version 2>/dev/null || echo "not installed")
EOM
