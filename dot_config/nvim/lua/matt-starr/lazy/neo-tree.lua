-- Remembers the last manually-resized width for the lifetime of the session,
-- so toggling neo-tree closed/open doesn't snap it back to the configured default.
local last_width = 60 -- 1.5x the neo-tree default of 40

vim.api.nvim_create_autocmd("WinResized", {
    callback = function()
        for _, winid in ipairs(vim.v.event.windows) do
            if vim.bo[vim.api.nvim_win_get_buf(winid)].filetype == "neo-tree" then
                last_width = vim.api.nvim_win_get_width(winid)
            end
        end
    end,
})

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    ---@module 'neo-tree'
    ---@type neotree.Config
    opts = {
        window = {
            position = "right",
            width = function() return last_width end,
            mappings = {
                ["o"] = function(state)
                local node = state.tree:get_node()
                vim.fn.jobstart({ "open", node.path }, { detach = true })
            end,
                ["<C-h>"] = function() vim.cmd("vertical resize +3") end,
                ["<C-l>"] = function() vim.cmd("vertical resize -3") end,
            },
        },
    },
    keys = {
        { "<leader>e", ":Neotree toggle<cr>" },
    },
}
