<!--
  README.md
  homebrew-tap

  Created by Kévin Naudin on 2026-06-11.
-->

# Synth, Inc. Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Synth, Inc.](https://www.cloudless.so) apps.

## Install

```bash
brew install --cask synth-inc/tap/cloudless-voice
```

If you already installed Cloudless Voice manually (DMG from the website), let Homebrew adopt the existing app instead of failing:

```bash
brew install --cask --adopt synth-inc/tap/cloudless-voice
```

> `--adopt` only succeeds when the installed version matches the cask version. If they differ, either update the app first (Settings → Check for Updates) or replace it with `--force`.

## Available casks

| Cask | App | Description |
|------|-----|-------------|
| `cloudless-voice` | [Cloudless Voice](https://www.cloudless.so) | On-device voice dictation for macOS: speak anywhere, your words are typed for you |
| `onit-dictate` | Onit Dictate | Deprecated, renamed to `cloudless-voice` |

## Notes

- Recent Homebrew versions require trusting third-party taps before running uninstall directives: `brew trust synth-inc/tap`.
- Cloudless Voice updates itself via Sparkle (`auto_updates true`), so `brew upgrade` leaves it alone. Avoid `brew upgrade --greedy` right after a release: the cask may lag a few minutes behind the appcast.
- Requires macOS 14 (Sonoma) or later. Runs on Apple Silicon and Intel.
- `onit-dictate` was renamed to `cloudless-voice`. Install the new cask; the old one is deprecated and will be removed.
