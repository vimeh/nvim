return {
  {
    "sunjon/Shade.nvim",
    event = "VeryLazy",
    config = function()
      require("shade").setup({
        overlay_opacity = 80,
        opacity_step = 1,
        keys = {
          -- TODO: Control-Shift not working, fix if desired
          -- brightness_up = "<C-Shift-Up>",
          -- brightness_down = "<C-Shift-Down>",
          toggle = "<Leader>uF",
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
  },
  {
    "SmiteshP/nvim-navic",
    config = function()
      require("nvim-navic").setup({
        -- required for catppucin to work
        highlight = true,
      })
    end,
  },
}
