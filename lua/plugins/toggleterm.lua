-- In your Lazy plugin configuration file
return {
	-- Plugin definition for toggleterm.nvim
	{
		"akinsho/toggleterm.nvim",
		version = "*", -- You can specify the version or use "*" for the latest version
		config = function()
			-- Setup toggleterm configuration
			require("toggleterm").setup({
				direction = "vertical",

				-- size can be a number or function which is passed the current terminal
				size = 40 or function(term)
					if term.direction == "horizontal" then
						return 15
					elseif term.direction == "vertical" then
						return vim.o.columns * 0.4
					end
				end,
				-- Any other default configurations you want to use for ToggleTerm
				autochdir = true, -- when neovim changes its current directory, the terminal will change its own when next it's opened

				open_mapping = [[<C-t>]], -- Key mapping (ctrl + t) for open/close in normal mode
				insert_mapping = true,
				terminal_mapping = true,
				start_in_insert = true,
			})

			-- Function to set terminal keymaps
			function _G.set_terminal_keymaps()
				local opts = { buffer = 0 }
				vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
				vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
				vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
				vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
				vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
				vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
				vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
			end

			-- Autocommand to set terminal keymaps when a terminal is opened
			vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
		end,
	},
}
