return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("which-key").setup({
				delay = 500, -- delay before showing
				win = {
					height = { min = 4, max = 8 }, -- smaller popup
					padding = { 1, 2 },
				},
				layout = {
					spacing = 3,
					align = "left",
				},
			})
		end,
	},
}
