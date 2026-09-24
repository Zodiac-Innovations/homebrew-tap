# Zodiac Innovations Homebrew Tap

This shared Homebrew tap supports **both AetherCircle and ConcordUI** command-line tools. Add the tap once, then install either tool or both. The CLI software is maintained in its respective project repository; this repository provides the Homebrew formulas used to install and update them.

## ConcordUI

The ConcordUI command-line tool automates ConcordUI project creation and platform setup for Apple and Android development.

## AetherCircle

The AetherCircle command-line tool creates cross-platform immersive applications for Apple Vision Pro and Meta Quest.

## Private Beta Installation

While the repositories are private, testers need GitHub SSH access. Once the distribution repositories and this tap are public, use the public installation commands below.

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

When these repositories become public, install the current preview tools with:

```bash
brew tap zodiac-innovations/tap
brew install --HEAD zodiac-innovations/tap/concordui
brew install --HEAD zodiac-innovations/tap/aethercircle
```

## Distribution Models

- `concordui.rb` currently builds the ConcordUI CLI from source.
- `aethercircle.rb` installs the precompiled universal executable and default app icon published in `Zodiac-Innovations/AetherCircleCLI`.

These preview formulas track the CLI repositories' `main` branches using `--HEAD`. Both preview executables currently print `Soon to be released`. Future stable formulas should reference immutable tagged archives.
