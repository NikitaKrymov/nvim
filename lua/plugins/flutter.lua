return {
	{ "dart-lang/dart-vim-plugin" },
	{

		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = function()
			require("telescope").load_extension("flutter")
			require("flutter-tools").setup({
				decorations = {
					statusline = {
						-- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
						-- this will show the current version of the flutter app from the pubspec.yaml file
						app_version = false,
						-- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
						-- this will show the currently running device if an application was started with a specific
						-- device
						device = false,
						-- set to true to be able use the 'flutter_tools_decorations.project_config' in your statusline
						-- this will show the currently selected project configuration
						project_config = false,
					},
				},
			})
			function _G.statusLine()
				return vim.g.flutter_tools_decorations.app_version
			end

			vim.opt.statusline = "%!v:statusLine()"
			vim.keymap.set({ "n", "i" }, "<leader>fr", "<cmd>FlutterRestart<CR>", {})
		end,
	},
}
