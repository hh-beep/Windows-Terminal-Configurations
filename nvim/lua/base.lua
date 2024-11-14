vim.cmd('autocmd!')


vim.opt.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'


vim.wo.number = true


vim.opt.ai = true                                 -- auto indent
vim.opt.si = true                                 -- smart indent
vim.opt.wrap = false
vim.opt.title = true
vim.opt.shell = 'fish'
vim.opt.backup = false
vim.opt.tabstop = 2
vim.opt.showcmd = true
vim.opt.hlsearch = true
vim.opt.smarttab = true
vim.opt.backspace = 'start,eol,indent'
vim.opt.cmdheight = 1
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.laststatus = 2
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'split'
vim.opt.shiftwidth = 2
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.breakindent = true


vim.opt.path:append {  '**'  }                    -- For finding files or seach into subfolders
vim.opt.wildignore:append {  '*/node_modules/*'  }-- Ignore the node_molules 
vim.opt.formatoptions:append {  'r'  }            -- 



-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])


-- Turn Off paste mode while leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste"
})




