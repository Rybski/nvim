return {
	"echasnovski/mini.move",
	lazy = true,
	cmd = {},
	opts = {},
	keys = {
		{ "<leader>k", "<cmd>lua MiniMove.move_line('up')<cr>", mode={"n"} , desc="Move line up" },
		{ "<leader>j", "<cmd>lua MiniMove.move_line('down')<cr>", mode={"n"} , desc="Move line down" },
		{ "<leader>h", "<cmd>lua MiniMove.move_line('left')<cr>", mode={"n"} , desc="Move line left" },
		{ "<leader>l", "<cmd>lua MiniMove.move_line('right')<cr>", mode={"n"} , desc="Move line right" },
		{ "<leader>k", "<cmd>lua MiniMove.move_selection('up')<cr>" , mode={"v"} , desc="Move block up" },
		{ "<leader>j", "<cmd>lua MiniMove.move_selection('down')<cr>" , mode={"v"} , desc="Move block down" },
		{ "<leader>h", "<cmd>lua MiniMove.move_selection('left')<cr>" , mode={"v"} , desc="Move block left" },
		{ "<leader>l", "<cmd>lua MiniMove.move_selection('right')<cr>" , mode={"v"} , desc="Move block right" },
	},
	dependencies = {},
}
