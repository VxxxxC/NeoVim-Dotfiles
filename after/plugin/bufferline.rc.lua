local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    indicator = { icon = '▎', style = 'underline' },
    buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    mode = "tabs",
    separator_style = { 'slant', 'thick' },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    --show_tab_indicators = true,
    color_icons = true,
    diagnostics = 'nvim_lsp',
    hover = {
      enabled = true,
      delay = 200,
      reveal = { 'close' }
    },
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36',
    },
    separator_selected = {
      fg = '#073642',
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      underline = true,
      undercurl = true,
      italic = true
    },
    fill = {
      bg = '#073642'
    }
  },
})

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
