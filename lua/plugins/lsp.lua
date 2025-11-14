return {
	-- Mason: instala servidores LSP, linters, etc.
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	-- mason-lspconfig: conecta Mason con nvim-lspconfig
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			-- servidores que quieres tener instalados SIEMPRE
			ensure_installed = {
				"lua_ls",
				"ts_ls", -- TypeScript / JavaScript (nuevo nombre, antes tsserver)
				"pyright", -- Python
			},
			-- por defecto automatic_enable = true
			-- o sea, llama internamente a vim.lsp.enable()
		},
	},

	-- nvim-lspconfig: solo para los configs de servidores
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Config global para TODOS los LSP (opcional)
			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			-- Config específica para Lua
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							-- Para que no marque 'vim' como undefined
							globals = { "vim" },
						},
					},
				},
			})

			-- Config específica para TypeScript/JavaScript
			vim.lsp.config("ts_ls", {
				-- aquí puedes meter settings de ts_ls si quieres
			})

			-- Config específica para Python
			vim.lsp.config("pyright", {
				-- settings = { ... }
			})
			-- Mapeos LSP comunes
			vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { desc = "LSP: Rename symbol" })

			-- OJO: NO llamamos a require("lspconfig").xxx.setup()
			-- mason-lspconfig se encarga de hacer vim.lsp.enable()
		end,
	},
}
-- Renombrar símbolo (igual a F2 de VSCode)
