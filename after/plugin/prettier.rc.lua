local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettier',
  filetypes = {
    'html',
    'css',
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
    'vue',
    'json',
    'scss',
    'less',
    'dart',
    'yaml',
    'graphql',
    'markdown',
  }
}
