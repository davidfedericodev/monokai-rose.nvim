-- Monokai Rose Lualine Theme

local M = {}

function M.get()
  local c = require("monokai-rose.palette").colors

  return {
    normal = {
      a = { bg = c.purple, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_light, fg = c.fg },
      c = { bg = c.bg, fg = c.fg_dim },
    },
    insert = {
      a = { bg = c.green, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_light, fg = c.fg },
      c = { bg = c.bg, fg = c.fg_dim },
    },
    visual = {
      a = { bg = c.blue, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_light, fg = c.fg },
      c = { bg = c.bg, fg = c.fg_dim },
    },
    replace = {
      a = { bg = c.red, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_light, fg = c.fg },
      c = { bg = c.bg, fg = c.fg_dim },
    },
    command = {
      a = { bg = c.yellow, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_light, fg = c.fg },
      c = { bg = c.bg, fg = c.fg_dim },
    },
    terminal = {
      a = { bg = c.cyan, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_light, fg = c.fg },
      c = { bg = c.bg, fg = c.fg_dim },
    },
    inactive = {
      a = { bg = c.bg, fg = c.fg_dim },
      b = { bg = c.bg, fg = c.fg_dim },
      c = { bg = c.bg, fg = c.fg_dim },
    },
  }
end

return M
