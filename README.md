[![GitHub release (latest by date)](https://img.shields.io/github/v/release/airsquared/notunes)](https://github.com/airsquared/noTunes/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/airsquared/notunes/total)](https://github.com/airsquared/noTunes/releases)
[![GitHub](https://img.shields.io/github/license/airsquared/notunes)](https://github.com/airsquared/noTunes/blob/master/LICENSE)

# noTunes Lite

noTunes Lite is a macOS background application that prevents Apple Music from launching. This is a fork that removes the UI and preferences, so that it's a tiny 200KB app with only ~2MB RAM in the background.

## Installation

### Direct Download

[noTunes-8e17f5d.dmg](https://github.com/airsquared/noTunes/releases/download/build-8e17f5d/noTunes-8e17f5d.dmg)

### Homebrew

```bash
# upstream
brew install --cask notunes
```

## Usage

Launch noTunes Lite to keep it running in the background. Apple Music will be closed whenever it attempts to launch.

### Set noTunes to launch at startup

1. Navigate to System Settings
2. Select General
3. Select Login Items
4. Click the + under Open at Login and select noTunes

## License

The code is available under the [MIT License](https://github.com/airsquared/notunes/blob/master/LICENSE).
