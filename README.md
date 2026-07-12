# Decoyrail Homebrew tap

Official Homebrew tap for [Decoyrail](https://decoyrail.com), the endpoint
firewall for AI agents: your coding agent holds decoy credentials while a
local proxy swaps in the real secret only for destinations your policy
approves, and treats a decoy seen anywhere else as an exfiltration tripwire.

## Install

```sh
brew install decoyrail-team/tap/decoyrail
```

Then trust the device CA once (required for TLS interception):

```sh
decoyrail ca install
```

## Uninstall

```sh
decoyrail uninstall   # removes the trust root, keychain item, and state
brew uninstall decoyrail
```

## What this repo contains

Only the Homebrew formula and prebuilt macOS (Apple Silicon) release
binaries with SHA-256 checksums. Docs, changelog, and everything else live
at [decoyrail.com](https://decoyrail.com).
