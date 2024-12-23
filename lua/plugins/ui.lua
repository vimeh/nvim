return {
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   event = "VeryLazy",
  --   opts = function()
  --     -- PERF: we don't need this lualine require madness 🤷
  --     local lualine_require = require("lualine_require")
  --     lualine_require.require = require
  --
  --     local icons = require("lazyvim.config").icons
  --
  --     vim.o.laststatus = vim.g.lualine_laststatus
  --
  --     return {
  --       options = {
  --         theme = "auto",
  --         globalstatus = true,
  --         disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
  --       },
  --       sections = {
  --         lualine_a = { "mode" },
  --         lualine_b = {
  --           "branch",
  --           {
  --             "diff",
  --             symbols = {
  --               added = icons.git.added,
  --               modified = icons.git.modified,
  --               removed = icons.git.removed,
  --             },
  --             source = function()
  --               local gitsigns = vim.b.gitsigns_status_dict
  --               if gitsigns then
  --                 return {
  --                   added = gitsigns.added,
  --                   modified = gitsigns.changed,
  --                   removed = gitsigns.removed,
  --                 }
  --               end
  --             end,
  --           },
  --         },
  --
  --         lualine_c = {
  --           LazyVim.lualine.root_dir(),
  --           {
  --             "diagnostics",
  --             symbols = {
  --               error = icons.diagnostics.Error,
  --               warn = icons.diagnostics.Warn,
  --               info = icons.diagnostics.Info,
  --               hint = icons.diagnostics.Hint,
  --             },
  --           },
  --           { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
  --           { LazyVim.lualine.pretty_path() },
  --         },
  --         lualine_x = {
  --           -- stylua: ignore
  --           {
  --             function() return require("noice").api.status.mode.get() end,
  --             cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
  --             color = Snacks.util.color("Constant"),
  --           },
  --           -- stylua: ignore
  --           {
  --             function() return "  " .. require("dap").status() end,
  --             cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
  --             color = Snacks.util.color("Debug"),
  --           },
  --           {
  --             require("lazy.status").updates,
  --             cond = require("lazy.status").has_updates,
  --             color = Snacks.util.color("Special"),
  --           },
  --         },
  --         lualine_y = {},
  --         lualine_z = {},
  --       },
  --       extensions = { "neo-tree", "lazy" },
  --     }
  --   end,
  -- },
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
