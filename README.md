# CocoaBeans Homebrew tap

Casks for apps by CocoaBeans.

## Mimamori

[Mimamori](https://github.com/CocoaBeans/mimamori) keeps watch over git worktrees while coding agents work.

```bash
brew install --cask cocoabeans/tap/mimamori
```

Mimamori updates itself with Sparkle, so `brew upgrade` leaves it alone unless you pass `--greedy`.

If Homebrew refuses to load the cask from an untrusted tap, trust it first:

```bash
brew trust cocoabeans/tap
```
