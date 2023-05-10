return {
  {
    "mhartington/formatter.nvim",
    cmd = "Format",
    config = function()
      require("formatter").setup({
        logging = true,
        log_level = vim.log.levels.WARN,
        filetype = {
          sql = {
            function()
              return {
                exe = "pg_format",
                args = {
                  "-u 2",
                  "-U 1",
                  "-s 2",
                  "-e",
                },
                stdin = true,
              }
            end,
          },
          python = {
            function()
              return {
                exe = "black",
                args = { "--quiet" },
                stdin = false,
              }
            end,
          },
        },
      })
    end,
  },
}
