return {
  "dstein64/nvim-scrollview",
  depedencies = { {
    "lewis6991/gitsigns.nvim",
  } },
  config = function()
    require("scrollview.contrib.gitsigns").setup({})
    require("scrollview").setup({
      diagnostics_severities = { vim.diagnostic.severity.ERROR },
      scrollview_diagnostics_warn_symbol = "",
      signs_on_startup = { "all" },
    })
  end,
}
