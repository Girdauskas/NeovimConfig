require("config.lazy")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

-- Tab is 4 spaces!
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

