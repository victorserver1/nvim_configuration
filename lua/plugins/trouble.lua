return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
		keys = {
			{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Trouble: diagnostics" },
			{ "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Trouble: quickfix" },
			{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Trouble: loclist" },
		},
	},
}
