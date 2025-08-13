vim.g.mapleader = " "
local map = vim.keymap.set
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>o", ":Explore<CR>")
-- LSP Keymaps
map("n", "gd", vim.lsp.buf.definition, {desc="Go to definition"})
map("n", "K", vim.lsp.buf.hover, {desc="Hover doxs"})
