local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
  local opts = {buffer = bufnr}

    if client.server_capabilities.completionProvider then
    client.server_capabilities.completionProvider.completionItemKind = {
      'completedUnimported',
    }
  end

  vim.keymap.set('n', '<C-b>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
  vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
  vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
  vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
  vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
  vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
end

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})


local cmp = require('cmp')
local cmp_select={behavior= cmp.SelectBehavior.Select}
cmp.setup({
  mapping=cmp.mapping.preset.insert({
['<C-p>']=cmp.mapping.select_prev_item(cmp_select),
['<C-n>']=cmp.mapping.select_next_item(cmp_select),
['<CR>']=cmp.mapping.confirm({select=true}),
['<C-c>']=cmp.mapping.complete(),
  }),
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    { name = 'path' },
    { name = 'calc' },
   },
   window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },

})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


require('mason-lspconfig').setup({
  ensure_installed = {
	"eslint",
	"luau_lsp",
	"rust_analyzer",
	"gopls",
	"pyright",
	"html",
	"cssls",
	"golangci_lint_ls",
	"templ"
},
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  }
})


