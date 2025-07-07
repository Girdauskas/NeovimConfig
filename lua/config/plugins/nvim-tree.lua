return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local nvim_tree = require("nvim-tree")
        local api = require("nvim-tree.api")

        nvim_tree.setup({
            update_focused_file = {
                enable = true,
                update_root = false,
            },
        })

        
        vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle NvimTree" })

    end,
}
