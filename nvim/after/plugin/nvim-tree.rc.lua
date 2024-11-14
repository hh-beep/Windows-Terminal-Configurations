-- Default
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true


local status, tree = pcall(require, 'nvim-tree')
if (not status) then return end


tree.setup {
   view = {
    adaptive_size = true,
    side = "left",
    width = 25,
    hide_root_folder = true,
  },
}
