-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.showtabline = 0
vim.filetype.add({
  extension = {
    norg = "norg",
  },
})
