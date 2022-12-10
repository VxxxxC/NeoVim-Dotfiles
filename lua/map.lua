local keymap = vim.keymap

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', '<Tab><Space>', ':tabedit<Return>')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Text edit
keymap.set('n', '<C-d>', 'yyp')
keymap.set('n', '<A-j>', ':m .+1<CR>')
keymap.set('n', '<A-k>', ':m .-2<CR>')

keymap.set('i', '<C-s>', '<Esc>:w<Return>')
keymap.set('n', '<C-s>', ':w<CR>')

-- Terminal
keymap.set('n', '<C-t>', ':terminal<CR>i')
keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Explorer
keymap.set('n', ';nt', ':NvimTreeToggle<CR>')

-- Move to right
keymap.set('i', '<C-l>', '<Esc>la')
-- Move to head or tail
keymap.set('i', '<A-[>', '<Esc><S-I>')
keymap.set('i', '<A-]>', '<Esc><S-A>')

-- Find and replacement
keymap.set('n', ';fs', ':%s/')
keymap.set('i', ';fs', '<Esc>:%s/')

-- Cancel hightlight after searching text , same keymap with ESC
keymap.set('n', '<Esc>', ':noh<Return>')
