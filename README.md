# Zodiac Innovations Homebrew Tap

This repository is the Homebrew tap for command-line tools and developer utilities published by Zodiac Innovations.

## ConcordUI

The ConcordUI command-line tool automates ConcordUI project creation and platform setup for Apple and Android development.

## Private Beta Installation

Before the public release, both this tap and the ConcordUI source repository may remain private. Testers must be granted GitHub access to both repositories and must configure GitHub SSH authentication on their Mac.

Verify that GitHub SSH access works first:

```bash
ssh -T git@github.com
```

Then add the private tap explicitly using its SSH URL:

```bash
brew tap zodiac-innovations/tap ssh://git@github.com/Zodiac-Innovations/homebrew-tap.git
```

Install the current ConcordUI `main` branch with:

```bash
brew install --HEAD zodiac-innovations/tap/concordui
```

The HEAD formula also fetches the private ConcordUI repository over SSH, so the tester's existing GitHub SSH permissions are used for both repositories. No GitHub password or token should be embedded in the formula or tap.

To update a beta installation after changes are pushed:

```bash
brew update
brew upgrade --fetch-HEAD concordui
```

Verify the installation with:

```bash
concordui -v
concordui doctor
```

## Public Release Installation

After the first versioned ConcordUI CLI release is published and the relevant repositories are public, the stable formula will use an immutable release archive and SHA-256 checksum. Users will then install normally with:

```bash
brew install zodiac-innovations/tap/concordui
```

## Repository Layout

```text
homebrew-tap/
├── Formula/
│   └── concordui.rb
├── .github/
│   └── workflows/
│       └── test.yml
└── README.md
```

The executable itself is not stored in this repository. `Formula/concordui.rb` tells Homebrew how to obtain the ConcordUI source, build `ConcordUICLI`, install the resulting `concordui` executable, and install helper tools required by the platform-generation commands.

## Releases

Stable formulas should reference an immutable tagged ConcordUI source archive and its SHA-256 checksum. The tap should never use the moving `main` branch as its stable release source. `HEAD` installation is provided only for development and pre-release testing.
