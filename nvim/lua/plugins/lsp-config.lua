return {
  {
  "mason-org/mason.nvim",
    config = function()
      require("mason").setup()

    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "codelldb", "clang-format" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup( {
        capabilities = capabilities
      } )
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n' }, '<C-a>', vim.lsp.buf.code_action, {})
    end
  }
}
