return {
	{
		"yetone/avante.nvim",
		lazy = false,
		version = false,
		build = "make",

		opts = {
			provider = "copilot",

			providers = {
				copilot = {
					api_key_name = "GITHUB_TOKEN",
					endpoint = "https://models.inference.ai.azure.com",
					model = "gpt-4o-mini", -- incluido con Copilot Pro
					temperature = 0.4,

					-- 👇 Aquí va ahora
					extra_req = {
						max_tokens = 2048,
					},
				},
			},
		},
	},
}
