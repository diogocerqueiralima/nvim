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

		-- C / ESP-IDF

    vim.lsp.config("clangd", require("esp32").lsp_config())
    vim.lsp.enable("clangd")

  end,
}
