return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "injected" },
        javascript = { "biome", "injected" },
      },
      formatters = {
        injected = {
          options = {
            lang_to_formatters = {
              javascript = { "biome" },
            },
          },
        },
      },
    },
  },
}
