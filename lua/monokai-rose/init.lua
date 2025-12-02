-- Monokai Rose - A dark theme for Neovim
-- Ported from VS Code theme

local M = {}

M.config = {
  transparent = false,
  italic_comments = true,
  italic_keywords = false,
  bold_functions = true,
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "monokai-rose"

  local theme = require("monokai-rose.theme")
  local highlights = theme.setup(M.config)

  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
