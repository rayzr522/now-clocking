conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,
    lua_load = './conky/_funcs.lua',

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 50 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_X") or 0),
    gap_y = 85 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_Y") or 0),
    xinerama_head = tonumber(os.getenv("NOW_CLOCKING_DISPLAY") or 0),
    minimum_width = 1200,
    maximum_width = 1200,
    minimum_height = 200,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'dock',

    -- Text settings
    uppercase = true,
    use_xft = true,
    override_utf8_locale = true
};

conky.text = [[
${if_match "" != "${exec ./scripts/get-metadata}"}${color #fff}${font Gotham Book:pixelsize=18}NOW PLAYING:
${color #fff}${font Gotham Book:pixelsize=15}
${color #fff}${font Gotham Book:pixelsize=44}           ${font Gotham:style=bold:pixelsize=46}${exec ./scripts/get-metadata artist}${font Gotham:style=bold:pixelsize=10}
${color #fff}${font Gotham Book:pixelsize=44}           ${font Gotham Book:pixelsize=23}${exec ./scripts/get-metadata title}
${else}${color #fff}${font Gotham Book:pixelsize=80}${time %H:%M:%S}${font Gotham Book:pixelsize=65}
${color #fff}${font Montserrat Light:pixelsize=35}${lua now}${endif}
]];
