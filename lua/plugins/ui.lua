return {
	-- Notificaciones bonitas
	{
		"rcarriga/nvim-notify",
		opts = {
			stages = "fade_in_slide_out",
			timeout = 3000,
			render = "default",
		},
		init = function()
			-- Usar nvim-notify como sistema de notificaciones por defecto
			vim.notify = require("notify")
		end,
	},

	-- Noice: UI para mensajes, cmdline y popupmenu
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		opts = {
			lsp = {
				-- Hace que el hover y la documentación de LSP usen Noice (más bonito)
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true, -- / y ? abajo tipo Vim clásico
				command_palette = true, -- cmdline flotante estilo VSCode
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = true, -- borde alrededor del hover de LSP
			},
		},
	},

	-- Dressing: mejora vim.ui.select() y vim.ui.input()
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {
			input = {
				border = "rounded",
			},
			select = {
				backend = { "telescope", "fzf_lua", "fzf", "builtin" },
			},
		},
	},
}
