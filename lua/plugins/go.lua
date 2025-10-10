return {
  -- change settings for the built-in lsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- options for vim.diagnostic.config()
      diagnostics = {
        -- Retain other LazyVim defaults but override severity for display methods
        update_in_insert = false,
        severity_sort = true,

        -- Filter virtual text to only show Errors
        virtual_text = {
          severity = {
            min = vim.diagnostic.severity.ERROR,
          },
        },

        -- Filter signs to only show Errors
        signs = {
          severity = {
            min = vim.diagnostic.severity.ERROR,
          },
        },

        -- Filter underline to only show Errors
        underline = {
          severity = {
            min = vim.diagnostic.severity.ERROR,
          },
        },

        inlay_hints = {
          enabled = false, -- This is the key change
        },
      },
    },
  },
}
