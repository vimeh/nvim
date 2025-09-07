return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "ruff_lint", "ruff_organize_imports", "injected" },
        javascript = { "biome", "biome-check", "biome-organize-imports" },
        typescript = { "biome", "biome-check", "biome-organize-imports" },
        -- uv tool install mdformat --with mdformat-gfm,mdformat-ruff,mdformat-frontmatter
        markdown = { "mdformat" },
        ["markdown.mdx"] = { "mdformat" },
        typst = { "typstyle" },
      },
      formatters = {
        injected = {
          options = {
            lang_to_formatters = {
              javascript = { "biome" },
              typescript = { "biome" },
            },
          },
        },
      },
    },
  },
}
