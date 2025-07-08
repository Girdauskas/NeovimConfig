return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim"
    }, 

    config = function()
       local neogit = require("neogit")
       vim.keymap.set("n", "<leader>g", neogit.open, { desc = "Neogit open" })
    end
}    
