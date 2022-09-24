require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
    return vim.fn.has(x) == 1
end
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
    require('macos')
end
if is_win then
    require('windows')
end

vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.guifont = "FiraCode Nerd Font Mono:h9.5"
vim.opt.hidden = true
vim.opt.inccommand = "nosplit"
vim.opt.mouse = "a"
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.opt.showmode = false
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 100
