-- Vim commands for text editor settings
local opt = vim.opt -- Used for editor options

-- Tabs and indentations
opt.expandtab = true -- Use spaces instead of tab characters
opt.tabstop = 2 -- 2 spaces for tabs
opt.softtabstop = 2 -- Tabs adds 2 spaces and backspace deletes 2 spaces
opt.autoindent = true -- Copy indent from current line when starting a new one
opt.shiftwidth = 2 -- Auto indentation adds 2 spaces
opt.number = true -- Add line numbers

-- Backspace
opt.backspace = { "indent", "eol", "start" } -- Delete auto indentation, end-of-line characters, and delete characters before insertion point on backspace


-- Text behavior
opt.wrap = true -- Wrap text instead of extending beyond window
opt.linebreak = true -- Prevent line breaks from happening in the middle of word 

-- Search settings
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If you include mixed case in your search, assumes you want case-sensitive 

-- System extentions
opt.clipboard:append("unnamedplus") -- Use the system clipboard for copy and paste

