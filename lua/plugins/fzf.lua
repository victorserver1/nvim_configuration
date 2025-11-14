return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local ok, fzf = pcall(require, "fzf-lua")
			if not ok then
				vim.notify("fzf-lua no se pudo requerir", vim.log.levels.ERROR)
				return
			end

			fzf.setup({
				winopts = {
					height = 0.9,
					width = 0.9,
					border = "rounded",
				},
			})

			local function map(lhs, fn, desc)
				if type(fn) ~= "function" then
					vim.notify("fzf-lua: función no disponible para " .. lhs, vim.log.levels.WARN)
					return
				end
				vim.keymap.set("n", lhs, fn, { desc = desc })
			end

			map("<leader>ff", fzf.files, "FZF: buscar archivos")
			map("<leader>fg", fzf.live_grep, "FZF: buscar texto (rg)")
			map("<leader>fb", fzf.buffers, "FZF: buffers abiertos")
			map("<leader>fh", fzf.help_tags, "FZF: ayuda")

			-- aquí cambiamos file_browser por files otra vez
			map("<leader>fe", fzf.files, "FZF: buscar archivos (extra)")
		end,
	},
}
