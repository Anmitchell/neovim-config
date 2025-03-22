-- Vim commands for text editor settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.g.mapleader = " "
vim.api.nvim_set_option("clipboard", "unnamed")
