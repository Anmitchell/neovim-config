-- Vim commands
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt_local.wrap = true
vim.opt_local.linebreak = true

-- Package Manager (Importing Lazy package manager)
require("config.lazy")

