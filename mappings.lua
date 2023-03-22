local M = {}

M.copy = {
  n = {
    ["<leader>y"] = { ":let @+ = expand('%') <CR>", "Yank the file path" },
    ["<leader>l"] = { ":lua vim.lsp.buf.format() <CR>", "Format the file" },
    ["<leader>L"] = { ":LazyGit <CR>", "Open lazygit" },
  }
}

return M
