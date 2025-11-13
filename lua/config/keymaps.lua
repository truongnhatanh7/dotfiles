-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>sz", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

vim.keymap.set("n", "<leader>W", ":wall<CR>", { desc = "Save all buffers" })

vim.keymap.set("n", "<leader>ce", ":lua vim.diagnostic.open_float()<CR>", { desc = "Show line diagnostics" })
