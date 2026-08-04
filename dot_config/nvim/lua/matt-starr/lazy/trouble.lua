return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
      require("trouble").setup({
          use_diagnostic_signs = true,
          -- warn_no_results = true,
          modes = {
              lsp_references = {
                  params = {
                      include_declaration = false,
                      include_current = true,
                  },
              },
              -- -- This is the default behaviour:
              -- -- The LSP base mode for:
              -- -- * lsp_definitions, lsp_references, lsp_implementations
              -- -- * lsp_type_definitions, lsp_declarations, lsp_command
              -- lsp_base = {
              --     params = {
              --         -- don't include the current location in the results
              --         include_current = false,
              --     },
              -- },
          },
      })
      require("trouble")
      local opts = { silent = true, noremap = true }
      local kmap = vim.keymap.set

      kmap("n", "<leader>x", "<cmd>Trouble close<cr>", opts)
      kmap("n", "<F5>", "<cmd>Trouble diagnostics toggle<cr>", opts)
      kmap("n", "gr", "<cmd>Trouble lsp_references focus=true<cr>", opts)
      kmap("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", opts)
  end,
}
