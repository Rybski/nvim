return {
	"echasnovski/mini.hipatterns",
	lazy = false,
	cmd = {},
	opts = {},
	keys = {},
	dependencies = {},
	config = {
		highlighters = {
			-- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
			fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
			hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
			todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
			note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },
			-- Highlight hex color strings (`#rrggbb`) using that color
			-- hex_color = 'MiniHipatterns.gen_highlighter.hex_color()',
		},
		delay = {
			text_change = 200,
			scroll = 50,
		},
  	},
}
