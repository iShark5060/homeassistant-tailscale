# Tailscale (iShark5060)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](LICENSE.md)
[![CI](https://img.shields.io/github/actions/workflow/status/iShark5060/homeassistant-tailscale/ci.yml?style=flat-square&label=CI)](https://github.com/iShark5060/homeassistant-tailscale/actions/workflows/ci.yml)
[![PR](https://img.shields.io/github/actions/workflow/status/iShark5060/homeassistant-tailscale/pr.yml?style=flat-square&label=PR)](https://github.com/iShark5060/homeassistant-tailscale/actions/workflows/pr.yml)
![aarch64](https://img.shields.io/badge/aarch64-yes-green.svg?style=flat-square)
![amd64](https://img.shields.io/badge/amd64-yes-green.svg?style=flat-square)
[![Cursor](https://img.shields.io/badge/Cursor-IDE-141414?logo=cursor&logoColor=white&style=flat-square)](https://cursor.com)

Personal fork of the [Home Assistant Community Tailscale add-on](https://github.com/hassio-addons/app-tailscale). Joins your tailnet as a normal client and exposes this machine only. Exit node, subnet routes, MagicDNS, Tailscale Services, and Taildrop stay off until you turn them on.

Needs a [Tailscale account](https://tailscale.com/start). Options: [tailscale/DOCS.md](tailscale/DOCS.md).

Add the repository `https://github.com/iShark5060/homeassistant-tailscale` in **Settings → Add-ons → Add-on store → ⋮ → Repositories**, install **Tailscale (iShark5060)**, start it, then open the Web UI to authenticate.

## Gotchas

- **aarch64** and **amd64** only.
- Some browsers fail the Web UI login. Use Chrome on a desktop.
- Restart the add-on after any config change.
- Consider disabling [key expiry](https://tailscale.com/kb/1028/key-expiry) so this machine does not drop off the tailnet.
- `upstream` is kept for Community App sync (`git fetch upstream` then merge `upstream/main`).

## License

MIT. See [LICENSE.md](LICENSE.md). Upstream by [Franck Nijhof](https://github.com/frenck) and contributors.
