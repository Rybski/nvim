return {
	"stevearc/oil.nvim",
	lazy = false,
	cmd = "Oil",
	opts = {
		skip_confirm_for_simple_edits = "true",
		open_preview= {},
		constrain_cursor = "name",
		watch_for_changes = true,
	},
	keys = {
		{ "<leader>o", "<cmd>Oil<cr>", desc="Open file explorer" },
	},
	dependencies = {
		{ "echasnovski/mini.icons", opts={} },
		-- { "SirZenith/oil-vcs-status", opts={} }, need to add column for it and test it
	},
}
