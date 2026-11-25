#!/usr/bin/env bash
set -euo pipefail

# Cursor cloud environment for the Home Assistant Tailscale add-on.
# The Tailscale and netcat setup matches shark5060/crowdsec-web-ui.
# The quality gate is `bash scripts/validate` (docker build of the add-on image).

if ! command -v tailscaled >/dev/null; then
  . /etc/os-release
  curl -fsSL "https://pkgs.tailscale.com/stable/ubuntu/${VERSION_CODENAME}.noarmor.gpg" | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
  curl -fsSL "https://pkgs.tailscale.com/stable/ubuntu/${VERSION_CODENAME}.tailscale-keyring.list" | sudo tee /etc/apt/sources.list.d/tailscale.list >/dev/null
  sudo apt-get update -qq
  sudo DEBIAN_FRONTEND=noninteractive apt-get install -y tailscale
fi

if ! command -v nc >/dev/null; then
  sudo DEBIAN_FRONTEND=noninteractive apt-get install -y netcat-openbsd
fi

if ! command -v docker >/dev/null; then
  sudo apt-get update -qq
  sudo DEBIAN_FRONTEND=noninteractive apt-get install -y docker.io
fi
