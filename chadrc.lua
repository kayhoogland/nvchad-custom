local M = {}

M.plugins = {
	user = {
    ["neovim/nvim-lspconfig"] = {
      opt = true,
      setup = function()
        require("core.lazy_load").on_file_open "nvim-lspconfig"
      end,
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
		},
		["jose-elias-alvarez/null-ls.nvim"] = {
			after = "nvim-lspconfig",
			config = function()
				require("custom.plugins.null-ls")
			end,
		},
  },
  override = {
		["williamboman/mason.nvim"] = {
			ensure_installed = {
        "black",
        "isort",
        "pyright"
			},
		},
	},
  options = {
		lspconfig = {
			setup_lspconf = "custom.plugins.lspconfig",
		},
	},
}

M.mappings = require "custom.mappings"

return M
