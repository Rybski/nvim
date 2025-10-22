return {
	"neovim/nvim-lspconfig",
	lazy = false,
	-- event = "VeryLazy",
	cmd = {},
	fmt = {
		".rs",
		".py",
		".c",
		".cpp",
		".lua",
	},
	opts = {
		servers = {
			lua_ls = {},
			rust_analyzer = {},
		}
		-- vim.lsp.config('rust_analyzer', {
		-- 	-- Server-specific settings. See `:help lsp-quickstart`
		-- 	settings = {
		-- 		['rust-analyzer'] = {},
		-- 	},
		-- })
	},
	config = function(_, opts)
		local lspconfig = require('lspconfig')
		for server, config in pairs(opts.servers) do
		-- passing config.capabilities to blink.cmp merges with the capabilities in your
		-- `opts[server].capabilities, if you've defined it
		config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
		lspconfig[server].setup(config)
		end
	end,
	keys = {},
	dependencies = {
		"echasnovski/mini.completion",
		"echasnovski/mini.snippets",
  		"saghen/blink.cmp",
		"nvimtools/none-ls.nvim",
	},
}
