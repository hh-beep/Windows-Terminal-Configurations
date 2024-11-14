local status, auto = pcall(require, 'nvim-autopairs')


if (not status) then return end


auto.setup {
  disable_filetype = {  'TelescopePrompt', 'vim'  }
}
