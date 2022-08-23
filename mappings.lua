local M = {}

M.copy = {
  n = {
    ["<leader>y"] = { ":let @+ = expand('%') <CR>", "Yank the file path" },
  }
}

return M
