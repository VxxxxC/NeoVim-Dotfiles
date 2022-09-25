local status, trouble = pcall(require, "trouble")
if (not status) then return end

-- Lua
vim.keymap.set("n", "tb", "<cmd>TroubleToggle<cr>"
--    { silent = true, noremap = true }
)
vim.keymap.set("n", "td", "<cmd>TroubleToggle workspace_diagnostics<cr>"
--    { silent = true, noremap = true }
)
vim.keymap.set("n", "tq", "<cmd>TroubleToggle quickfix<cr>"
--    { silent = true, noremap = true }
)
