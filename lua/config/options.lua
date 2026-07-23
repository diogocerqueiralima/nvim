vim.opt.tabstop			= 2
vim.opt.softtabstop	= 2
vim.opt.shiftwidth	= 2

vim.o.number			= true					-- enable line number

vim.o.clipboard		= "unnamedplus"	-- sync clipboard between OS and Nvim

vim.o.undofile		= true					-- enable undo/redo changes even after close and reopen the file

vim.o.list				= true
vim.opt.listchars	= { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.cursorline	= true					-- show which line your cursor is

vim.o.scrolloff		= 10						-- minimal number of screen lines to keep above and below the cursor
