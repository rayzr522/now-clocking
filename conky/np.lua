conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

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
${color #fff}${font Montserrat Light:pixelsize=35}${time %B} ${time %d}${if_match ${time %d}==1}st${else}${if_match ${time %d}==2}nd${else}${if_match ${time %d}==3}rd${else}${if_match ${time %d}==4}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==5}th${else}${if_match ${time %d}==7}th${else}${if_match ${time %d}==8}th${else}${if_match ${time %d}==9}th${else}${if_match ${time %d}==10}th${else}${if_match ${time %d}==11}th${else}${if_match ${time %d}==12}th${else}${if_match ${time %d}==13}th${else}${if_match ${time %d}==14}th${else}${if_match ${time %d}==15}th${else}${if_match ${time %d}==16}th${else}${if_match ${time %d}==17}th${else}${if_match ${time %d}==18}th${else}${if_match ${time %d}==19}th${else}${if_match ${time %d}==20}th${else}${if_match ${time %d}==21}st${else}${if_match ${time %d}==22}nd${else}${if_match ${time %d}==23}rd${else}${if_match ${time %d}==24}th${else}${if_match ${time %d}==25}th${else}${if_match ${time %d}==26}th${else}${if_match ${time %d}==27}th${else}${if_match ${time %d}==28}th${else}${if_match ${time %d}==29}th${else}${if_match ${time %d}==30}th${else}${if_match ${time %d}==31}st${else}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif}${endif} ${time %Y}${endif}
]];
