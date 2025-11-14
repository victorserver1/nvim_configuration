return {
	{
		"navarasu/onedark.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("onedark").setup({
				style = "deep", -- dark, darker, cool, warm, deep, light
			})
			require("onedark").load()
		end,
	},
}
