local header = {
	"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░",
	"░   ░░░  ░░        ░░░      ░░░  ░░░░  ░░        ░░  ░░░░  ░",
	"▒    ▒▒  ▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒   ▒▒   ▒",
	"▓  ▓  ▓  ▓▓      ▓▓▓▓  ▓▓▓▓  ▓▓▓  ▓▓  ▓▓▓▓▓▓  ▓▓▓▓▓        ▓",
	"█  ██    ██  ████████  ████  ████    ███████  █████  █  █  █",
	"█  ███   ██        ███      ██████  █████        ██  ████  █",
	"████████████████████████████████████████████████████████████",
	"",
	"",
	"",
	"",
}

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		local db = require("dashboard")

		db.setup({
			theme = "hyper",
			config = {
				header = header,
				shortcut = {
					{ desc = "💫 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = "📑 ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
				},
				project = {
					enable = false,
				},
				mru = { limit = 5 },
				footer = {},
			},
		})

		vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#16FF00" })

		vim.keymap.set("n", "<leader>ad", "<Cmd>Dashboard<CR>")
	end,
}
