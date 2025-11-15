return {
	-- Notificaciones bonitas
	-- Noice: UI para mensajes, cmdline y popupmenu
	--
	{
		"rcarriga/nvim-notify",
		lazy = false, -- para que cargue pronto
		config = function()
			local notify = require("notify")

			notify.setup({
				timeout = 100000, -- ~100 segundos, súbelo si quieres
				stages = "static", -- sin animaciones raras
				-- si quieres moverlas:
				-- top_down = true,  -- true = de arriba hacia abajo
			})

			vim.notify = notify
		end,
	},
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
			views = {
				-- vista "notify" (la que usa nvim-notify por debajo)
				notify = {
					-- que dure un montón
					timeout = 10000,
					replace = true, -- reutiliza la ventana en vez de spamear
				},
				-- vista "mini" (las notis chiquitas que se van volando)
				mini = {
					timeout = 10000, -- o 0 si quieres que no se vaya nunca
				},
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
