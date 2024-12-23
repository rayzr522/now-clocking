#!/bin/bash

set -eu

total_downloaded=0

check_command() {
    local command="$1"
    if ! command -v "$command" >/dev/null; then
        echo "Command '$command' is required and was not installed." >&2
        exit 1
    fi
}

download_font() {
    local url_type="$1"
    local name="$2"
    local fc_name="$3"
    local url="$4"


    if fc-list | grep -q "$fc_name"; then
        echo "Font $(tput setaf 2)$name$(tput sgr0) is already installed."
        return 0
    fi

    case $url_type in
        fontsgeek-zip)
            set -ex
            fontsgeek_cookies="${fontsgeek_cookies:-$(mktemp)}"
            local csrfmiddlewaretoken="$(curl -c "$fontsgeek_cookies" "$url" | grep csrfmiddlewaretoken | cut -d '"' -f6)"
            curl -b "$fontsgeek_cookies" -c "$fontsgeek_cookies" -d "csrfmiddlewaretoken=$csrfmiddlewaretoken&method=zip" "$url"
            curl -b "$fontsgeek_cookies" -c "$fontsgeek_cookies" -L "$url/download" -o download.zip
            unzip -d download download.zip
            find download \( -name '*.ttf' -or -name '*.otf' \) -exec mv {} "$fonts_dir" \;
            rm -r download
            ;;
        googlefonts)
            curl https://raw.githubusercontent.com/neverpanic/google-font-download/master/google-font-download | bash -s - --format=ttf "$url"
            mv -i *.ttf "$fonts_dir"
            ;;
        *)
            echo "Unknown URL type: $url_type" >&2
            exit 1
            ;;
    esac

    echo "Installed font $(tput setaf 2)$name$(tput sgr0) successfully."
    total_downloaded=$(( total_downloaded + 1 ))
}

check_command curl
check_command unzip
check_command fc-list
check_command fc-cache

fonts_dir="$HOME/.local/share/fonts"
workdir="$(mktemp -d)"

mkdir -p "$fonts_dir"
cd "$workdir"

download_font fontsgeek-zip "Gotham Book" "Gotham Book" "https://fontsgeek.com/gotham-book-font"
download_font fontsgeek-zip "Gotham Bold" "Gotham:style=Bold" "https://fontsgeek.com/gotham-bold-font"
download_font googlefonts "Montserrat" "Montserrat" "Montserrat"

if [[ $total_downloaded -gt 0 ]]; then
    echo -n "Reloading font cache... "
    fc-cache -f
    echo "$(tput bold)done$(tput sgr0)"
fi
