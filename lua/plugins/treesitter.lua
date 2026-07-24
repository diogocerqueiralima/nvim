return {

	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	opts_extend = { "ensure_installed" },
	opts = {

		indent = { enable = true },
		highlight = { enable = true },
		ensure_installed = {
			"c",
		}

	}

}
