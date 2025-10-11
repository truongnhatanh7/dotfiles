-- lazy.nvim
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      icons = {
        diagnostics = {
          Warn = "",
        },
      },
    },
    layout = { preset = "sidebar", preview = false },
    files = {
      hidden = true,
    },
  },
}
