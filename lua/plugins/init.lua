return{
  -- [[ displays a popup with possible key bindings ]]
  -- {
  --   "folke/which-key.nvim",
  --   event = "VeryLazy",
  --   init = function()
  --     vim.o.timeout = true
  --     vim.o.timeoutlen = 200
  --   end,
  --   opts = {}
  -- },
  -- [[ list for showing diagnostics ]]
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "preservim/nerdtree",
  },
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     -- "rcarriga/nvim-notify",
  --   }
  -- },
  -- 'mfussenegger/nvim-lint',
  'stevearc/conform.nvim',

  {
    'lewis6991/gitsigns.nvim',
    lazy = true, -- set lazy loading to true for this plugin
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  'ThePrimeagen/vim-be-good',
}
