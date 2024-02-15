local discipline = require("config.discipline")
discipline.cowboy()

-- Visual mode mappings for indenting and dedenting
vim.api.nvim_set_keymap("x", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- Visual mode mappings for moving lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Visual mode mapping for pasting without overwriting clipboard
vim.keymap.set("x", "<leader>p", '"_dp')

-- Yank mappings for different registers
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Run Ex command for opening a new Vim instance
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")
