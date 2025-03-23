return {
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    -- opts = {
    --   adapters = {
    --     my_openai = function()
    --       return require("codecompanion.adapters").extend("openai_compatible", {
    --         env = {
    --           url = "http://127.0.0.1:1234",
    --           -- api_key = "OpenAI_API_KEY",
    --           chat_url = "/v1/chat/completions",
    --           models_endpoint = "/v1/models",
    --         },
    --       })
    --     end,
    --   },
    --   strategies = {
    --     -- Change the default chat adapter
    --     chat = {
    --       adapter = "anthropic",
    --     },
    --   },
    --   opts = {
    --     -- Set debug logging
    --     log_level = "DEBUG",
    --   },
    -- },
  },
  -- {
  --   "milanglacier/minuet-ai.nvim",
  --   config = function()
  --     require("minuet").setup({
  --       -- virtualtext = {
  --       --   auto_trigger_ft = {},
  --       --   keymap = {
  --       --     -- accept whole completion
  --       --     accept = "<A-A>",
  --       --     -- accept one line
  --       --     accept_line = "<A-a>",
  --       --     -- accept n lines (prompts for number)
  --       --     -- e.g. "A-z 2 CR" will accept 2 lines
  --       --     accept_n_lines = "<A-z>",
  --       --     -- Cycle to prev completion item, or manually invoke completion
  --       --     prev = "<A-[>",
  --       --     -- Cycle to next completion item, or manually invoke completion
  --       --     next = "<A-]>",
  --       --     dismiss = "<A-e>",
  --       --   },
  --       -- },
  --       provider = "openai_compatible",
  --       request_timeout = 2.5,
  --       throttle = 1500, -- Increase to reduce costs and avoid rate limits
  --       debounce = 600, -- Increase to reduce costs and avoid rate limits
  --       provider_options = {
  --         openai_compatible = {
  --           api_key = "TERM",
  --           end_point = "http://127.0.0.1:1234/v1/chat/completions",
  --           model = "qwen/qwen2.5-coder-3b-instruct@q8_0",
  --           name = "LM Studio - Qwen2.5.coder-3b-instruct",
  --         },
  --       },
  --     })
  --   end,
  -- },
  {
    "saghen/blink.cmp",
    opts = {
      sources = {
        default = { "codecompanion" },
        providers = {
          codecompanion = {
            name = "CodeCompanion",
            module = "codecompanion.providers.completion.blink",
            enabled = true,
          },
        },
      },
    },
  },
}
