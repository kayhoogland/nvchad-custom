local M = {}

M.treesitter = {
  dependencies = {
    "RRethy/nvim-treesitter-endwise",
  },
  indent = {
    enable = true
  },
  endwise = {
    enable = true,
  },
  ensure_installed = {
    "typescript",
    "javascript",
    "python",
    "ruby",
    "dockerfile",
    "css",
    "html",
    "json",
    "make",
    "markdown",
    "terraform",
    "lua",
  },
  auto_install = true,
}

return M
