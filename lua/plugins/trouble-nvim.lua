return {
	"folke/trouble.nvim",
	lazy = true,
	cmd = "Trouble",
	opts = {
	},
	keys = {
		{ "<leader>d", "<cmd>Trouble diagnostics toggle<cr>", desc="Open trouble" },
	},
	dependencies = {
		{ "echasnovski/mini.icons", opts={} },
	},
}
