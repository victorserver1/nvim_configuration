return {
	{
		"debdutdeb/devcontainer.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		config = function()
			require("devcontainer").setup({
				-- Montar tu config de nvim dentro del contenedor
				attach_mounts = {
					neovim_config = {
						enabled = true, -- monta ~/.config/nvim -> /root/.config/nvim
						options = { "readonly" }, -- quita "readonly" si quieres editar desde dentro
					},
					neovim_data = {
						enabled = true, -- cache, plugins, etc.
						options = {},
					},
					neovim_state = {
						enabled = true, -- para nvim 0.8+
						options = {},
					},
				},
				-- Forzar usar docker si no tienes podman
				container_runtime = "docker",
				compose_command = "docker-compose",

				autocommands = {
					init = false, -- pon a true si quieres que arranque solo al abrir proyecto
					clean = false, -- true para que pare/borré al salir de nvim
					update = false,
				},

				log_level = "info",
			})
		end,
	},
}
