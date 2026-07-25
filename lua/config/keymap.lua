vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.diagnostic.config({

	float = { border = "rounded", source = "if_many" },
})

vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })

-- TELESCOPE

local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>gd", telescope.lsp_definitions, { desc = "Goto definition" })
vim.keymap.set("n", "<leader>gi", telescope.lsp_implementations, { desc = "Goto implementation" })

-- NVIM TREE

vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
