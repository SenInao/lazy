return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  event = "InsertEnter",

  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },

  config = function()
    local cmp = require('cmp')
    require("luasnip.loaders.from_vscode").lazy_load()


    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),

      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }, {
        { name = 'buffer' }
      })
    })

    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'git' },
        }, {{ name = 'buffer' },})
      })

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
      }, {
      { name = 'cmdline' }
    })
  })

  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  require('lspconfig')['pyright'].setup {
    capabilities = capabilities,
    root_dir = function ()
	    return vim.fn.getcwd()
    end
  }
  require('lspconfig')['html'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['cssls'].setup {
    capabilities = capabilities
  }
  require('lspconfig')['quick_lint_js'].setup {
    capabilities = capabilities
  }
  require("lspconfig")['tsserver'].setup {
	  capabilities = capabilities
  }
  require("lspconfig")['lua_ls'].setup  {
	  capabilities = capabilities,
	  settings = {
		  Lua = {
			  diagnostics = {
				  globals= { 'vim' }
			  }
		  }
	  }
  }
  require("lspconfig")["vimls"].setup {
    capabilities = capabilities
  }
  end,
}
