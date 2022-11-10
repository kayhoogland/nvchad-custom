local M = {}

M.copy = {
  n = {
    ["<leader>y"] = { ":let @+ = expand('%') <CR>", "Yank the file path" },
    ["<leader>l"] = { ":lua vim.lsp.buf.formatting() <CR>", "Format the file" },
  }
}

return M
