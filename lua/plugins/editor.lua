return {
	-- File explorer
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				-- Enable mouse click
				on_attach = function(bufnr)
					local api = require("nvim-tree.api")
					local opts = { buffer = bufnr, noremap = true, silent = true }

					-- Default mappings
					api.config.mappings.default_on_attach(bufnr)

					-- Single click to open file/folder
					vim.keymap.set("n", "<2-LeftMouse>", api.node.open.edit, opts)
					vim.keymap.set("n", "<LeftMouse>", api.node.open.edit, opts)
				end,
			})
			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
		end,
	},

	-- Fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup()
			vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>") -- find files
			vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>") -- search in files
			vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>") -- recent files
			vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>") -- open buffers
			require("which-key").add({
				{ "<leader>f", group = "find" },
			})
		end,
	},

	-- Fast navigation
	{
		"folke/flash.nvim",
		config = function()
			require("flash").setup()
			vim.keymap.set({ "n", "v" }, "s", function()
				require("flash").jump()
			end, { desc = "flash jump" })
			vim.keymap.set({ "n", "v" }, "S", function()
				require("flash").treesitter()
			end, { desc = "flash treesitter" })
			require("which-key").add({
				{ "s", desc = "flash jump" },
				{ "S", desc = "flash treesitter select" },
			})
		end,
	},

	-- Floating terminal
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup({
				direction = "float",
				float_opts = {
					border = "curved",
				},
			})
			vim.keymap.set("n", "<leader>to", ":ToggleTerm<CR>")
			require("which-key").add({
				{ "<leader>t", group = "Terminal/Trouble" },
				{ "<leader>to", desc = "open terminal" },
			})
		end,
	},
}
