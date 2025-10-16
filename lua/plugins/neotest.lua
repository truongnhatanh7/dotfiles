return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "fredrikaverpil/neotest-golang",
    },
    opts = {
      output = {
        enabled = true,
      },
      output_panel = {
        enabled = true,
      },
      adapters = {
        ["neotest-golang"] = {
          -- runner = "gotestsum",
          warn_test_name_dupes = false,
          warn_test_not_executed = false,
        },
      },
    },
  },
}
