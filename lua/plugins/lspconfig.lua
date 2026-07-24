return {
  "neovim/nvim-lspconfig",
  config = function()

		vim.lsp.config("*", {
      capabilities = require("blink.cmp").get_lsp_capabilities(),
    })

		-- LUA LSP CONFIG

		vim.lsp.config("lua_ls", {
      settings = { Lua = { diagnostics = { globals = { "vim" } } } },
    })
    vim.lsp.enable("lua_ls")

		-- C / C++: use esp32.nvim's ESP-IDF setup only for projects that
		-- actually look like ESP-IDF (have a sdkconfig); fall back to plain
		-- clangd for regular C/C++ projects.

		vim.lsp.config("clangd", {
      root_dir = function(bufnr, on_dir)
        local root = vim.fs.root(bufnr, "sdkconfig")
          or vim.fs.root(bufnr, { "compile_commands.json", "compile_flags.txt", ".clangd", "CMakeLists.txt", "Makefile", ".git" })
        on_dir(root)
      end,
      cmd = function(dispatchers, config)
        local is_esp = config.root_dir and vim.fn.filereadable(config.root_dir .. "/sdkconfig") == 1
        local cmd = is_esp and require("esp32").lsp_config().cmd or {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--completion-style=detailed",
          "--header-insertion=iwyu",
          "--fallback-style=llvm",
					"--header-insertion-decorators",
        }
        return vim.lsp.rpc.start(cmd, dispatchers)
      end,
      init_options = {
        usePlaceholders = true,
        completeUnimported = true,
        clangdFileStatus = true,
      },
    })
    vim.lsp.enable("clangd")

  end,
}
