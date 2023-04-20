local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "css",
    "scss",
    "html",
    "lua",
    "fish",
    "svelte",
    "python",
    "sql",
    "dart",
    "astro",
    "vue",
  },
  autotag = {
    enable = true,
  },
}

--[[ deprecated after neovim version > v0.9
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

local ft_to_parser = require "nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.astro = "tsx"
]]
--
