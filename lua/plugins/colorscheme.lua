return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = true,
        dim_inactive = { enabled = true, shade = "dark", percentage = 0.15 },
        integrations = {
          blink_cmp = true,
          dadbod_ui = true,
          dap = true,
          dap_ui = true,
          dashboard = true,
          diffview = true,
          fzf = true,
          gitsigns = true,
          grug_far = true,
          leap = true,
          lsp_trouble = true,
          markdown = true,
          mason = true,
          neotree = true,
          noice = true,
          notify = true,
          nvim_surround = true,
          octo = true,
          rainbow_delimiters = true,
          render_markdown = true,
          telescope = true,
          treesitter = true,
          treesitter_context = true,
          ufo = true,
          which_key = true,
          snacks = {
            enabled = true,
          },
          mini = {
            enabled = true,
          },
          navic = {
            enabled = true,
          },
        },
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    lazy = false,
    config = function()
      local rainbow_delimiters = require("rainbow-delimiters")
      require("rainbow-delimiters.setup").setup({
        strategy = {
          [""] = rainbow_delimiters.strategy["global"],
          vim = rainbow_delimiters.strategy["local"],
        },
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        priority = {
          [""] = 110,
          lua = 210,
        },
        highlight = {
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
        },
      })
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    lazy = false,
    config = function()
      require("colorizer").setup()
    end,
  },
}
