return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "fredrikaverpil/neotest-golang",
    },
    opts = {
      discovery = {
        -- Drastically improve performance in ginormous projects by
        -- only AST-parsing the currently opened buffer.
        enabled = false,
        -- Number of workers to parse files concurrently.
        -- A value of 0 automatically assigns number based on CPU.
        -- Set to 1 if experiencing lag.
        concurrent = 1,
      },
      running = {
        -- Run tests concurrently when an adapter provides multiple commands to run.
        concurrent = true,
      },
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
