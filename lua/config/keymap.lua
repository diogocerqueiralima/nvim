vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.diagnostic.config({

	float = { border = "rounded", source = "if_many" },
})
