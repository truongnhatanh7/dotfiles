-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local function au(typ, pattern, cmdOrFn)
  if type(cmdOrFn) == "function" then
    vim.api.nvim_create_autocmd(typ, { pattern = pattern, callback = cmdOrFn, group = group })
  else
    vim.api.nvim_create_autocmd(typ, { pattern = pattern, command = cmdOrFn, group = group })
  end
end

au({ "CursorHold", "InsertLeave" }, nil, function()
  local opts = {
    focusable = false,
    scope = "cursor",
    close_events = { "BufLeave", "CursorMoved", "InsertEnter" },
  }
  vim.diagnostic.open_float(nil, opts)
end)

au("InsertEnter", nil, function()
  vim.diagnostic.enable(false)
end)

au("InsertLeave", nil, function()
  vim.diagnostic.enable(true)
end)
