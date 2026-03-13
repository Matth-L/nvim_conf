return {
	-- Auto close parentheses, brackets, quotes...
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},

	-- Autocompletion
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- LSP source
			"hrsh7th/cmp-buffer", -- buffer words source
			"hrsh7th/cmp-path", -- file path source
			"L3MON4D3/LuaSnip", -- snippet engine
			"saadparwaiz1/cmp_luasnip", -- snippet source
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-Space>"] = cmp.mapping.complete(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<C-e>"] = cmp.mapping.abort(),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
				}),
			})
		end,
	},

	-- Easy code commenting
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
			-- Comment line like VSCode Ctrl+/
			vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
			vim.keymap.set("v", "<C-/>", "gc", { remap = true })
			vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
			vim.keymap.set("v", "<C-_>", "gc", { remap = true })
		end,
	},

	-- Auto formatter
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
				},
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					c = { "clang-format" },
					cpp = { "clang-format" },
					rust = { "rustfmt" },
					yaml = { "prettier" },
				},
			})
		end,
	},
}
