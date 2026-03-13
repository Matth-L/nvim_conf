return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      local servers = { "lua_ls", "ts_ls", "pyright" }

      require("mason-lspconfig").setup({
        ensure_installed = servers,
      })

      -- Keymaps LSP
      vim.keymap.set("n", "gd", vim.lsp.buf.definition)
      vim.keymap.set("n", "K", vim.lsp.buf.hover)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

      --if Neovim 0.11+ use vim.lsp.enable else lspconfig
      if vim.lsp.enable then
        for _, server in ipairs(servers) do
          vim.lsp.config(server, {})
          vim.lsp.enable(server)
        end
      else
        local lspconfig = require("lspconfig")
        for _, server in ipairs(servers) do
          lspconfig[server].setup({})
        end
      end
    end
  }
}
