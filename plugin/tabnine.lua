local status, tabnine = pcall(require, 'tabnine')
if (not status) then return end

tabnine.setup({
  disable_auto_comment = true,
  accept_keymap = "<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" }
})

local status2, tabnine_status = pcall(require, 'tabnine_status')
if (not status2) then return end

tabnine_status.status()
