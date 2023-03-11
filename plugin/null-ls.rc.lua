local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup {
  debug = true,
  sources = {
    -- fish
    null_ls.builtins.diagnostics.fish,

    --eslint_d (need npm install -g eslint_g)
    --[[null_ls.builtins.diagnostics.eslint_d.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
      diagnostic_config = {
        -- see :help vim.diagnostic.config()
        underline = true,
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        severity_sort = true,
      },
      diagnostics_format = '[null-ls eslint_d] #{m}\n(#{c})'
    }),]] --

    null_ls.builtins.code_actions.eslint_d.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" }
    }),
    null_ls.builtins.formatting.eslint_d.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" }
    }),

    null_ls.builtins.formatting.prettier.with({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "css", "scss", "less",
        "html",
        "json", "jsonc", "yaml", "markdown", "markdown.mdx" }
    }),

    null_ls.builtins.formatting.dart_format.with({
      filetypes = { "dart" },
    }),

    null_ls.builtins.formatting.fixjson.with({
      filetypes = { "json" },
    }),
  }
}
