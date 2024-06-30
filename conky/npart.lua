conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 50 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_X") or 0),
    gap_y = 125 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_Y") or 0),
    xinerama_head = tonumber(os.getenv("NOW_CLOCKING_DISPLAY") or 0),
    minimum_width = 125,
    maximum_width = 125,
    minimum_height = 125,

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
    own_window_type = 'dock'
};

conky.text = [[
${if_match "" != "${exec ./scripts/get-metadata}"}
	${execp ./scripts/fetch-art}
${endif}
]];
