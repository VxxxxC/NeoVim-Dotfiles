local status, nav = pcall(require, 'navigator')

if (not status) then return end

nav.setup({
  mason = true,
})
