conky.config = require("conky/_common").extend_config {
    -- positioning
    gap_x = 50 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_X") or 0),
    gap_y = 125 + tonumber(os.getenv("NOW_CLOCKING_OFFSET_Y") or 0),
    minimum_width = 125,
    minimum_height = 125,
};

conky.text = [[
${if_match "" != "${exec ./scripts/get-metadata}"}
	${execp ./scripts/fetch-art}
${endif}
]];
