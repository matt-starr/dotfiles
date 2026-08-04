return {
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
          ensure_installed = {
              "clangd",
              "basedpyright",
              "bashls",
              "lua_ls",
              "quick_lint_js",
              "yamlls",
          },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
