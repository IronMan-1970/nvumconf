return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
      modules = {},
      ignore_install = {},

			ensure_installed = {
				"lua",
				"javascript",
				"typescript",
				"python",
				"go",
				"sql",
				"make",
				"dockerfile",
				"yaml",
				"graphql",
				"terraform",
				"proto",
				"html",
        "http",
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
