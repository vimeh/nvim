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
  {
    "malbertzard/inline-fold.nvim",

    opts = {
      defaultPlaceholder = "…",
      queries = {

        -- Some examples you can use
        html = {
          { pattern = 'class="([^"]*)"', placeholder = "@" }, -- classes in html
          { pattern = 'href="(.-)"' }, -- hrefs in html
          { pattern = 'src="(.-)"' }, -- HTML img src attribute
        },
      },

      jsx = {
        { pattern = 'className="([^"]*)"' }, -- classes in jsx
      },
    },
    keys = {
      {
        "<leader>uu",
        function()
          require("inline-fold").toggle()
        end,
        desc = "Toggle inline fold",
      },
    },
  },
}
