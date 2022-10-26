local status, n = pcall(require, 'nightfox')
if (not status) then return end

n.setup({
  options = {
    transparent = true,
  }
})

<<<<<<< HEAD
vim.cmd("colorscheme duskfox")
=======
-- vim.cmd("colorscheme duskfox")
>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp
