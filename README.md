# 🌹 Monokai Rose

A beautiful dark theme for Neovim inspired by Monokai with rose/purple accents.

![Monokai Rose Theme](https://via.placeholder.com/800x400/1A1625/C678DD?text=Monokai+Rose)

## ✨ Features

- 🎨 Carefully crafted color palette with rose/purple accents
- 🌙 Easy on the eyes dark theme
- 🔌 Support for popular plugins (Telescope, NvimTree, Treesitter, LSP, etc.)
- ⚙️ Customizable options (transparency, italics, bold)
- 🎯 Semantic highlighting support
- 💻 Lualine theme included

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "davidfederico/monokai-rose.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "davidfederico/monokai-rose.nvim",
  config = function()
    require("monokai-rose").setup()
    vim.cmd.colorscheme("monokai-rose")
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'davidfederico/monokai-rose.nvim'
```

## 🚀 Usage

Add this to your Neovim configuration:

```lua
-- Default options
require("monokai-rose").setup({
  transparent = false,      -- Enable transparent background
  italic_comments = true,   -- Italic comments
  italic_keywords = false,  -- Italic keywords
  bold_functions = true,    -- Bold function names
})

-- Load the colorscheme
vim.cmd.colorscheme("monokai-rose")
```

Or simply:

```vim
colorscheme monokai-rose
```

## 🎨 Lualine

To use the matching Lualine theme:

```lua
require("lualine").setup({
  options = {
    theme = require("monokai-rose.lualine").get()
  }
})
```

## 🔌 Supported Plugins

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Semantic Tokens](https://neovim.io/doc/user/lsp.html)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Which-key](https://github.com/folke/which-key.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Alpha](https://github.com/goolord/alpha-nvim)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [Notify](https://github.com/rcarriga/nvim-notify)
- [Noice](https://github.com/folke/noice.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Mini.nvim](https://github.com/echasnovski/mini.nvim)
- [Navic](https://github.com/SmiteshP/nvim-navic)
- [Trouble](https://github.com/folke/trouble.nvim)
- [Flash](https://github.com/folke/flash.nvim)
- [Leap](https://github.com/ggandor/leap.nvim)
- [Hop](https://github.com/phaazon/hop.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [Illuminate](https://github.com/RRethy/vim-illuminate)
- [Copilot](https://github.com/zbirenbaum/copilot.lua)

## 🎨 Color Palette

| Color          | Hex       | Usage                    |
|----------------|-----------|--------------------------|
| Background     | `#1A1625` | Editor background        |
| Foreground     | `#E8E4F0` | Default text             |
| Purple         | `#C678DD` | Keywords, accents        |
| Purple Soft    | `#C4A1D6` | Operators, punctuation   |
| Blue           | `#61AFEF` | Functions                |
| Green          | `#98C379` | Strings, types           |
| Yellow         | `#E5C07B` | Warnings, git changes    |
| Orange         | `#E6B89C` | Numbers, constants       |
| Red            | `#E06C75` | Errors, deletions        |
| Cyan           | `#56B6C2` | Interfaces               |

## 📝 License

MIT License - See [LICENSE](LICENSE) for details.

## 🤝 Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

---

Made with 💜 for Neovim
