local M = {}

---extends the base config with the given overrides
---@param overrides table
function M.extend_config(overrides)
  local config = {
    -- load common funcs
    lua_load = './conky/_funcs.lua',

    -- run settings
    total_run_times = 0,
    update_interval = 1,

    -- positioning
    alignment = 'bottom_left',
    xinerama_head = tonumber(os.getenv("NOW_CLOCKING_DISPLAY") or 0),

    -- draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_type = 'desktop',
  }

  for k, v in pairs(overrides) do
    config[k] = v
  end

  return config
end

return M
