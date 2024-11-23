return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "ruff_lint", "ruff_organize_imports", "injected" },
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
