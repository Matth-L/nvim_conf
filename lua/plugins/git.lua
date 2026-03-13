return {
	-- Git signs in the gutter (added, modified, removed lines)
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns
					vim.keymap.set("n", "<leader>gs", gs.stage_hunk)
					vim.keymap.set("n", "<leader>gu", gs.undo_stage_hunk)
					vim.keymap.set("n", "<leader>gp", gs.preview_hunk)
					vim.keymap.set("n", "<leader>gb", gs.blame_line)
					vim.keymap.set("n", "]h", gs.next_hunk)
					vim.keymap.set("n", "[h", gs.prev_hunk)
				end,
			})
		end,
	},
}
