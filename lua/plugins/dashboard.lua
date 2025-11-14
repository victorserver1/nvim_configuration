-- lua/plugins/dashboard.lua
return {
	"nvimdev/dashboard-nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				header = {
					"󰣖AMAURY IDE",
					"",
				},

				week_header = {
					enable = false,
				},

				shortcut = {
					-- FZF
					{ desc = "󰱼 Files", group = "@file", action = "FzfLua files", key = "f" },
					{ desc = " Recent", group = "@file", action = "FzfLua oldfiles", key = "r" },
					{ desc = "󰊢 Git", group = "@git", action = "FzfLua git_files", key = "g" },
					{ desc = " Grep", group = "@search", action = "FzfLua live_grep", key = "s" },

					-- IA Avante
					{ desc = " Avante", group = "@text", action = "AvanteAsk", key = "a" },

					-- Mason
					{ desc = " Mason", group = "@property", action = "Mason", key = "m" },

					-- Terminal
					{ desc = " Terminal", group = "@constant", action = "ToggleTerm", key = "T" },

					-- Copilot
					{ desc = " Copilot", group = "@macro", action = "Copilot status", key = "c" },

					-- Exit
					{ desc = " Exit", action = "qa", key = "q" },
				},
				footer = { "󰣖 AMAURY IDE 󰂖 Powered by Neovim" },
			},
		})
	end,
}
