conky.config = require("widgets.lib.common").extend_config {
    -- positioning
    gap_x = 50 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_X") or 0),
    gap_y = 85 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_Y") or 0),
    minimum_height = 200,

    -- text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true,
};

conky.text = [[
${if_match "" != "${exec ./scripts/get-metadata}"}${eval ${lua textcolor}}${font Gotham Book:pixelsize=18}NOW PLAYING:
${eval ${lua textcolor}}${font Gotham Book:pixelsize=15}
${eval ${lua textcolor}}${font Gotham Book:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec ./scripts/get-metadata artist}${font Gotham:style=bold:pixelsize=10}
${eval ${lua textcolor}}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec ./scripts/get-metadata title}
${else}${eval ${lua textcolor}}${font Gotham Book:pixelsize=80}${time %H:%M:%S}${font Gotham Book:pixelsize=65}
${eval ${lua textcolor}}${font Montserrat Light:pixelsize=35}${lua now}${endif}
]];
