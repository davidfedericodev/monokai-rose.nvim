-- Monokai Rose Color Palette

local M = {}

M.colors = {
  -- Base colors
  bg = "#1A1625",
  bg_dark = "#13101D",
  bg_darker = "#0D0B12",
  bg_light = "#2A2535",
  bg_lighter = "#3A3348",
  bg_float = "#191624",
  bg_popup = "#13101D",
  bg_visual = "#3A3348",
  bg_selection = "#5A4E7A",
  bg_gutter = "#1B1626",

  -- Foreground colors
  fg = "#E8E4F0",
  fg_dark = "#DCD4E0",
  fg_dim = "#7A6F85",
  fg_muted = "#9D8FA3",

  -- Border colors
  border = "#2F2941",
  border_light = "#5A4E7A",

  -- Primary accent colors
  purple = "#C678DD",
  purple_light = "#D4A1D6",
  purple_dark = "#B06CD5",
  purple_soft = "#C4A1D6",
  purple_dim = "#D4B5D5",

  -- Semantic colors
  red = "#E06C75",
  green = "#98C379",
  green_light = "#9DCC9D",
  green_soft = "#8FBC8F",
  green_pale = "#B5D3B5",
  yellow = "#E5C07B",
  yellow_orange = "#DDB26F",
  orange = "#E49E62",
  orange_soft = "#E6B89C",
  blue = "#61AFEF",
  blue_light = "#7BB7F0",
  blue_soft = "#A1C4E6",
  cyan = "#56B6C2",
  magenta = "#B06CD5",

  -- Git colors
  git_add = "#98C379",
  git_change = "#E5C07B",
  git_delete = "#E06C75",
  git_conflict = "#E5C07B",

  -- Diagnostic colors
  error = "#E06C75",
  warning = "#DDB26F",
  info = "#61AFEF",
  hint = "#B06CD5",

  -- Terminal colors
  term_black = "#2F2941",
  term_bright_black = "#7A6F85",
  term_white = "#DCD4E0",
  term_bright_white = "#E8E4F0",

  -- Blended colors (pre-calculated for backgrounds with alpha)
  -- These are blended with bg (#1A1625)
  diff_add_bg = "#283330",        -- green with ~15% opacity on bg
  diff_change_bg = "#2E2A2A",     -- yellow with ~15% opacity on bg
  diff_delete_bg = "#2D2029",     -- red with ~15% opacity on bg
  diff_text_bg = "#3A352F",       -- yellow with ~25% opacity on bg
  
  git_add_bg = "#252E2A",         -- green with ~12% opacity on bg
  git_change_bg = "#2A2725",      -- yellow with ~12% opacity on bg
  git_delete_bg = "#281E24",      -- red with ~12% opacity on bg
  
  diag_error_bg = "#221A22",      -- red with ~8% opacity on bg
  diag_warn_bg = "#231F1E",       -- orange with ~8% opacity on bg
  diag_info_bg = "#1D1E28",       -- blue with ~8% opacity on bg
  diag_hint_bg = "#211A28",       -- purple with ~8% opacity on bg
  
  selection_bg = "#3A3348",       -- selection with ~30% opacity on bg
  selection_bg_strong = "#453D55", -- selection with ~40% opacity on bg

  -- Misc
  none = "NONE",
}

return M
