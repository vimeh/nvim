local kind_icons = {
  -- LLM Provider icons
  claude = "󰋦",
  openai = "󱢆",
  codestral = "󱎥",
  gemini = "",
  Groq = "",
  Openrouter = "󱂇",
  Ollama = "󰳆",
  ["Llama.cpp"] = "󰳆",
  Deepseek = "",
  minuet = "󰋦",
}

return {
  {
    "milanglacier/minuet-ai.nvim",
    config = function()
      require("minuet").setup({
        -- virtualtext = {
        --   auto_trigger_ft = {},
        --   keymap = {
        --     -- accept whole completion
        --     accept = "<A-A>",
        --     -- accept one line
        --     accept_line = "<A-a>",
        --     -- accept n lines (prompts for number)
        --     -- e.g. "A-z 2 CR" will accept 2 lines
        --     accept_n_lines = "<A-z>",
        --     -- Cycle to prev completion item, or manually invoke completion
        --     prev = "<A-[>",
        --     -- Cycle to next completion item, or manually invoke completion
        --     next = "<A-]>",
        --     dismiss = "<A-e>",
        --   },
        -- },
        provider = "openai_compatible",
        request_timeout = 2.5,
        throttle = 1500, -- Increase to reduce costs and avoid rate limits
        debounce = 600, -- Increase to reduce costs and avoid rate limits
        provider_options = {
          openai_compatible = {
            api_key = "TERM",
            end_point = "http://127.0.0.1:1234/v1/chat/completions",
            model = "qwen/qwen2.5-coder-3b-instruct@q8_0",
            name = "LM Studio - Qwen2.5.coder-3b-instruct",
          },
        },
      })
    end,
  },
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      keymap = {
        ["<C-y>"] = {
          function(cmp)
            cmp.show({ providers = { "minuet" } })
          end,
        },
      },
      sources = {
        -- if you want to use auto-complete
        default = { "minuet" },
        providers = {
          minuet = {
            name = "minuet",
            module = "minuet.blink",
            score_offset = 100,
          },
        },
      },
      appearance = {
        nerd_font_variant = "normal",
        kind_icons = kind_icons,
      },
    },
  },
}
