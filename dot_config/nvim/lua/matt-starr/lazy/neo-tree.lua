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
            width = 60, -- 1.5x the neo-tree default of 40
            mappings = {
                ["o"] = function(state)
                local node = state.tree:get_node()
                vim.fn.jobstart({ "open", node.path }, { detach = true })
            end,
            },
        },
    },
    keys = {
        { "<leader>e", ":Neotree toggle<cr>" },
    },
}
