-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.lsp.set_log_level("off")

vim.diagnostic.config({
  virtual_text = {
    severity = {
      vim.diagnostic.severity.ERROR,
      vim.diagnostic.severity.INFO,
      vim.diagnostic.severity.HINT,
    },
  },
  signs = {
    severity = {
      vim.diagnostic.severity.ERROR,
      vim.diagnostic.severity.INFO,
      vim.diagnostic.severity.HINT,
    },
  },
  underline = {
    severity = {
      vim.diagnostic.severity.ERROR,
      vim.diagnostic.severity.INFO,
      vim.diagnostic.severity.HINT,
    },
  },
})
