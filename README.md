[![GitHub release (latest by date)](https://img.shields.io/github/v/release/tombonez/notunes)](https://github.com/tombonez/noTunes/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/tombonez/notunes/total)](https://github.com/tombonez/noTunes/releases)
[![GitHub](https://img.shields.io/github/license/tombonez/notunes)](https://github.com/tombonez/noTunes/blob/master/LICENSE)
[![GitHub Sponsors](https://img.shields.io/badge/sponsor-tombonez-ec5cc7.svg)](https://github.com/sponsors/tombonez)

# noTunes

noTunes is a macOS background application that prevents Apple Music or iTunes from launching. If a replacement is configured, noTunes opens it instead.

## Installation

### Direct Download

[noTunes-3.5.zip](https://github.com/tombonez/noTunes/releases/download/v3.5/noTunes-3.5.zip)

### Homebrew

```bash
brew install --cask notunes
```

## Usage

Launch noTunes to keep it running in the background. Music or iTunes will be closed if already running or whenever either app attempts to launch.

### Set noTunes to launch at startup

#### Ventura and later:

1. Navigate to System Settings
2. Select General
3. Select Login Items
4. Click the + under Open at Login and select noTunes

#### Before Ventura:

Navigate to System Preferences -> Users & Groups. Under your user, select "Login Items", click the lock on the bottom left and enter your login password to make changes. Click the plus sign (+) in the main panel and search for noTunes. Select it and click "Add".

### Set a replacement for iTunes / Apple Music

Replace `YOUR_MUSIC_APP` with the name of your music app in the following command.

```bash
defaults write digital.twisted.noTunes replacement /Applications/YOUR_MUSIC_APP.app
```

Then `/Applications/YOUR_MUSIC_APP.app` will launch when iTunes/Music attempts to launch.

This can be used to open a website too, for example, YouTube Music.

```bash
defaults write digital.twisted.noTunes replacement https://music.youtube.com/
```

The following command will disable the replacement.

```bash
defaults delete digital.twisted.noTunes replacement
```

### Quit noTunes

Quit the app from Terminal:

```bash
osascript -e 'quit app "noTunes"'
```

## Support

If you like my work, consider supporting me through [GitHub Sponsors](https://github.com/sponsors/tombonez) 🩷

## License

The code is available under the [MIT License](https://github.com/tombonez/notunes/blob/master/LICENSE).
