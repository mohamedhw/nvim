local discipline = require("config.discipline")
discipline.cowboy()

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local opts = {noremap = true, silent = true}

-- Disable Space key in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap k and j for Word Wrap Handling
-- vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
        callback = function()
                vim.highlight.on_yank()
        end,
        group = highlight_group,
        pattern = "*",
})

-- Yank mappings for different registers
vim.keymap.set("n", "<leader>y", '"+y', opts)
vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>Y", '"+Y', opts)

-- Visual mode mapping for pasting without overwriting clipboard
vim.keymap.set("x", "<leader>p", '"_dp', opts)

-- Visual mode mappings for indenting and dedenting
vim.api.nvim_set_keymap("x", "<Tab>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- Visual mode mappings for moving lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- LEX config
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true, desc= "go to Lex tree"})
vim.keymap.set("n", "<leader>e", ":Lex 30<cr>", { noremap = true, silent = true, desc= "side tree"})

-- Search and replace mappings
vim.keymap.set("n", "<C-s>", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Diagnostic keymaps
-- -- Go to previous diagnostic message
-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
-- -- Go to next diagnostic message
-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
-- -- Open floating diagnostic message
-- vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
-- -- Open diagnostics list
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })



-- Windows
-- Split window
vim.keymap.set("n", "<leader>|", ":vsp <CR>", { noremap = true, silent = true, desc= "split window horizontally"})
vim.keymap.set("n", "<leader>-", ":sp <CR>", { noremap = true, silent = true, desc= "split window vertically"})

-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc= "move to left window"})
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc= "move to down window"})
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc= "move to top window"})
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc= "move to right window"})

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true, desc= "resize window to the top"})
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true, desc= "resize window to the bottom"})
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true, desc= "resize window to the left"})
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true, desc= "resize window to the right"})

-- Buffer movement
vim.keymap.set("n", "<S-l>", ":bnext <CR>", { noremap = true, silent = true, desc= "move to next buffer"})
vim.keymap.set("n", "<S-h>", ":bprev <CR>", { noremap = true, silent = true, desc= "move to previous buffer"})
