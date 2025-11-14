return {
	{
		"github/copilot.vim",
		config = function()
			-- Activar Copilot
			vim.g.copilot_no_tab_map = true

			-- Mapear aceptar sugerencias
			vim.api.nvim_set_keymap("i", "<C-l>", 'copilot#Accept("<CR>")', {
				silent = true,
				expr = true,
				replace_keycodes = false,
			})

			-- Opcional: sugerencia en línea en gris
			vim.cmd("highlight CopilotSuggestion guifg=#6D6D6D ctermfg=8")
		end,
	},
}
