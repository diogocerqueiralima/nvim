return {

	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ensure_installed = {
			"c",
			"cpp",
			"doxygen",
			"comment",
		}

		require("nvim-treesitter").setup()
		require("nvim-treesitter").install(ensure_installed)

		-- doxygen/comment are injected sub-languages, not buffer filetypes
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "c", "cpp" },
			callback = function()
				vim.treesitter.start()
				vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,

}
