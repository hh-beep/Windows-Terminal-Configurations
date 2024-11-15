local status, cmp = pcall(require, 'cmp')
local kind = require 'lspkind'


if (not status) then return end


cmp.setup({
  snippet = {
    expand = function(args) 
      require('luasnip').lsp_expand(args.body)  
    end
  },
  mapping = cmp.mapping.preset.insert({
    [  '<C-d>'  ] = cmp.mapping.scroll_docs(-4),
    [  '<C-f>'  ] = cmp.mapping.scroll_docs(4),
    [  '<C-Space>'  ] = cmp.mapping.complete(),
    [  '<C-e>'  ] = cmp.mapping.close(),
    [  '<CR>'  ] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources ({
    {  name = 'nvim_lsp'  },
    {  name = 'buffer'  }
  }),
  formatting = {
    format = kind.cmp_format({  wirth_text = false, maxwidth = 50  })
  }
})


vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemDefault
]]
