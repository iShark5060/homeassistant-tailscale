# Tailscale (iShark5060)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.md)
[![CI](https://github.com/iShark5060/homeassistant-tailscale/actions/workflows/ci.yml/badge.svg)](https://github.com/iShark5060/homeassistant-tailscale/actions/workflows/ci.yml)
[![PR](https://github.com/iShark5060/homeassistant-tailscale/actions/workflows/pr.yml/badge.svg)](https://github.com/iShark5060/homeassistant-tailscale/actions/workflows/pr.yml)
![aarch64](https://img.shields.io/badge/aarch64-yes-green.svg)
![amd64](https://img.shields.io/badge/amd64-yes-green.svg)
[![Cursor](https://img.shields.io/badge/Cursor-IDE-141414?logo=cursor&logoColor=white)](https://cursor.com)

Personal fork of the [Home Assistant Community Tailscale add-on](https://github.com/hassio-addons/app-tailscale). Joins your tailnet as a normal client and exposes this machine only. Exit node, subnet routes, and the other extras stay off until you turn them on.

## Requirements

This app targets **64-bit** Home Assistant installations only, matching [current Supervisor support](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems/): **aarch64** (ARM64) and **amd64** (x86_64).

You also need a [Tailscale account](https://tailscale.com/start) (free for personal use).

## Installation

1. In Home Assistant, open **Settings** → **Add-ons** → **Add-on store**.
2. Open the menu (**⋮**) → **Repositories**.
3. Add this repository URL and confirm:

   `https://github.com/iShark5060/homeassistant-tailscale`

4. Refresh the add-on store, then find **Tailscale (iShark5060)** and install it.
5. Start the app, open the Web UI to authenticate with Tailscale, and confirm success in the logs.

## Configuration

See **[tailscale/DOCS.md](tailscale/DOCS.md)** for options (optional exit node, subnet routes, MagicDNS, Taildrop, and more).

## Support

- [Issues](https://github.com/iShark5060/homeassistant-tailscale/issues)
- [License](LICENSE.md)

## Credits

This fork is based on **[hassio-addons/app-tailscale](https://github.com/hassio-addons/app-tailscale)** by [Franck Nijhof](https://github.com/frenck) and contributors. Upstream remains the reference for the original Community App. Licensed under the MIT License (see `LICENSE.md`).

## Scripts

| Script             | Description                             |
| ------------------ | --------------------------------------- |
| `scripts/validate` | Docker image build quality gate for CI. |

## Upstream sync

This fork keeps an `upstream` remote for pulling Community App changes:

```bash
git fetch upstream
git log --oneline HEAD..upstream/main
git merge upstream/main
```

## Development

Engineering standards: AppBase `docs/org-standards/` with [personal-repos.md](https://github.com/Dark-Avian-Labs/AppBase/blob/main/docs/org-standards/personal-repos.md) (GitHub-hosted runners).
