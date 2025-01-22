return {
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "cmake", "vim", "lua" },
			sync_install = false,
			highlight = { enabled = true },
			indent = { enabled = true, additional_vim_regex_highlighting = false },
		})
	end
}
