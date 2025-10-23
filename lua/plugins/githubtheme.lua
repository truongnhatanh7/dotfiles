return {
  "projekt0n/github-nvim-theme",
  name = "github-theme",
  config = function()
    require("github-theme").setup({
      options = {
        styles = {
          functions = "bold",
          keywords = "italic",
        },
        transparent = true,
      },
    })
  end,
}
