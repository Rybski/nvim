return {
	"echasnovski/mini.extra",
	lazy = true,
	cmd = {},
	opts = {},
	keys = {
		-- { "<leader>d", "<cmd>lua MiniExtra.pickers.diagnostic()<cr>" , mode={"n"} , desc="Open diagnostics" },
		{ "<leader>p", "<cmd>lua MiniExtra.pickers.hipatterns()<cr>" , mode={"n"} , desc="Open patterns" },
	},
	dependencies = {
		"echasnovski/mini.pick",
		"echasnovski/mini.hipatterns",
	},
}
