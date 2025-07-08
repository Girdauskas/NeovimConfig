require("config.lazy")

vim.g.mapleader = " "

-- Tab is 4 spaces!
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("n", "?", function() require("custom.help").show_help() end, {})
