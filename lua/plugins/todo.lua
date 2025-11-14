return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		keys = {
			{
				"]t",
				function()
					require("todo-comments").jump_next()
				end,
				desc = "Siguiente TODO",
			},
			{
				"[t",
				function()
					require("todo-comments").jump_prev()
				end,
				desc = "Anterior TODO",
			},
			{ "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "TODO en Trouble" },
			{ "<leader>st", "<cmd>TodoTelescope<CR>", desc = "TODO en Telescope" },
		},
	},
}
