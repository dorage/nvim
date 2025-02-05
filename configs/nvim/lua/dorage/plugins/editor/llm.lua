return {
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		lazy = false,
		version = false, -- set this if you want to always pull the latest change
		opts = {
			provider = "nebius_r1",
			-- auto_suggestions_provider = "openai", -- Since auto-suggestions are a high-frequency operation and therefore expensive, it is recommended to specify an inexpensive provider or even a free provider: copilot
			gemini = {
				model = "gemini-2.0-flash-thinking-exp",
				timeout = 30000,
				max_tokens = 65536,
				api_key_name = "GEMINI_API_KEY",
			},
			vendors = {
				-- https://studio.nebius.ai/
				nebius_r1 = {
					__inherited_from = "openai",
					endpoint = "https://api.studio.nebius.ai/v1",
					model = "deepseek-ai/DeepSeek-R1",
					timeout = 30000, -- Timeout in milliseconds
					temperature = 0,
					max_tokens = 128000,
					-- optional
					api_key_name = "NEBIUS_API_KEY",
				},
				nebius_v3 = {
					__inherited_from = "openai",
					endpoint = "https://api.studio.nebius.ai/v1",
					model = "deepseek-ai/DeepSeek-V3",
					timeout = 30000, -- Timeout in milliseconds
					temperature = 0,
					max_tokens = 128000,
					-- optional
					api_key_name = "NEBIUS_API_KEY",
				},
				deepinfra_r1 = {
					__inherited_from = "openai",
					endpoint = "https://api.deepinfra.com/v1/openai",
					model = "deepseek-ai/DeepSeek-R1",
					timeout = 30000, -- Timeout in milliseconds
					temperature = 0,
					max_tokens = 8192,
					-- optional
					api_key_name = "DEEPINFRA_API_KEY", -- default OPENAI_API_KEY if not set
				},
				deepinfra_v3 = {
					__inherited_from = "openai",
					endpoint = "https://api.deepinfra.com/v1/openai",
					model = "deepseek-ai/DeepSeek-V3",
					timeout = 30000, -- Timeout in milliseconds
					temperature = 0,
					max_tokens = 8192,
					-- optional
					api_key_name = "DEEPINFRA_API_KEY", -- default OPENAI_API_KEY if not set
				},
				deepseek = {
					endpoint = "https://api.deepseek.com/v1",
					model = "deepseek-chat",
					timeout = 30000, -- Timeout in milliseconds
					temperature = 0,
					max_tokens = 8192,
					-- optional
					api_key_name = "DEEPSEEK_API_KEY",
				},
			},
		},
		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		build = "make",
		-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"stevearc/dressing.nvim",
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"zbirenbaum/copilot.lua", -- for providers='copilot'
			{
				-- support for image pasting
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {
					-- recommended settings
					default = {
						embed_image_as_base64 = false,
						prompt_for_file_name = false,
						drag_and_drop = {
							insert_mode = true,
						},
						-- required for Windows users
						use_absolute_path = true,
					},
				},
			},
			{
				-- Make sure to set this up properly if you have lazy=true
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
	},
}
