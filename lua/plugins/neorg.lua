return {
  {
    "nvim-neorg/neorg",
    ft = "norg",
    cmd = "Neorg", -- Add this to ensure it loads when command is used
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/D/sync/notes",
              },
            },
          },
          ["core.neorgcmd"] = {},
          -- Temporarily remove this line:
          -- ["core.integrations.telescope"] = {},
        },
      })
    end,
  },
}
