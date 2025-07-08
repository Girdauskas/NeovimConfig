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
            
            on_attach = function(bufnr)
                local api = require("nvim-tree.api")

                -- Applying defaults
                api.config.mappings.default_on_attach(bufnr)

                -- Using ? for help (default is g?)
                vim.keymap.set('n', '?', api.tree.toggle_help, { buffer = bufnr })
            end,
        })

        
        vim.keymap.set("n", "<leader>e", api.tree.toggle, { desc = "Toggle NvimTree" })

    end,
}
