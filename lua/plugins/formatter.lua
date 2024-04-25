return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        py = { "ruff" },
      },
      formatters = {
        ruff = { prepend_args = { "format" } },
      },
    },
  },
}
