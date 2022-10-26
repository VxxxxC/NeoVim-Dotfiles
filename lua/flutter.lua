require("flutter-tools").setup{

    ui = {
    border = "rounded",
    natification_style = 'native',
  },

  debugger = {
      enabled = true,
      run_via_dap = true,
    },

  decorations = {
      statusline = { device = true, app_version = true },
    },

  closing_tags = { highlight = "ErrorMsg",
                     prefix = ">",
                     enabled = true,
    },

    widget_guides = { enabled = true, debug = true },

    dev_log = { enabled = true, open_cmd = "tabedit" },

    outline = {
    open_cmd = "50vnew", -- command to use to open the outline buffer
    auto_open = false -- if true this will open the outline automatically when it is first populated
  },

  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = true, -- highlight the background
      foreground = true, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "■", -- the virtual text character to highlight
    },
    --on_attach = my_custom_on_attach,
    --capabilities = my_custom_capabilities, -- e.g. lsp_status capabilities


        settings = {
        showTodos = true,
        renameFilesWithClasses = "prompt",
        enableSnippets = true,
      },
    },
}


vim.api.nvim_set_keymap('n', '<Leader>fr',':FlutterRun<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fc',[[<Cmd>lua require('telescope').extensions.flutter.commands()<CR>]], { noremap = true, silent = true })

