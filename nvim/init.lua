--- Setar configs
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 1
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"

--- Remover background do nvim
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
