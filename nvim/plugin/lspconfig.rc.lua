local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end


local protocol = require('vim.lsp.protocol')


local on_attach = function(client, bufnr)
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  if client.setver.capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync{}]]
    vim.api.nvim_command [[augroup END]]
  end
end


-- Completion using nvim_cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)


nvim_lsp.flow.setup {
  on_attach = on_attach,
  capabilities = capabilities
}


-- LSP Config for Typescript 
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = {
    'typescript', 'typescriptreact', 'typescript.tsx',
  },
  cmd = {  'typescript-language-server', '--stdio'  },
  capabilities = capabilities
}


-- LSP Config for Lua
nvim_lsp.lua_ls.setup {
  onattach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = {  'vim'  }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
    }
  }
}
