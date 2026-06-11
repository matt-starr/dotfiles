return {
    -- Colorscheme
    {
        "ellisonleao/gruvbox.nvim", priority = 1000 , config = true,
        opts = function()
            local palette = require'gruvbox'.palette
            return {
                italic = {
                    strings = false,
                },
                overrides = {
                    Todo = { bg = palette.dark3, },
                    -- StatusLine = { bg = palette.dark3, },
                    ["@variable"] = { fg = palette.bright_blue, },
                    ["@parameter"] = { fg = palette.neutral_aqua, },
                }
            }
        end,
    },
    -- render indentations
    'Yggdroot/indentLine',
    -- Quick un/comment code
    {
        'tpope/vim-commentary',
        config = function()
            vim.cmd [[ autocmd FileType c,cpp setlocal commentstring=//\ %s ]]
        end,
    },
    -- Write file as sudo, when opened without sudo
    'lambdalisue/suda.vim',
    -- undo history management (branching)
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },
    -- Git tool
    "tpope/vim-fugitive",
    -- Pop-up notifications
    'rcarriga/nvim-notify',
    -- Show git changes in gutter
    {
        "airblade/vim-gitgutter",
        event = { "BufReadPre", "BufNewFile" },
        init = function()
            -- Signs
            vim.g.gitgutter_sign_added = "▎"
            vim.g.gitgutter_sign_modified = "▎"
            vim.g.gitgutter_sign_removed = "▁"

            -- Keymaps - these are the defaults
            -- vim.keymap.set("n", "]c", "<Plug>(GitGutterNextHunk)", { desc = "Next Git hunk" })
            -- vim.keymap.set("n", "[c", "<Plug>(GitGutterPrevHunk)", { desc = "Previous Git hunk" })
            -- vim.keymap.set("n", "<leader>hs", ":GitGutterStageHunk<CR>", { desc = "Stage hunk" })
            -- vim.keymap.set("n", "<leader>hu", ":GitGutterUndoHunk<CR>", { desc = "Undo hunk" })
            -- vim.keymap.set("n", "<leader>hp", ":GitGutterPreviewHunk<CR>", { desc = "Preview hunk" })
            -- vim.keymap.set("n", "<leader>ht", ":GitGutterToggle<CR>", { desc = "Toggle GitGutter" })
        end,
    },
}
