local override = require("custom.override")

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
    ["kylechui/nvim-surround"] = {
    config = function()
        require("nvim-surround").setup()
    end,
    },
    ['tpope/vim-rails'] = {},
    ['slim-template/vim-slim'] = {},
    ['thalesmello/lkml.vim'] = {},
    ['NoahTheDuke/vim-just'] = {},
    ['RRethy/nvim-treesitter-endwise'] = {},
    ['kdheepak/lazygit.nvim'] = {}
  },
  override = {
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
		["williamboman/mason.nvim"] = {
			ensure_installed = {
        "ruff",
        "elixir-ls",
        "solargraph"
			},
		},
    ["NvChad/ui"] = {
     statusline = {
       separator_style = "default", -- default/round/block/arrow
       overriden_modules = nil,
     },

     tabufline = {
       enabled = false,
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
