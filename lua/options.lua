require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cpp" },
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = true
    vim.diagnostic.enable(false)
  end,
})

vim.opt.wrap = false
vim.opt.scrolloff = 4
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

-- functions
local lsp_msg_enabled = true
vim.api.nvim_create_user_command("LspMsg", function()
  lsp_msg_enabled = not lsp_msg_enabled
  if lsp_msg_enabled then
    vim.diagnostic.enable(true)
    print "LSP diagnostics enabled"
  else
    vim.diagnostic.enable(false)
    print "LSP diagnostics disabled"
  end
end, {})
