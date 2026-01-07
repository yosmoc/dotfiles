#!/bin/bash
set -euo pipefail

REPO_URL="$1"

export HOME=/home/user
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
export PATH="$HOME/.local/bin:$PATH"
export CHEZMOI_EMAIL="me@example.com"
export CHEZMOI_USER="me"

chezmoi init "$REPO_URL"
chezmoi apply
