return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    -- Recommended for `ask()` and `select()`.
    -- Required for default `toggle()` implementation.
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition".
    }

    -- Required for `opts.auto_reload`.
    vim.o.autoread = true

    -- Register opencode keymaps with which-key under <leader>o
    local ok, wk = pcall(require, "which-key")
    if ok then
      wk.register({
        o = {
          name = "Opencode",
          a = { function() require("opencode").ask("@this: ", { submit = true }) end, "Ask opencode" },
          x = { function() require("opencode").select() end, "Execute opencode action…" },
          p = { function() require("opencode").prompt("@this") end, "Add to opencode" },
          t = { function() require("opencode").toggle() end, "Toggle opencode" },
          u = { function() require("opencode").command("session.half.page.up") end, "Half page up" },
          d = { function() require("opencode").command("session.half.page.down") end, "Half page down" },
        }
      }, { prefix = "<leader>" })
    end
    -- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o".
    vim.keymap.set("n", "+", "<C-a>", { desc = "Increment", noremap = true })
    vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement", noremap = true })
  end,
}
