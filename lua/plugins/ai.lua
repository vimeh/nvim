return {
  {
    "dlants/magenta.nvim",
    lazy = false, -- you could also bind to <leader>mt
    build = "npm install --frozen-lockfile",
    opts = {
      provider = "anthropic",
      anthropic = {
        model = "claude-3-7-sonnet-latest",
      }, -- open chat sidebar on left or right side
      sidebar_position = "left",
      -- can be changed to "telescope"
      picker = "fzf-lua",
      -- enable default keymaps shown below
      default_keymaps = true,
      -- keymaps for the sidebar input buffer
      sidebar_keymaps = {
        normal = {
          ["<CR>"] = ":Magenta send<CR>",
        },
      },
      -- keymaps for the inline edit input buffer
      -- if keymap is set to function, it accpets a target_bufnr param
      inline_keymaps = {
        normal = {
          ["<CR>"] = function(target_bufnr)
            vim.cmd("Magenta submit-inline-edit " .. target_bufnr)
          end,
        },
      },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- "ravitemer/mcphub.nvim",
    },
    opts = {
      strategies = {
        -- Change the default chat adapter
        chat = {
          adapter = "anthropic",
        },
        -- tools = {
        --   ["mcp"] = {
        --     callback = require("mcphub.extensions.codecompanion"),
        --     description = "Call tools and resources from the MCP Servers",
        --     opts = {
        --       -- user_approval = true,
        --       requires_approval = true,
        --     },
        --   },
        -- },
      },
      opts = {
        -- Set debug logging
        log_level = "DEBUG",
      },
    },
  },
  -- {
  --   "ravitemer/mcphub.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim", -- Required for Job and HTTP requests
  --   },
  --   build = "npm install -g mcp-hub@latest", -- Installs required mcp-hub npm module
  --   config = function()
  --     require("mcphub").setup({
  --       -- Required options
  --       port = 3000, -- Port for MCP Hub server
  --       config = vim.fn.expand("~/mcpservers.json"), -- Absolute path to config file
  --
  --       -- Optional options
  --       on_ready = function(hub)
  --         -- Called when hub is ready
  --       end,
  --       on_error = function(err)
  --         -- Called on errors
  --       end,
  --       shutdown_delay = 0, -- Wait 0ms before shutting down server after last client exits
  --       log = {
  --         level = vim.log.levels.WARN,
  --         to_file = false,
  --         file_path = nil,
  --         prefix = "MCPHub",
  --       },
  --     })
  --   end,
  -- },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      -- add any opts here
      -- for example
      provider = "openai",
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
        timeout = 30000, -- timeout in milliseconds
        temperature = 0, -- adjust if needed
        max_tokens = 4096,
        -- reasoning_effort = "high" -- only supported for reasoning models (o1, etc.)
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
