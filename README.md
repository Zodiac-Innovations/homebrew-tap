# Zodiac Innovations Homebrew Tap

This repository is the Homebrew tap for command-line tools and developer utilities published by Zodiac Innovations.

## ConcordUI

The ConcordUI command-line tool automates ConcordUI project creation and platform setup for Apple and Android development.

During development, install the current `main` branch with:

```bash
brew tap zodiac-innovations/tap https://github.com/Zodiac-Innovations/homebrew-tap
brew install --HEAD zodiac-innovations/tap/concordui
```

After the first versioned ConcordUI CLI release is published, the formula will also support the normal stable installation form:

```bash
brew install zodiac-innovations/tap/concordui
```

Verify the installation with:

```bash
concordui -v
concordui doctor
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

The executable itself is not stored in this repository. `Formula/concordui.rb` tells Homebrew how to obtain the ConcordUI source, build `ConcordUICLI`, install the resulting `concordui` executable, and install runtime helper tools required by the platform-generation commands.

## Releases

Stable formulas should reference an immutable tagged ConcordUI source archive and its SHA-256 checksum. The tap should never use the moving `main` branch as its stable release source. `HEAD` installation is provided only for development and pre-release testing.
