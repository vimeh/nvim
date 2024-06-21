return {
  {
    "dustinblackman/oatmeal.nvim",
    cmd = { "Oatmeal" },
    keys = {
      { "<leader>om", mode = "n", desc = "Start Oatmeal session" },
    },
    opts = {
      backend = "openai",
      model = "gpt-4-turbo-preview",
    },
  },
  {
    "melbaldove/llm.nvim",
    dependencies = { "nvim-neotest/nvim-nio" },
    keys = {
      {
        "<leader>,",
        function()
          require("llm").prompt({ replace = false, service = "openai" })
        end,
        mode = "n",
        desc = "Prompt LLM",
      },
      {
        "<leader>,",
        function()
          require("llm").prompt({ replace = false, service = "openai" })
        end,
        mode = "v",
        desc = "Prompt LLM",
      },
      {
        "<leader>.",
        function()
          require("llm").prompt({ replace = true, service = "openai" })
        end,
        mode = "v",
        desc = "Prompt LLM and replace",
      },
    },
  },
}
