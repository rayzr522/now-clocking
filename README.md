<h1 align="center">Now Clocking</h1>
<p align="center"><i>Made with :heart: by <a href="https://github.com/gamehelp16">@gamehelp16</a> and <a href="https://github.com/Rayzr522">@Rayzr522</a></i></p>

> **Now Clocking** is a Conky widget which shows a Monstercat style Now Playing when music is played via Spotify or cmus, or a clock when no music is playing.

<div align="center" style="display:inline">
<img alt="Screenshot of clock" src="res/now-clocking-clock.jpg" width="416px" />
<img alt="Screenshot of spotify" src="res/now-clocking-spotify.jpg" width="416px" />
</div>

### Table of contents

- [Requirements](#requirements)
  - [Packages](#packages)
  - [Fonts](#fonts)
  - [Supported Players](#supported-players)
- [Installation](#installation)
- [FAQ](#faq)
- [Credits](#credits)
- [Join Me](#join-me)

## Requirements

### Packages

- [conky](https://github.com/brndnmtthws/conky/)
- [ffmpeg](https://www.ffmpeg.org/)
- [playerctl](https://github.com/altdesktop/playerctl)

> Ubuntu: `sudo apt install conky ffmpeg playerctl`

> Arch: `sudo pacman -S conky ffmpeg playerctl`

### Fonts

- [Montserrat Light](https://fonts.google.com/specimen/Montserrat?selection.family=Montserrat:300)
- [Gotham Bold](https://www.fontmirror.com/gotham-bold)
- [Gotham Book](https://www.fontmirror.com/gotham-book)

> On most Linux distros, you can just run the `./scripts/download-fonts.sh` script to download the fonts.

### Supported Players

- [Spotify](https://www.spotify.com/)
- [spotifyd](https://github.com/Spotifyd/spotifyd)
- [VLC](https://www.videolan.org/)
- [Lollypop](https://wiki.gnome.org/Apps/Lollypop)
- [cmus](https://cmus.github.io/)

## Installation

1. Install all required [packages](#packages):
```bash
# Ubuntu
$ sudo apt install conky ffmpeg playerctl
# Arch
$ sudo pacman -S conky ffmpeg playerctl
```
2. Clone the repo:
```bash
$ git clone git@github.com:Rayzr522/now-clocking.git
```
3. Ensure that all required [fonts](#fonts) are installed:
```bash
$ ./scripts/download-fonts.sh
```
4. Run the `start.sh` script to start the widget (forks to background):
```bash
$ path/to/now-clocking/start.sh
```

## FAQ

> **Why are there 2 Conky widgets?**

Originally, this had to do with weird transparency issues in Conky that required a non-transparent album artwork. However, that has long since been patched in Conky. The widgets have remained separated, however, so as to make aligning everything easier, especially since one widget functions both as the track info *and* a clock.

## Credits

Huge props to the original creator, [@gamehelp16](https://github.com/gamehelp16). I used this script back in 2017/2018 and rediscovered it in 2020, and decided to rework it to be more portable, efficient, and updated to modern Conky config standards.

Also huge props to Hoefler & Frere-Jones for the wonderful Gotham fonts, and Julieta Ulanovsky (and crew) for the slick Montserrat font.

## Join Me

[![Discord Badge](https://github.com/Rayzr522/ProjectResources/raw/master/RayzrDev/badge-small.png)](https://rayzr.dev/join)
