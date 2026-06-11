<!--
  README.md
  homebrew-tap

  Created by Kévin Naudin on 2026-06-11.
-->

# Synth, Inc. Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Synth, Inc.](https://www.getonit.ai) apps.

## Install

```bash
brew install --cask synth-inc/tap/onit-dictate
```

If you already installed Onit Dictate manually (DMG from the website), let Homebrew adopt the existing app instead of failing:

```bash
brew install --cask --adopt synth-inc/tap/onit-dictate
```

> `--adopt` only succeeds when the installed version matches the cask version. If they differ, either update the app first (Settings → Check for Updates) or replace it with `--force`.

## Available casks

| Cask | App | Description |
|------|-----|-------------|
| `onit-dictate` | [Onit Dictate](https://www.getonit.ai) | Voice dictation for macOS — speak anywhere, Onit types for you |

## Notes

- Recent Homebrew versions require trusting third-party taps before running uninstall directives: `brew trust synth-inc/tap`.
- Onit Dictate updates itself via Sparkle (`auto_updates true`), so `brew upgrade` leaves it alone. Avoid `brew upgrade --greedy` right after a release: the cask may lag a few minutes behind the appcast.
- Requires macOS 15 (Sequoia) or later, Apple Silicon.
