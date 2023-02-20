local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }
local keymap = vim.keymap

keymap.set('n', '[d', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts) -- Jump to next warning/error
keymap.set('n', ']d', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts) -- Jump to prev warning/error
-- Show line diagnostics
keymap.set("n", "<C-d>", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Show cursor diagnostic
keymap.set("n", "<C-d>", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)

keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts) -- Find definition. Press `o` to select file or where to jump
keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts) -- Rename variable, function, class, ...
