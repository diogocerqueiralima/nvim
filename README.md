# nvim config

Personal Neovim configuration, written in Lua.

## Structure

```
init.lua                  -- entry point, sets leader keys, loads config modules, sets colorscheme
lua/config/options.lua    -- editor options (tabstop, line numbers, clipboard, etc.)
lua/config/keymap.lua     -- keymaps (LSP rename, telescope) and diagnostic float config
lua/config/lazy.lua       -- bootstraps and configures lazy.nvim plugin manager
lua/plugins/mason.lua     -- mason.nvim setup (LSP/DAP/linter installer)
lua/plugins/blink.lua     -- blink.cmp completion setup
lua/plugins/lspconfig.lua -- nvim-lspconfig setup (lua_ls; clangd, auto-detects plain
                              C/C++ vs. ESP-IDF projects)
lua/plugins/esp32.lua     -- esp32.nvim setup (ESP-IDF clangd config)
lua/plugins/catppuccin.lua -- catppuccin colorscheme (mocha flavour)
lua/plugins/telescope.lua -- telescope.nvim fuzzy finder (with fzf-native)
lua/plugins/treesitter.lua -- nvim-treesitter setup (highlight and indent enabled)
```

Plugins are managed with [lazy.nvim](https://github.com/folke/lazy.nvim), auto-installed on
first run. Plugin specs live under `lua/plugins/`.

## Status

Work in progress. Plugin management, LSP (via nvim-lspconfig), mason.nvim and completion
(via blink.cmp) are set up. For C/C++, clangd is configured to detect the project type
automatically: plain C/C++ projects (root marker: `compile_commands.json`,
`compile_flags.txt`, `.clangd`, `CMakeLists.txt`, `Makefile` or `.git`) get plain system
clangd, while ESP-IDF projects (root marker: `sdkconfig`) get esp32.nvim's ESP-IDF-specific
clangd setup. Syntax highlighting and indentation are handled by nvim-treesitter, fuzzy
finding by telescope.nvim, and the colorscheme is catppuccin (mocha). More plugins and
language servers to come.

## Requirements

- Neovim >= 0.9
- git (for lazy.nvim bootstrap)
