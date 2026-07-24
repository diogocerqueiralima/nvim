return {
	"Aietes/esp32.nvim",
	opts = {
		build_dir = "build.clang",
		clangd_args = {
			"--background-index",
			"--clang-tidy",
			"--completion-style=detailed",
			"--fallback-style=llvm",
			"--header-insertion=iwyu",
			"--header-insertion-decorators",
		},
	}
}
