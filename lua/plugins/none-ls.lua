return {
	"nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- formats for lua
        null_ls.builtins.formatting.prettier, -- formats typescript/javascript etc.
        null_ls.builtins.formatting.isort, -- formats python imports
        null_ls.builtins.formatting.black, -- formats python
        require("none-ls.diagnostics.eslint_d"), -- eslint for typescript/javascript etc.
			},
		})

		-- Vim commands for lsp wrapper
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    vim.diagnostic.config({ virtual_text = false })
	end,
}
