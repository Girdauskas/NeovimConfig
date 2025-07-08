local HELP_API = {}

HELP_API.show_help = function()
    local buf = vim.api.nvim_create_buf(false, true)

    local help = {
        "HELP",
        "",
        "<leader>g      - GIT",
        "<leader>e      - Explorer",
        "<leader>ff      - Fuzzy Find",
        "<leader>fg      - Fuzzy Grep",
    }

    local width = 100
    local height = 30

    vim.api.nvim_buf_set_lines(buf, 0, 6, false, help)

    local opts = {
        relative = "editor",
        width = width,
        height = height,
        row = (vim.o.lines - height) / 2,
        col = (vim.o.columns - width) / 2,
        border = "rounded",
    }

    local window = vim.api.nvim_open_win(buf, true, opts)

    vim.keymap.set("n", "<Esc>", "<cmd>close<CR>", { buffer = buf })
end

return HELP_API
