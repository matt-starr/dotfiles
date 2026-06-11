vim.api.nvim_create_autocmd("FileType", {
    pattern = "diff",
    callback = function()
        vim.opt_local.colorcolumn = "101"
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "gitcommit",
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.tw = 72
        vim.opt_local.colorcolumn = "72"
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "json",
    callback = function()
        vim.opt.conceallevel = 0
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.opt_local.spell = true
        vim.opt.conceallevel = 0
    end,
})
