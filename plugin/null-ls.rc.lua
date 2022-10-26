local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup {
  debug = true,
  sources = {
<<<<<<< HEAD
      null_ls.builtins.diagnostics.eslint_d.with({
        diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
=======
    null_ls.builtins.diagnostics.fish,

    -- unable eslint_d to avoid redundance eslint error showing on IDE

      --[[null_ls.builtins.diagnostics.eslint_d.with({
        diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),]]
>>>>>>> bb6b362... feat(add-Flutter-LSP): added flutter lsp
  }
}
