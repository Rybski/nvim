return {
	"neovim/nvim-lspconfig",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
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
		}
		-- vim.lsp.config('rust_analyzer', {
		-- 	-- Server-specific settings. See `:help lsp-quickstart`
		-- 	settings = {
		-- 		['rust-analyzer'] = {},
		-- 	},
		-- })
	},
	  config = function(_, opts)
	    local blink = require("blink.cmp")
	    local configs = require("lspconfig.configs")  -- ✅ public, safe module

	    for server, server_opts in pairs(opts.servers) do
	      -- Ensure defaults for this server are loaded
	      if not configs[server] then
		local ok, def = pcall(require, "lspconfig.server_configurations." .. server)
		if ok and type(def) == "table" then
		  configs[server] = def
		else
		  vim.notify("LSP: no configuration found for " .. server, vim.log.levels.WARN)
		end
	      end

	      -- Build the full config
	      server_opts.capabilities = blink.get_lsp_capabilities(server_opts.capabilities)
	      local config = vim.lsp.config(server, server_opts)

	      if not config then
		vim.notify("LSP: failed to create config for " .. server, vim.log.levels.ERROR)
	      else
		vim.api.nvim_create_autocmd("FileType", {
		  pattern = config.filetypes or {},
		  callback = function()
		    vim.lsp.start(config)
		  end,
		})
	      end
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
