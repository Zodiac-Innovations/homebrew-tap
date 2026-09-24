# Zodiac Innovations Homebrew Tap

This shared Homebrew tap supports **both AetherCircle and ConcordUI** command-line tools. Add the tap once, then install either tool or both. The CLI software is maintained in its respective project repository; this repository provides the Homebrew formulas used to install and update them.

## ConcordUI

The ConcordUI command-line tool automates ConcordUI project creation and platform setup for Apple and Android development.

## AetherCircle

The AetherCircle command-line tool creates cross-platform immersive applications for Apple Vision Pro and Meta Quest.

## Private Beta Installation

Before public release, testers must have GitHub access and configure GitHub SSH authentication on their Mac.

Verify GitHub SSH access over port 443:

```bash
ssh -T -p 443 git@ssh.github.com
```

Add the private tap:

```bash
brew tap zodiac-innovations/tap ssh://git@ssh.github.com:443/Zodiac-Innovations/homebrew-tap.git
```

Install either or both development tools:

```bash
brew install --HEAD zodiac-innovations/tap/concordui
brew install --HEAD zodiac-innovations/tap/aethercircle
```

Update a beta installation:

```bash
brew update
brew upgrade --fetch-HEAD concordui
brew upgrade --fetch-HEAD aethercircle
```

## Public Release Installation

After versioned releases and the required repositories become public, stable formulas will use immutable release archives and SHA-256 checksums:

```bash
brew install zodiac-innovations/tap/concordui
brew install zodiac-innovations/tap/aethercircle
```

## Distribution Models

- `concordui.rb` currently builds the ConcordUI CLI from source.
- `aethercircle.rb` installs the precompiled universal executable and default app icon published in `Zodiac-Innovations/AetherCircleCLI`.

Stable formulas should reference immutable tagged archives. Moving `main` branches are used only for development and private-beta `--HEAD` installations.
