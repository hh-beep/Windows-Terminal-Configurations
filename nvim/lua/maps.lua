

local keymap = vim.keymap

-- Remove the copy(yank) with the X
keymap.set('n', 'x', '"_x')


-- Increment and Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')


-- Delete a word backward
keymap.set('n', 'dw', 'vb"_d')


-- Select All
keymap.set('n', '<C-a>', 'gg<S-v>G')


-- New Tab Windows
keymap.set('n', 'te', ':tabedit<RETURN>', {  silent = true  })
-- Spliting Tab Windows
keymap.set('n', 'ss', ':split<RETURN><C-w>w', {  silent = true  })
keymap.set('n', 'sv', ':vsplit<RETURN<C-w>w', {  silent = true  })
-- Moving between Tab Windows
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('n', 's<left>', '<C-w>k')
keymap.set('n', 's<up>', '<C-w>j')
keymap.set('n', 's<down>', '<C-w>j')
keymap.set('n', 's<right>', '<C-w>l')


-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><rigHt>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


-- Nvim-Tree
keymap.set('n', '<C-d>', '<cmd> NvimTreeToggle <CR>')


-- End of the word
vim.keymap.set('i', '<C-Right>', '<C-Right>')

-- BuferLine
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})





--
--
-- ATENTION! Anything that contains a "C-"... means that you need to press Control + the Key (Ex: <C-d> means Control + d keys)  :)
--
--
--
