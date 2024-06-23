require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- sanity remaps
map("x", "p", "P", { noremap = true, silent = true })
-- map("x", "d", '"_d', { noremap = true, silent = true }) -- works

-- nice to haves
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
