# nvim config

Personal Neovim configuration, written in Lua.

## Structure

```
init.lua                  -- entry point, sets leader keys, loads config modules
lua/config/options.lua    -- editor options (tabstop, line numbers, clipboard, etc.)
lua/config/keymap.lua     -- keymaps and diagnostic float config
lua/config/lazy.lua       -- bootstraps and configures lazy.nvim plugin manager
lua/plugins/mason.lua     -- mason.nvim setup (LSP/DAP/linter installer)
lua/plugins/blink.lua     -- blink.cmp completion setup
lua/plugins/lspconfig.lua -- nvim-lspconfig setup (lua_ls, clangd via esp32.nvim)
lua/plugins/esp32.lua     -- esp32.nvim setup (ESP-IDF clangd config)
```

Plugins are managed with [lazy.nvim](https://github.com/folke/lazy.nvim), auto-installed on
first run. Plugin specs live under `lua/plugins/`.

## Status

Work in progress. Plugin management, LSP (via nvim-lspconfig), mason.nvim and completion
(via blink.cmp) are set up. ESP-IDF development is supported through esp32.nvim, which
configures clangd; more plugins and language servers to come.

## Requirements

- Neovim >= 0.9
- git (for lazy.nvim bootstrap)
