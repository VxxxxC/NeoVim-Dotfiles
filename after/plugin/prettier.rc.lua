local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettier',
  filetypes = {
    'css',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'json',
    'scss',
<<<<<<< HEAD
    'less'
=======
    'less',
    'dart'
>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp
  }
}
