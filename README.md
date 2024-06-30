<h1 align="center">Now Clocking</h1>
<p align="center"><i>made with :heart: by <a href="https://github.com/gamehelp16">@gamehelp16</a> and <a href="https://github.com/rayzr522">@rayzr522</a></i></p>

> **Now Clocking** is a Conky widget which shows a Monstercat style Now Playing when music is played via Spotify or cmus, or a clock when no music is playing.

<div align="center" style="display:inline">
<img alt="screenshot of clock" src="res/now-clocking-clock.jpg" width="416px" />
<img alt="screenshot of spotify" src="res/now-clocking-spotify.jpg" width="416px" />
</div>

### Table of contents

- [requirements](#requirements)
  - [packages](#packages)
  - [fonts](#fonts)
  - [supported players](#supported-players)
- [installation](#installation)
  - [config](#config)
- [FAQ](#faq)
- [credits](#credits)

## requirements

### packages

- [conky](https://github.com/brndnmtthws/conky/)
- [ffmpeg](https://www.ffmpeg.org/)
- [playerctl](https://github.com/altdesktop/playerctl)

> Ubuntu: `sudo apt install conky ffmpeg playerctl`

> Arch: `sudo pacman -S conky ffmpeg playerctl`

### fonts

- [Montserrat Light](https://fonts.google.com/specimen/Montserrat?selection.family=Montserrat:300)
- [Gotham Bold](https://fontsgeek.com/fonts/Gotham-Bold)
- [Gotham Book](https://fontsgeek.com/fonts/Gotham-Book)

> on most Linux distros, you can just run the `./download-fonts.sh` script to download the fonts

### supported players

these widgets support `cmus` as well as (in theory) any MPRIS/playerctl compatible players

the following is a non-exhaustive list of examples of supported players:

- [cmus](https://cmus.github.io/)
- [Spotify](https://www.spotify.com/)
- [spotifyd](https://github.com/Spotifyd/spotifyd)
- [VLC](https://www.videolan.org/)
- [Lollypop](https://wiki.gnome.org/Apps/Lollypop)
- [mps-youtube/yewtube](https://github.com/mps-youtube/yewtube)
- [Muzika](https://github.com/vixalien/muzika)

## installation

1. install all required [packages](#packages) and [fonts](#fonts)
2. clone the repo:

```bash
git clone git@github.com:rayzr522/now-clocking.git
```

3. ensure that all required [fonts](#fonts) are installed:

```bash
# install by hand or you can try the automated installation script:
./download-fonts.sh
```

4. run the `start.sh` script to start the widget (forks to background):

```bash
path/to/now-clocking/start.sh
```

### config

there's a few things you can configure about these widgets via environment variables. the widgets will automatically attempt to load a `config.env` in this directory. feel free to copy `config-example.env` for this purpose

the settings you can configure are as follows:

| setting                     | example              | description                                                                                                                                                                         |
| --------------------------- | -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `NOW_CLOCKING_ARTWORK_TINT` | `green` or `#aabbcc` | applies a color filter to the album artwork. can be useful for matching it to your wallpaper/theme. requires `imagemagick` to be installed                                          |
| `NOW_CLOCKING_DISPLAY`      | `1`                  | changes the display that the widget renders on via the `xinerama_head` conky option. `0` is probably your default display                                                           |
| `NOW_CLOCKING_OFFSET_X`     | `69`                 | shifts the widget on the X axis by the given amount. default positioning is designed to look pretty well balanced, but if you need to adjust it this gives you an easy way to do so |
| `NOW_CLOCKING_OFFSET_Y`     | `420`                | same as above, but on the Y axis                                                                                                                                                    |

## FAQ

> **why are there 2 Conky widgets?**

originally, this had to do with weird transparency issues in conky that required a non-transparent album artwork. however, that has long since been patched in conky. the widgets have remained separated, however, so as to make aligning everything easier, especially since one widget functions both as the track info _and_ a clock

> **how do I configure which monitor to display the widget on?**

set `NOW_CLOCKING_DISPLAY` in your `config.env`. see [config](#config) for more info

> **the widget is slow to update when using with <insert playerctl-compatbile player here>**

if you're using a playerctl-compatible player _inside a flatpak_, you may need to use [Flatseal](https://github.com/tchx84/Flatseal) to enable D-Bus access for your app

i personally had to do this with Muzika & Vivaldi to get things working smoothly on my own system

## credits

huge props to the original creator, [@gamehelp16](https://github.com/gamehelp16). I used this script back in 2017/2018 and rediscovered it in 2020, and decided to rework it to be more portable, efficient, and updated to modern conky config standards

also huge props to Hoefler & Frere-Jones for the wonderful Gotham fonts, and Julieta Ulanovsky (and crew) for the slick Montserrat font
