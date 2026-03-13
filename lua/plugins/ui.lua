return {
	-- List all errors/warnings in a panel
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup()
			vim.keymap.set("n", "<leader>tt", ":Trouble diagnostics toggle<CR>") -- all project errors
			vim.keymap.set("n", "<leader>tb", ":Trouble diagnostics toggle filter.buf=0<CR>") -- current file errors
		end,
	},

	-- Indentation lines
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				indent = { char = "│" },
				scope = { enabled = true },
				exclude = {
					filetypes = { "dashboard", "NvimTree", "help", "lazy" },
				},
			})
		end,
	},

	-- Highlight TODO, FIXME, NOTE comments
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("todo-comments").setup()
			vim.keymap.set("n", "<leader>td", ":TodoTrouble<CR>") -- list all todos in trouble
		end,
	},

	-- Status bar
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "catppuccin",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { "filename" },
					lualine_x = { "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},

	-- Replace vim messages with nice popups
	{
		"rcarriga/nvim-notify",
		config = function()
			local notify = require("notify")
			notify.setup({
				top_down = false,
				render = "compact",
				stages = "fade",
				position = "top_right",
				timeout = 3000,
			})
			vim.notify = notify -- replace default vim notifications
		end,
	},
}
