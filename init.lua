vim.g.mapleader 	= " "
vim.g.maplocalleader	= " "

require("config.lazy")
require("config.options")
require("config.keymap")

vim.cmd.colorscheme "catppuccin-nvim"
