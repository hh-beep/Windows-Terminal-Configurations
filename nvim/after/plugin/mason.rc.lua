local status1, mason  = pcall(require, 'mason')
local status2, mason_lsp = pcall(require, 'mason-lspconfig')


if (not status1) then return end
if (not status2) then return end


mason.setup {
  ui = {  border = 'rounded'  }
}
mason_lsp.setup {
  ensure_installed = {
    'tsserver',
    'eslint',
    'html',
    'cssls'
  }
}
