local status_lspconfig, nvim_lsp = pcall(require, "lspconfig")
if (not status_lspconfig) then return end

local protocol = require('vim.lsp.protocol')

-- set keymap for lsp diagnostic messages float window
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { noremap = true, silent = true })

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  --buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  --buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)

  -- formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end
    })
  end
end

protocol.CompletionItemKind = {
  '', -- Text
  '', -- Method
  '', -- Function
  '', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  'ﰮ', -- Interface
  '', -- Module
  '', -- Property
  '', -- Unit
  '', -- Value
  '', -- Enum
  '', -- Keyword
  '﬌', -- Snippet
  '', -- Color
  '', -- File
  '', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  'ﬦ', -- Operator
  '', -- TypeParameter
}

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- ---------------------- Flow LSP ------------------------------------------
nvim_lsp.flow.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- ----------------------- TypeScript LSP ------------------------------------
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- ------------------------ Angular LSP --------------------------------------
nvim_lsp.angularls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- ----------------------- Vue LSP -------------------------------------------
nvim_lsp.volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- ---------------------- Svelte LSP ----------------------------------------
nvim_lsp.svelte.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
-- ----------------------------------------------------------------------
nvim_lsp.sourcekit.setup {
  on_attach = on_attach,
}

-- ------------------------------- Lua LSP -----------------------------------
nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
    },
  },
}

nvim_lsp.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = { "css", "less", "postcss", "sass", "scss", "javascript", "javascriptreact", "typescript",
    "typescriptreact", "html", "astro", "astro-markdown", "markdown", "mdx" },
}

nvim_lsp.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}


-- ------------------------- Dart LSP -----------------------------
nvim_lsp.dartls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "dart", "/usr/local/opt/dart/libexec/bin/snapshots/analysis_server.dart.snapshot", "--lsp" },
}


-- ----------------------------- Astro LSP -------------------------------

nvim_lsp.astro.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "astro-ls", "--stdio" },
  filetypes = { "astro" },
}

-- ----------------------------- Yaml LSP --------------------------------
nvim_lsp.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml", "yaml.docker-compose" },
}

-- -----------------------------------------------------------------------------------------------------------

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = "●" },
    severity_sort = true,
  })

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
