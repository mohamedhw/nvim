-- vim.cmd('autocmd!')			-- Clear all autocmd events

-- UTF-8
vim.scriptencoding = "utf-8" -- Set the script encoding to UTF-8
vim.opt.encoding = "utf-8" -- Set the default encoding to UTF-8
vim.opt.fileencoding = "utf-8" -- Set the file encoding to UTF-8

vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

vim.opt.title = true -- Show the title in the titlebar

vim.opt.wrap = false -- Disable line wrapping
vim.o.breakindent = true -- Enable line wrapping with proper indentation
vim.opt.cursorline = true -- highlight the current line

-- Indent
vim.opt.autoindent = true -- Enable auto-indentation
vim.opt.tabstop = 2 -- Set the width of a tab character to 2 spaces
vim.opt.softtabstop = 2 -- Set the number of spaces inserted for a tab to 2
vim.opt.shiftwidth = 2 -- Set the number of spaces to use for each step of (auto)indent to 2
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.backspace = "start,eol,indent" -- Allow backspacing over autoindent, line breaks, and start of insert line
vim.opt.smartindent = true -- Enable smart indentation
vim.opt.smarttab = true -- Use shiftwidth for tab completion
vim.opt.ai = true -- Enable auto-indentation in insert mode
vim.opt.si = true -- Smart indenting for C programs
vim.opt.cindent = true

-- Files [Swap, Backup, Undo]
vim.opt.swapfile = false -- Disable swap files
vim.opt.backup = false -- Disable backup files
vim.opt.undodir = os.getenv("HOME") .. "/.config/vim/undodir" -- Set the directory for undo files
vim.opt.undofile = true -- Enable persistent undo

-- Search
vim.opt.hlsearch = false -- Disable highlight search results
vim.o.ignorecase = true -- Ignore case when searching
vim.o.smartcase = true -- Override 'ignorecase' when the search pattern contains upper case characters

-- vim.opt.termguicolors = true  --Uncomment this line if your terminal supports true colors

--vim.opt.scrolloff = 8   -- Minimum number of lines to keep above and below the cursor
vim.opt.signcolumn = "yes" -- Always show the sign column

vim.opt.updatetime = 50 -- Faster update time for CursorHold events

vim.opt.showtabline = 0 -- The tabline will not be shown

vim.opt.completeopt = { "menuone", "noselect" } -- for cmp
vim.o.completeopt = "menuone,noselect" -- Set options for completion menu
