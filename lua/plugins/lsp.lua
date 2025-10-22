return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    mason_lspconfig.setup {
      ensure_installed = {
        "pyright",
        "html",
        "cssls",
        "quick_lint_js",
        "ts_ls",
        "lua_ls",
        "vimls",
        "clangd",
      },
      automatic_installation = true,
    }

    vim.lsp.config("*", {
        capabilities = capabilities,
    })

    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      }
    })

    vim.lsp.config("pyright", {
      root_dir = vim.fn.getcwd()
    })
  end,
}
