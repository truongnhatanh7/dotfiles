-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.lsp.set_log_level("off")

-- ~/.config/nvim/lua/config/options.lua
-- This sets custom Neovim options
local opt = vim.opt
opt.scrolloff = 15

vim.o.cursorline = false
vim.o.smoothscroll = false
vim.g.snacks_animate = true
