local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup {}

lspconfig.setup {
    ensure_installed = { "sumneko_lua", "quick-lint-js", "tsserver", "tailwindcss", "eslint-lsp" },
}

require 'lspconfig'.tailwindcss.setup {}
require 'lspconfig'.eslint.setup {}
require 'lspconfig'.quick_lint_js.setup {}
