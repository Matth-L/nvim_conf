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
			require("which-key").add({
				{ "<leader>g", group = "git" },
				{ "<leader>gs", desc = "stage hunk" },
				{ "<leader>gu", desc = "undo stage hunk" },
				{ "<leader>gp", desc = "preview hunk" },
				{ "<leader>gb", desc = "blame line" },
				{ "]h", desc = "next hunk" },
				{ "[h", desc = "prev hunk" },
			})
		end,
	},

	-- Git UI
	{
		"kdheepak/lazygit.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
			require("which-key").add({
				{ "<leader>gg", desc = "open lazygit" },
			})
		end,
	},
}
