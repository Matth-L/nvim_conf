# Neovim configuration

## Setup 

```sh
git clone https://github.com/Matth-L/nvim_conf.git ~/.config/nvim
```

## Plugins

### Core
- [lazy.nvim](https://github.com/folke/lazy.nvim) — plugin manager

### UI
- [catppuccin](https://github.com/catppuccin/nvim) — colorscheme
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) — start screen
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — buffer tabs
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) — file icons
- [nvim-notify](https://github.com/rcarriga/nvim-notify) — popup notifications
- [which-key.nvim](https://github.com/folke/which-key.nvim) — keybindings helper
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) — indentation lines
- [smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) — smooth cursor animation
- [trouble.nvim](https://github.com/folke/trouble.nvim) — diagnostics panel
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) — highlight TODO/FIXME/NOTE

### Editor
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) — file explorer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax highlighting
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — git indicators
- [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) — git UI
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) — floating terminal

### LSP
- [mason.nvim](https://github.com/williamboman/mason.nvim) — LSP installer
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) — mason/lspconfig bridge
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP configuration

### Coding
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) — autocompletion
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) — snippets engine
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) — auto close brackets
- [Comment.nvim](https://github.com/numToStr/Comment.nvim) — easy commenting
- [conform.nvim](https://github.com/stevearc/conform.nvim) — auto formatter

## Dependencies
- `ripgrep` — for Telescope live grep
- `lazygit` — for git UI
- `nodejs` — for some LSP servers
- `nerd font` — for icons (recommended: JetBrainsMono Nerd Font)

## LSP / Formatters
- `lua_ls` — Lua
- `pyright` — Python
- `clangd` — C/C++
- `rust_analyzer` — Rust
- `stylua` — Lua formatter
- `black` — Python formatter
- `clang-format` — C/C++ formatter
- `rustfmt` — Rust formatter
- `prettier` — YAML formatter

