return {
  -- Install LSP's using mason
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- Establish connection between mason and neovim's lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "pyright", "jdtls"},
      })
    end,
  },
  -- Configering LSP's for neovim
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      -- Setup LSP server for Lua
      lspconfig.lua_ls.setup({})
      
      -- Setup LSP for Java
      lspconfig.jdtls.setup({})

      -- Setup LSP for TypeScript and JavaScript (including JSX, React, TSX, and React)
      lspconfig.ts_ls.setup({})

      -- Setup for Python (Pyright) with virtual environment support
      lspconfig.pyright.setup({})

      -- Keymappings for LSP actions
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },
}

