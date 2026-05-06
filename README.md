# homebrew-loudcue

Homebrew tap for [LoudCue](https://loudcue.com/), free MIT calendar alerts for macOS.

## Install

```sh
brew install --cask bnjreece/loudcue/loudcue
```

That's it. Updates arrive automatically via Sparkle (the app's built-in updater),
so you don't need `brew upgrade` to stay current.

## Uninstall

```sh
brew uninstall --cask bnjreece/loudcue/loudcue
```

To also remove preferences and caches:

```sh
brew uninstall --zap --cask bnjreece/loudcue/loudcue
```

## Why a tap and not the official `homebrew-cask`?

Homebrew's official cask repository requires a minimum stars/forks/watchers
threshold before they accept new casks. Once LoudCue clears that bar, the
plan is to submit there too so `brew install --cask loudcue` (no tap) just
works. Until then, this tap.
