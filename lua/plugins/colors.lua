function ColorMyPencils(color)
  color = color or "tokyonight"
  vim.cmd.colorscheme(color)
  -- Set background color to transparent for both terminal and GUI
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
return {
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    -- lazy = false,
    priority = 10000,
    config = function()
      require("tokyonight").setup({
        style = "storm",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = {italic = false},
          keywords = {italic = false},
          sidebars = "transparent",
          floats = "transparent",
        },
      })
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme rose-pine")
      require("rose-pine").setup({
        disable_background = true,
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      })
      ColorMyPencils()
    end
  },
}

