# homebrew-tap

Personal Homebrew tap for MLXWhisperApp.

## Installation

To add this tap to your Homebrew:

```bash
brew tap <your-github-username>/tap
```

Then install the app:

```bash
brew install --cask mlx-whisper-app
```

## How it works

This Cask uses the GitHub API to dynamically resolve the latest release download URL at install time. This ensures you always get the latest version without needing to manually update the formula.
