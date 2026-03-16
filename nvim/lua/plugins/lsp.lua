return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local servers = { "lua_ls", "ts_ls", "pyright" }

			require("mason-lspconfig").setup({
				ensure_installed = servers,
			})

			-- Keymaps LSP
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>rd", vim.lsp.buf.definition)
			vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references)
			vim.keymap.set("n", "<leader>ri", vim.lsp.buf.implementation)
			vim.keymap.set("n", "<leader>rs", vim.lsp.buf.signature_help)
			vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format)
			vim.keymap.set("n", "<leader>ra", vim.lsp.buf.code_action)
			require("which-key").add({
				{ "<leader>r", group = "LSP" },
				{ "<leader>rn", desc = "rename symbol" },
				{ "<leader>rd", desc = "go to definition" },
				{ "<leader>rr", desc = "references" },
				{ "<leader>ri", desc = "implementation" },
				{ "<leader>rs", desc = "signature help" },
				{ "<leader>rf", desc = "format" },
				{ "<leader>ra", desc = "code action" },
			})

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
		end,
	},
}
