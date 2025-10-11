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
      files = {
        hidden = true,
        ignored = true,
      },
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
      },
    },
    explorer = {
      files = {
        hidden = true,
        ignored = true,
      },
    },
  },
}
